//  Created by Vadim Yelagin on 07/05/15.
//  Copyright (c) 2015 Fueled. All rights reserved.

import CoreGraphics

extension CGFloat {
    var squared: CGFloat {
        return self * self
    }
}

extension CGVector {
    var squared: CGFloat {
        return self * self
    }

    var length: CGFloat {
        return sqrt(self.squared)
    }

    var normalized: CGVector {
        if self == .zero {
            return self
        } else {
            return self / self.length
        }
    }

    var orthogonal: CGVector {
        return CGVector(dx: -self.dy, dy: self.dx)
    }
}

func + (a: CGVector, b: CGVector) -> CGVector {
    return CGVector(dx: a.dx + b.dx, dy: a.dy + b.dy)
}

func + (a: CGPoint, b: CGVector) -> CGPoint {
    return CGPoint(x: a.x + b.dx, y: a.y + b.dy)
}

func + (a: CGVector, b: CGPoint) -> CGPoint {
    return CGPoint(x: a.dx + b.x, y: a.dy + b.y)
}

func - (a: CGVector, b: CGVector) -> CGVector {
    return CGVector(dx: a.dx - b.dx, dy: a.dy - b.dy)
}

func - (a: CGPoint, b: CGVector) -> CGPoint {
    return CGPoint(x: a.x - b.dx, y: a.y - b.dy)
}

func - (a: CGPoint, b: CGPoint) -> CGVector {
    return CGVector(dx: a.x - b.x, dy: a.y - b.y)
}

prefix func - (v: CGVector) -> CGVector {
    return CGVector(dx: -v.dx, dy: -v.dy)
}

func * (s: CGFloat, v: CGVector) -> CGVector {
    return CGVector(dx: s * v.dx, dy: s * v.dy)
}

func * (v: CGVector, s: CGFloat) -> CGVector {
    return CGVector(dx: v.dx * s, dy: v.dy * s)
}

func / (v: CGVector, s: CGFloat) -> CGVector {
    return CGVector(dx: v.dx / s, dy: v.dy / s)
}

func * (a: CGVector, b: CGVector) -> CGFloat {
    return a.dx * b.dx + a.dy * b.dy
}
