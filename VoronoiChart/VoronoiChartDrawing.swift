//  Created by Vadim Yelagin on 14/07/15.
//  Copyright © 2015 Fueled. All rights reserved.

import Foundation
import UIKit

extension CirclePacking {

	func drawVoronoiChart(in rect: CGRect, drawing: (CGContext, Circle) -> Void) {
		let radius = self.radius
		let size = min(rect.size.width, rect.size.height)
		let scale = size / (2 * radius)
		let ctx = UIGraphicsGetCurrentContext()!
		ctx.saveGState()
		ctx.translateBy(x: rect.origin.x, y: rect.origin.y)
		ctx.scaleBy(x: scale, y: scale)
		ctx.translateBy(x: radius, y: radius)

		func clipToCircle(_ circle: Circle) {
			let origin = CGPoint(x: circle.center.x - circle.radius, y: circle.center.y - circle.radius)
			let size = CGSize(width: 2 * circle.radius, height: 2 * circle.radius)
			UIBezierPath(ovalIn: CGRect(origin: origin, size: size)).addClip()
		}

		clipToCircle(Circle(radius: self.radius))

		for (i, circle) in self.circles.enumerated() {
			ctx.saveGState()
			// clip the drawing context to exclude areas dedicated to previously drawn larger circles
			// assume smaller circles will cover their areas when drawn later
			// (circles are pre-sorted largest to smallest)
			for largerCircle in self.circles.prefix(upTo: i) {
				let ab = circle.center - largerCircle.center
				let ratio = largerCircle.radius / circle.radius
				if ratio > 1.01 {
					// clip to the circle comprising points
					// with ratio of distances to the circles' centers
					// equal to ratio of the circles' radii
					// (in case of tangent circles, it's also tangent to both of them)
					let w = ratio / (ratio.squared - 1)
					clipToCircle(Circle(radius: w * ab.length, center: largerCircle.center + (ratio * w) * ab))
				} else {
					// circles' radii are too close
					// thus separating circle would be too large or infinite
					// approximate it with a line instead
					// (in case of tangent circles, it's also tangent to both of them)
					let portion = largerCircle.radius / (circle.radius + largerCircle.radius)
					let midPoint = largerCircle.center + portion * ab
					let norm = ab.normalized * (4 * self.radius)
					let ort = norm.orthogonal
					let bezier = UIBezierPath()
					bezier.move(to: midPoint + ort)
					bezier.addLine(to: midPoint + ort + norm)
					bezier.addLine(to: midPoint - ort + norm)
					bezier.addLine(to: midPoint - ort)
					bezier.close()
					bezier.addClip()
				}
			}
			// actually draw the circle in the clipped area
			drawing(ctx, circle)
			ctx.restoreGState()
		}

		ctx.restoreGState()
	}

}
