//  Created by Vadim Yelagin on 14/07/15.
//  Copyright (c) 2015 Fueled. All rights reserved.

import Foundation
import CoreGraphics

struct Circle {
    
    let userInfo: Any?
    let radius: CGFloat
    var center: CGPoint
    
    init(userInfo: Any? = nil, radius: CGFloat = 0, center: CGPoint = .zero) {
        self.userInfo = userInfo
        self.radius = radius
        self.center = center
    }

	static func intersectCircles(_ circle1: Circle, _ circle2: Circle) -> [CGPoint] {
		let c1c2 = circle2.center - circle1.center
		let dsq = c1c2.squared
		if dsq == 0 {
			// if circles are concentric assume no intersections
			// ignoring possibility of coincident circles
			return []
		}
		let r1sq = circle1.radius.squared
		let r2sq = circle2.radius.squared
		// solve system of equations on intersection point (x, y)
		// assuming centers are (0, 0) and (d, 0)
		// 1) x^2 + y^2 == r1^2
		// 2) (x-d)^2 + y^2 == r2^2
		// subtracting (1) from (2)
		// x == (r1^2 - r2^2 + d^2) / 2d
		// y == sqrt(r1^2 - x^2)
		let num = r1sq - r2sq + dsq
		let det = r1sq - num.squared / (4 * dsq)
		if det <= 0 {
			return []
		}
		// now translate to actual circles' centers
		// avoiding taking square root of d^2
		// center1 + x*(center2 - center1)/d +- y*(center2 - center1)_orth/d
		let projection = circle1.center + (num / (2 * dsq)) * c1c2
		let c1c2orth = CGVector(dx: c1c2.dy, dy: -c1c2.dx)
		let ort = sqrt(det / dsq) * c1c2orth
		return [projection + ort, projection - ort]
	}
    
    func centersForTangentingCircles(_ circle1: Circle, _ circle2: Circle) -> [CGPoint] {
		return Circle.intersectCircles(
			Circle(radius: circle1.radius + self.radius, center: circle1.center),
			Circle(radius: circle2.radius + self.radius, center: circle2.center)
		)
    }
    
    func intersectsCircle(_ circle: Circle) -> Bool {
        let d2 = (center - circle.center).squared
        let r2 = (radius + circle.radius).squared
        if radius < 0 || circle.radius < 0 {
            return d2 > r2
        } else {
            return d2 < r2
        }
    }
    
}

struct CirclePacking {
    
    var circles: [Circle]
    var radius: CGFloat
    
    static func linearPacking(_ circles: [Circle]) -> CirclePacking {
        let radius = circles.reduce(0) { $0 + $1.radius }
        var result = CirclePacking(circles: [], radius: radius)
        var x = -radius
        for (var circle) in circles {
            x += circle.radius
            circle.center = CGPoint(x: x, y: 0)
            result.circles.append(circle)
            x += circle.radius
        }
        return result
    }
    
    static func fixedRadiusPacking(_ circles: [Circle], radius: CGFloat) -> CirclePacking? {
		var circles = circles
		circles.insert(Circle(radius: -radius), at: 0)
        circles[1].center = CGPoint(x: circles[1].radius - radius, y: 0)
        for i0 in 2 ..< circles.count {
            var placed = false
            for i1 in 0 ..< (i0 - 1) {
                let circle1 = circles[i1]
                for i2 in (i1 + 1) ..< i0 {
                    let circle2 = circles[i2]
                    for center in circles[i0].centersForTangentingCircles(circle1, circle2) {
                        circles[i0].center = center
                        var conflict = false
                        for i3 in 0 ..< i0 {
                            if i3 != i1 && i3 != i2 && circles[i0].intersectsCircle(circles[i3]) {
                                conflict = true
                                break
                            }
                        }
                        if !conflict {
                            placed = true
                            break
                        }
                    }
                    if placed {
                        break
                    }
                }
                if placed {
                    break
                }
            }
            if !placed {
                return nil
            }
        }
		circles.removeFirst()
        return CirclePacking(circles: circles, radius: radius)
    }
    
    static func minimumPackingRadius(_ circles: [Circle]) -> CGFloat {
        let area = circles.reduce(0) { $0 + ($1.radius * $1.radius) }
        return max(sqrt(area), circles[0].radius + circles[1].radius)
    }
    
    static func dichotomyPacking(
        _ circles: [Circle],
        worstCasePacking: CirclePacking,
        bestCaseRadius: CGFloat,
        iterations: Int)
        -> CirclePacking
    {
        if iterations <= 0 {
            return worstCasePacking
        }
        let nextIterations = iterations - 1
        let midRadius = (worstCasePacking.radius + bestCaseRadius) / 2
        if let midPacking = fixedRadiusPacking(circles, radius: midRadius) {
            return dichotomyPacking(circles,
                worstCasePacking: midPacking,
                bestCaseRadius: bestCaseRadius,
                iterations: nextIterations)
        } else {
            return dichotomyPacking(circles,
                worstCasePacking: worstCasePacking,
                bestCaseRadius: midRadius,
                iterations: nextIterations)
        }
    }
    
    static func dichotomyPacking(_ circles0: [Circle], iterations: Int) -> CirclePacking {
		var circles = circles0
        circles.sort { $0.radius > $1.radius }
        let worstCasePacking = linearPacking(circles)
        if circles.count < 3 {
            return worstCasePacking
        }
        return dichotomyPacking(circles,
            worstCasePacking: worstCasePacking,
            bestCaseRadius: minimumPackingRadius(circles),
            iterations: iterations)
    }
    
}
