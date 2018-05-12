//  Created by Vadim Yelagin on 06/05/15.
//  Copyright (c) 2015 Fueled. All rights reserved.

import Foundation
import UIKit

private func byteColor(_ x: UInt32) -> CGFloat {
    return CGFloat(x & 0xFF) / 255
}

extension UIColor {
    convenience init(hex: UInt32) {
        let red = byteColor(hex >> 16)
        let green = byteColor(hex >> 8)
        let blue = byteColor(hex)
        self.init(red: red, green: green, blue: blue, alpha: 1)
    }
}

extension MoodType {
    var facePath: UIBezierPath {
        switch(self) {
        case .happy:
            return happyFacePath
        case .excited:
            return excitedFacePath
        case .romantic:
            return romanticFacePath
        case .calm:
            return calmFacePath
        case .indifferent:
            return indifferentFacePath
        case .confused:
            return confusedFacePath
        case .stressed:
            return stressedFacePath
        case .sad:
            return sadFacePath
        case .angry:
            return angryFacePath
        }
    }

    var moodColor: UIColor {
        switch(self) {
        case .happy:
            return UIColor(hex: 0xFFAC00)
        case .excited:
            return UIColor(hex: 0xF77D2C)
        case .romantic:
            return UIColor(hex: 0xEF659F)
        case .calm:
            return UIColor(hex: 0x7DCDF8)
        case .indifferent:
            return UIColor(hex: 0xC2A5EF)
        case .confused:
            return UIColor(hex: 0x6BCD83)
        case .stressed:
            return UIColor(hex: 0xDD89E0)
        case .sad:
            return UIColor(hex: 0x6599FE)
        case .angry:
            return UIColor(hex: 0xE25674)
        }
    }

    var darkMoodColor: UIColor {
        switch(self) {
        case .happy:
            return UIColor(hex: 0xA04F18)
        case .excited:
            return UIColor(hex: 0x891818)
        case .romantic:
            return UIColor(hex: 0x991C5B)
        case .calm:
            return UIColor(hex: 0x3976C0)
        case .indifferent:
            return UIColor(hex: 0x652D90)
        case .confused:
            return UIColor(hex: 0x126D2B)
        case .stressed:
            return UIColor(hex: 0x87259C)
        case .sad:
            return UIColor(hex: 0x1D499D)
        case .angry:
            return UIColor(hex: 0x841238)
        }
    }
}

private let angryFacePath: UIBezierPath = {
    var path = UIBezierPath()
    path.move(to: CGPoint(x: 0.50267, y: 0.52273))
    path.addCurve(to: CGPoint(x: 0.76000, y: 0.63541), controlPoint1: CGPoint(x: 0.60284, y: 0.52273), controlPoint2: CGPoint(x: 0.69662, y: 0.56378))
    path.addCurve(to: CGPoint(x: 0.75632, y: 0.70911), controlPoint1: CGPoint(x: 0.77892, y: 0.65681), controlPoint2: CGPoint(x: 0.77727, y: 0.68978))
    path.addCurve(to: CGPoint(x: 0.68409, y: 0.70536), controlPoint1: CGPoint(x: 0.73535, y: 0.72840), controlPoint2: CGPoint(x: 0.70302, y: 0.72674))
    path.addCurve(to: CGPoint(x: 0.50267, y: 0.62707), controlPoint1: CGPoint(x: 0.64009, y: 0.65561), controlPoint2: CGPoint(x: 0.57394, y: 0.62707))
    path.addCurve(to: CGPoint(x: 0.32126, y: 0.70536), controlPoint1: CGPoint(x: 0.43139, y: 0.62707), controlPoint2: CGPoint(x: 0.36525, y: 0.65561))
    path.addCurve(to: CGPoint(x: 0.24903, y: 0.70911), controlPoint1: CGPoint(x: 0.30234, y: 0.72676), controlPoint2: CGPoint(x: 0.27000, y: 0.72844))
    path.addCurve(to: CGPoint(x: 0.24536, y: 0.63541), controlPoint1: CGPoint(x: 0.22808, y: 0.68978), controlPoint2: CGPoint(x: 0.22643, y: 0.65681))
    path.addCurve(to: CGPoint(x: 0.50267, y: 0.52273), controlPoint1: CGPoint(x: 0.30872, y: 0.56378), controlPoint2: CGPoint(x: 0.40251, y: 0.52273))
    path.close()
    path.move(to: CGPoint(x: 0.41963, y: 0.33114))
    path.addLine(to: CGPoint(x: 0.28686, y: 0.29933))
    path.addCurve(to: CGPoint(x: 0.23933, y: 0.32643), controlPoint1: CGPoint(x: 0.26704, y: 0.29459), controlPoint2: CGPoint(x: 0.24492, y: 0.30773))
    path.addCurve(to: CGPoint(x: 0.23683, y: 0.33458), controlPoint1: CGPoint(x: 0.23832, y: 0.32909), controlPoint2: CGPoint(x: 0.23745, y: 0.33180))
    path.addCurve(to: CGPoint(x: 0.25031, y: 0.41863), controlPoint1: CGPoint(x: 0.23015, y: 0.36350), controlPoint2: CGPoint(x: 0.23492, y: 0.39332))
    path.addCurve(to: CGPoint(x: 0.31802, y: 0.46834), controlPoint1: CGPoint(x: 0.26567, y: 0.44392), controlPoint2: CGPoint(x: 0.28972, y: 0.46154))
    path.addCurve(to: CGPoint(x: 0.34295, y: 0.47130), controlPoint1: CGPoint(x: 0.32619, y: 0.47031), controlPoint2: CGPoint(x: 0.33458, y: 0.47130))
    path.addCurve(to: CGPoint(x: 0.44910, y: 0.38545), controlPoint1: CGPoint(x: 0.39381, y: 0.47130), controlPoint2: CGPoint(x: 0.43746, y: 0.43597))
    path.addCurve(to: CGPoint(x: 0.45030, y: 0.37776), controlPoint1: CGPoint(x: 0.44972, y: 0.38265), controlPoint2: CGPoint(x: 0.45014, y: 0.37991))
    path.addCurve(to: CGPoint(x: 0.41963, y: 0.33114), controlPoint1: CGPoint(x: 0.45361, y: 0.35655), controlPoint2: CGPoint(x: 0.44014, y: 0.33606))
    path.close()
    path.move(to: CGPoint(x: 0.76529, y: 0.33508))
    path.addCurve(to: CGPoint(x: 0.76320, y: 0.32823), controlPoint1: CGPoint(x: 0.76461, y: 0.33214), controlPoint2: CGPoint(x: 0.76370, y: 0.32936))
    path.addCurve(to: CGPoint(x: 0.71522, y: 0.29983), controlPoint1: CGPoint(x: 0.75714, y: 0.30831), controlPoint2: CGPoint(x: 0.73496, y: 0.29511))
    path.addLine(to: CGPoint(x: 0.58247, y: 0.33164))
    path.addCurve(to: CGPoint(x: 0.55164, y: 0.37703), controlPoint1: CGPoint(x: 0.56194, y: 0.33654), controlPoint2: CGPoint(x: 0.54844, y: 0.35676))
    path.addCurve(to: CGPoint(x: 0.55301, y: 0.38595), controlPoint1: CGPoint(x: 0.55198, y: 0.38051), controlPoint2: CGPoint(x: 0.55238, y: 0.38321))
    path.addCurve(to: CGPoint(x: 0.65917, y: 0.47178), controlPoint1: CGPoint(x: 0.56462, y: 0.43649), controlPoint2: CGPoint(x: 0.60829, y: 0.47178))
    path.addCurve(to: CGPoint(x: 0.68407, y: 0.46884), controlPoint1: CGPoint(x: 0.66752, y: 0.47178), controlPoint2: CGPoint(x: 0.67591, y: 0.47081))
    path.addCurve(to: CGPoint(x: 0.75179, y: 0.41913), controlPoint1: CGPoint(x: 0.71238, y: 0.46204), controlPoint2: CGPoint(x: 0.73643, y: 0.44440))
    path.addCurve(to: CGPoint(x: 0.76529, y: 0.33508), controlPoint1: CGPoint(x: 0.76714, y: 0.39384), controlPoint2: CGPoint(x: 0.77195, y: 0.36400))
    path.close()
    return path
}()

private let sadFacePath: UIBezierPath = {
    var path = UIBezierPath()
    path.move(to: CGPoint(x: 0.49564, y: 0.56015))
    path.addCurve(to: CGPoint(x: 0.75297, y: 0.67283), controlPoint1: CGPoint(x: 0.59581, y: 0.56015), controlPoint2: CGPoint(x: 0.68959, y: 0.60120))
    path.addCurve(to: CGPoint(x: 0.74929, y: 0.74651), controlPoint1: CGPoint(x: 0.77189, y: 0.69421), controlPoint2: CGPoint(x: 0.77024, y: 0.72720))
    path.addCurve(to: CGPoint(x: 0.67706, y: 0.74278), controlPoint1: CGPoint(x: 0.72832, y: 0.76580), controlPoint2: CGPoint(x: 0.69599, y: 0.76412))
    path.addCurve(to: CGPoint(x: 0.49564, y: 0.66447), controlPoint1: CGPoint(x: 0.63306, y: 0.69303), controlPoint2: CGPoint(x: 0.56691, y: 0.66447))
    path.addCurve(to: CGPoint(x: 0.31423, y: 0.74278), controlPoint1: CGPoint(x: 0.42436, y: 0.66447), controlPoint2: CGPoint(x: 0.35824, y: 0.69303))
    path.addCurve(to: CGPoint(x: 0.24200, y: 0.74651), controlPoint1: CGPoint(x: 0.29531, y: 0.76414), controlPoint2: CGPoint(x: 0.26297, y: 0.76584))
    path.addCurve(to: CGPoint(x: 0.23835, y: 0.67283), controlPoint1: CGPoint(x: 0.22105, y: 0.72720), controlPoint2: CGPoint(x: 0.21942, y: 0.69421))
    path.addCurve(to: CGPoint(x: 0.49564, y: 0.56015), controlPoint1: CGPoint(x: 0.30169, y: 0.60120), controlPoint2: CGPoint(x: 0.39548, y: 0.56015))
    path.close()
    path.move(to: CGPoint(x: 0.41667, y: 0.35001))
    path.addCurve(to: CGPoint(x: 0.36432, y: 0.33271), controlPoint1: CGPoint(x: 0.40669, y: 0.33172), controlPoint2: CGPoint(x: 0.38296, y: 0.32381))
    path.addLine(to: CGPoint(x: 0.24073, y: 0.39151))
    path.addCurve(to: CGPoint(x: 0.21978, y: 0.44280), controlPoint1: CGPoint(x: 0.22219, y: 0.40033), controlPoint2: CGPoint(x: 0.21271, y: 0.42412))
    path.addCurve(to: CGPoint(x: 0.22276, y: 0.45079), controlPoint1: CGPoint(x: 0.22060, y: 0.44552), controlPoint2: CGPoint(x: 0.22155, y: 0.44819))
    path.addCurve(to: CGPoint(x: 0.28430, y: 0.50829), controlPoint1: CGPoint(x: 0.23503, y: 0.47768), controlPoint2: CGPoint(x: 0.25687, y: 0.49813))
    path.addCurve(to: CGPoint(x: 0.32171, y: 0.51508), controlPoint1: CGPoint(x: 0.29638, y: 0.51281), controlPoint2: CGPoint(x: 0.30897, y: 0.51508))
    path.addCurve(to: CGPoint(x: 0.36762, y: 0.50464), controlPoint1: CGPoint(x: 0.33761, y: 0.51508), controlPoint2: CGPoint(x: 0.35305, y: 0.51157))
    path.addCurve(to: CGPoint(x: 0.38900, y: 0.49123), controlPoint1: CGPoint(x: 0.37525, y: 0.50101), controlPoint2: CGPoint(x: 0.38245, y: 0.49648))
    path.addCurve(to: CGPoint(x: 0.42035, y: 0.35670), controlPoint1: CGPoint(x: 0.42898, y: 0.45915), controlPoint2: CGPoint(x: 0.44185, y: 0.40388))
    path.addCurve(to: CGPoint(x: 0.41667, y: 0.35001), controlPoint1: CGPoint(x: 0.41916, y: 0.35413), controlPoint2: CGPoint(x: 0.41782, y: 0.35172))
    path.close()
    path.move(to: CGPoint(x: 0.74997, y: 0.39151))
    path.addLine(to: CGPoint(x: 0.62638, y: 0.33271))
    path.addCurve(to: CGPoint(x: 0.57439, y: 0.34936), controlPoint1: CGPoint(x: 0.60778, y: 0.32383), controlPoint2: CGPoint(x: 0.58385, y: 0.33198))
    path.addCurve(to: CGPoint(x: 0.57031, y: 0.35679), controlPoint1: CGPoint(x: 0.57288, y: 0.35171), controlPoint2: CGPoint(x: 0.57154, y: 0.35413))
    path.addCurve(to: CGPoint(x: 0.60172, y: 0.49123), controlPoint1: CGPoint(x: 0.54883, y: 0.40388), controlPoint2: CGPoint(x: 0.56175, y: 0.45915))
    path.addCurve(to: CGPoint(x: 0.62308, y: 0.50464), controlPoint1: CGPoint(x: 0.60825, y: 0.49650), controlPoint2: CGPoint(x: 0.61545, y: 0.50101))
    path.addCurve(to: CGPoint(x: 0.66900, y: 0.51508), controlPoint1: CGPoint(x: 0.63765, y: 0.51157), controlPoint2: CGPoint(x: 0.65309, y: 0.51508))
    path.addCurve(to: CGPoint(x: 0.70640, y: 0.50829), controlPoint1: CGPoint(x: 0.68174, y: 0.51508), controlPoint2: CGPoint(x: 0.69432, y: 0.51281))
    path.addCurve(to: CGPoint(x: 0.76792, y: 0.45083), controlPoint1: CGPoint(x: 0.73383, y: 0.49813), controlPoint2: CGPoint(x: 0.75567, y: 0.47768))
    path.addCurve(to: CGPoint(x: 0.77068, y: 0.44347), controlPoint1: CGPoint(x: 0.76913, y: 0.44819), controlPoint2: CGPoint(x: 0.77010, y: 0.44552))
    path.addCurve(to: CGPoint(x: 0.74997, y: 0.39151), controlPoint1: CGPoint(x: 0.77799, y: 0.42412), controlPoint2: CGPoint(x: 0.76851, y: 0.40033))
    path.close()
    return path
}()

private let stressedFacePath: UIBezierPath = {
    var path = UIBezierPath()
    path.move(to: CGPoint(x: 0.43299, y: 0.63510))
    path.addLine(to: CGPoint(x: 0.55535, y: 0.63510))
    path.addCurve(to: CGPoint(x: 0.60228, y: 0.63865), controlPoint1: CGPoint(x: 0.57954, y: 0.63510), controlPoint2: CGPoint(x: 0.59150, y: 0.63510))
    path.addLine(to: CGPoint(x: 0.60437, y: 0.63917))
    path.addCurve(to: CGPoint(x: 0.63766, y: 0.68671), controlPoint1: CGPoint(x: 0.62436, y: 0.64644), controlPoint2: CGPoint(x: 0.63766, y: 0.66544))
    path.addCurve(to: CGPoint(x: 0.63766, y: 0.68942), controlPoint1: CGPoint(x: 0.63766, y: 0.68942), controlPoint2: CGPoint(x: 0.63766, y: 0.68942))
    path.addLine(to: CGPoint(x: 0.63766, y: 0.68942))
    path.addLine(to: CGPoint(x: 0.63766, y: 0.68942))
    path.addLine(to: CGPoint(x: 0.63766, y: 0.69214))
    path.addCurve(to: CGPoint(x: 0.60437, y: 0.73968), controlPoint1: CGPoint(x: 0.63766, y: 0.71341), controlPoint2: CGPoint(x: 0.62436, y: 0.73241))
    path.addCurve(to: CGPoint(x: 0.55563, y: 0.74375), controlPoint1: CGPoint(x: 0.59150, y: 0.74375), controlPoint2: CGPoint(x: 0.57954, y: 0.74375))
    path.addLine(to: CGPoint(x: 0.44401, y: 0.74375))
    path.addCurve(to: CGPoint(x: 0.39708, y: 0.74019), controlPoint1: CGPoint(x: 0.41981, y: 0.74375), controlPoint2: CGPoint(x: 0.40786, y: 0.74375))
    path.addLine(to: CGPoint(x: 0.39499, y: 0.73968))
    path.addCurve(to: CGPoint(x: 0.36170, y: 0.69214), controlPoint1: CGPoint(x: 0.37500, y: 0.73241), controlPoint2: CGPoint(x: 0.36170, y: 0.71341))
    path.addCurve(to: CGPoint(x: 0.36170, y: 0.68942), controlPoint1: CGPoint(x: 0.36170, y: 0.68942), controlPoint2: CGPoint(x: 0.36170, y: 0.68942))
    path.addLine(to: CGPoint(x: 0.36170, y: 0.68942))
    path.addLine(to: CGPoint(x: 0.36170, y: 0.68942))
    path.addLine(to: CGPoint(x: 0.36170, y: 0.68671))
    path.addCurve(to: CGPoint(x: 0.39499, y: 0.63917), controlPoint1: CGPoint(x: 0.36170, y: 0.66544), controlPoint2: CGPoint(x: 0.37500, y: 0.64644))
    path.addCurve(to: CGPoint(x: 0.44373, y: 0.63510), controlPoint1: CGPoint(x: 0.40786, y: 0.63510), controlPoint2: CGPoint(x: 0.41981, y: 0.63510))
    path.addLine(to: CGPoint(x: 0.44401, y: 0.63510))
    path.addLine(to: CGPoint(x: 0.43299, y: 0.63510))
    path.close()
    path.move(to: CGPoint(x: 0.41464, y: 0.35577))
    path.addCurve(to: CGPoint(x: 0.36012, y: 0.33811), controlPoint1: CGPoint(x: 0.40425, y: 0.33713), controlPoint2: CGPoint(x: 0.37953, y: 0.32904))
    path.addLine(to: CGPoint(x: 0.23143, y: 0.39813))
    path.addCurve(to: CGPoint(x: 0.20963, y: 0.45046), controlPoint1: CGPoint(x: 0.21214, y: 0.40711), controlPoint2: CGPoint(x: 0.20225, y: 0.43139))
    path.addCurve(to: CGPoint(x: 0.21273, y: 0.45863), controlPoint1: CGPoint(x: 0.21048, y: 0.45324), controlPoint2: CGPoint(x: 0.21148, y: 0.45596))
    path.addCurve(to: CGPoint(x: 0.27679, y: 0.51729), controlPoint1: CGPoint(x: 0.22551, y: 0.48606), controlPoint2: CGPoint(x: 0.24825, y: 0.50691))
    path.addCurve(to: CGPoint(x: 0.31574, y: 0.52423), controlPoint1: CGPoint(x: 0.28939, y: 0.52190), controlPoint2: CGPoint(x: 0.30249, y: 0.52423))
    path.addCurve(to: CGPoint(x: 0.36356, y: 0.51356), controlPoint1: CGPoint(x: 0.33231, y: 0.52423), controlPoint2: CGPoint(x: 0.34839, y: 0.52064))
    path.addCurve(to: CGPoint(x: 0.38584, y: 0.49989), controlPoint1: CGPoint(x: 0.37150, y: 0.50985), controlPoint2: CGPoint(x: 0.37900, y: 0.50523))
    path.addCurve(to: CGPoint(x: 0.41847, y: 0.36261), controlPoint1: CGPoint(x: 0.42744, y: 0.46713), controlPoint2: CGPoint(x: 0.44087, y: 0.41074))
    path.addCurve(to: CGPoint(x: 0.41464, y: 0.35577), controlPoint1: CGPoint(x: 0.41720, y: 0.35997), controlPoint2: CGPoint(x: 0.41582, y: 0.35752))
    path.close()
    path.move(to: CGPoint(x: 0.76166, y: 0.39813))
    path.addLine(to: CGPoint(x: 0.63298, y: 0.33811))
    path.addCurve(to: CGPoint(x: 0.57886, y: 0.35514), controlPoint1: CGPoint(x: 0.61359, y: 0.32908), controlPoint2: CGPoint(x: 0.58870, y: 0.33736))
    path.addCurve(to: CGPoint(x: 0.57460, y: 0.36271), controlPoint1: CGPoint(x: 0.57728, y: 0.35752), controlPoint2: CGPoint(x: 0.57588, y: 0.35997))
    path.addCurve(to: CGPoint(x: 0.60728, y: 0.49989), controlPoint1: CGPoint(x: 0.55223, y: 0.41074), controlPoint2: CGPoint(x: 0.56569, y: 0.46713))
    path.addCurve(to: CGPoint(x: 0.62955, y: 0.51356), controlPoint1: CGPoint(x: 0.61411, y: 0.50525), controlPoint2: CGPoint(x: 0.62160, y: 0.50985))
    path.addCurve(to: CGPoint(x: 0.67736, y: 0.52423), controlPoint1: CGPoint(x: 0.64472, y: 0.52064), controlPoint2: CGPoint(x: 0.66079, y: 0.52423))
    path.addCurve(to: CGPoint(x: 0.71632, y: 0.51729), controlPoint1: CGPoint(x: 0.69062, y: 0.52423), controlPoint2: CGPoint(x: 0.70371, y: 0.52190))
    path.addCurve(to: CGPoint(x: 0.78036, y: 0.45867), controlPoint1: CGPoint(x: 0.74486, y: 0.50691), controlPoint2: CGPoint(x: 0.76760, y: 0.48606))
    path.addCurve(to: CGPoint(x: 0.78324, y: 0.45113), controlPoint1: CGPoint(x: 0.78162, y: 0.45596), controlPoint2: CGPoint(x: 0.78263, y: 0.45324))
    path.addCurve(to: CGPoint(x: 0.76166, y: 0.39813), controlPoint1: CGPoint(x: 0.79085, y: 0.43139), controlPoint2: CGPoint(x: 0.78097, y: 0.40711))
    path.close()
    return path
}()

private let confusedFacePath: UIBezierPath = {
    var path = UIBezierPath()
    path.move(to: CGPoint(x: 0.40822, y: 0.32847))
    path.addLine(to: CGPoint(x: 0.27799, y: 0.32705))
    path.addCurve(to: CGPoint(x: 0.23922, y: 0.36244), controlPoint1: CGPoint(x: 0.25853, y: 0.32684), controlPoint2: CGPoint(x: 0.24059, y: 0.34382))
    path.addCurve(to: CGPoint(x: 0.23854, y: 0.37057), controlPoint1: CGPoint(x: 0.23882, y: 0.36512), controlPoint2: CGPoint(x: 0.23856, y: 0.36785))
    path.addCurve(to: CGPoint(x: 0.26829, y: 0.44602), controlPoint1: CGPoint(x: 0.23824, y: 0.39892), controlPoint2: CGPoint(x: 0.24878, y: 0.42572))
    path.addCurve(to: CGPoint(x: 0.34158, y: 0.47796), controlPoint1: CGPoint(x: 0.28777, y: 0.46632), controlPoint2: CGPoint(x: 0.31379, y: 0.47764))
    path.addCurve(to: CGPoint(x: 0.36541, y: 0.47538), controlPoint1: CGPoint(x: 0.34961, y: 0.47802), controlPoint2: CGPoint(x: 0.35760, y: 0.47717))
    path.addCurve(to: CGPoint(x: 0.44682, y: 0.37280), controlPoint1: CGPoint(x: 0.41279, y: 0.46455), controlPoint2: CGPoint(x: 0.44628, y: 0.42237))
    path.addCurve(to: CGPoint(x: 0.44634, y: 0.36540), controlPoint1: CGPoint(x: 0.44682, y: 0.37006), controlPoint2: CGPoint(x: 0.44666, y: 0.36741))
    path.addCurve(to: CGPoint(x: 0.40822, y: 0.32847), controlPoint1: CGPoint(x: 0.44511, y: 0.34491), controlPoint2: CGPoint(x: 0.42837, y: 0.32867))
    path.close()
    path.move(to: CGPoint(x: 0.58464, y: 0.44450))
    path.addLine(to: CGPoint(x: 0.71486, y: 0.44588))
    path.addCurve(to: CGPoint(x: 0.75366, y: 0.41052), controlPoint1: CGPoint(x: 0.73434, y: 0.44610), controlPoint2: CGPoint(x: 0.75227, y: 0.42914))
    path.addCurve(to: CGPoint(x: 0.75432, y: 0.40237), controlPoint1: CGPoint(x: 0.75404, y: 0.40783), controlPoint2: CGPoint(x: 0.75432, y: 0.40511))
    path.addCurve(to: CGPoint(x: 0.72456, y: 0.32692), controlPoint1: CGPoint(x: 0.75463, y: 0.37400), controlPoint2: CGPoint(x: 0.74410, y: 0.34723))
    path.addCurve(to: CGPoint(x: 0.65130, y: 0.29500), controlPoint1: CGPoint(x: 0.70510, y: 0.30660), controlPoint2: CGPoint(x: 0.67907, y: 0.29529))
    path.addCurve(to: CGPoint(x: 0.62747, y: 0.29756), controlPoint1: CGPoint(x: 0.64327, y: 0.29490), controlPoint2: CGPoint(x: 0.63528, y: 0.29575))
    path.addCurve(to: CGPoint(x: 0.54606, y: 0.40014), controlPoint1: CGPoint(x: 0.58007, y: 0.30837), controlPoint2: CGPoint(x: 0.54659, y: 0.35057))
    path.addCurve(to: CGPoint(x: 0.54651, y: 0.40756), controlPoint1: CGPoint(x: 0.54604, y: 0.40288), controlPoint2: CGPoint(x: 0.54622, y: 0.40554))
    path.addCurve(to: CGPoint(x: 0.58464, y: 0.44450), controlPoint1: CGPoint(x: 0.54775, y: 0.42805), controlPoint2: CGPoint(x: 0.56450, y: 0.44427))
    path.close()
    path.move(to: CGPoint(x: 0.68272, y: 0.74107))
    path.addCurve(to: CGPoint(x: 0.65402, y: 0.73055), controlPoint1: CGPoint(x: 0.67261, y: 0.74107), controlPoint2: CGPoint(x: 0.66245, y: 0.73762))
    path.addCurve(to: CGPoint(x: 0.36074, y: 0.68000), controlPoint1: CGPoint(x: 0.64915, y: 0.72655), controlPoint2: CGPoint(x: 0.54105, y: 0.63966))
    path.addCurve(to: CGPoint(x: 0.30685, y: 0.64478), controlPoint1: CGPoint(x: 0.33621, y: 0.68546), controlPoint2: CGPoint(x: 0.31220, y: 0.66968))
    path.addCurve(to: CGPoint(x: 0.34136, y: 0.58981), controlPoint1: CGPoint(x: 0.30153, y: 0.61989), controlPoint2: CGPoint(x: 0.31697, y: 0.59527))
    path.addCurve(to: CGPoint(x: 0.71166, y: 0.65942), controlPoint1: CGPoint(x: 0.56701, y: 0.53941), controlPoint2: CGPoint(x: 0.70586, y: 0.65451))
    path.addCurve(to: CGPoint(x: 0.71753, y: 0.72444), controlPoint1: CGPoint(x: 0.73088, y: 0.67570), controlPoint2: CGPoint(x: 0.73349, y: 0.70481))
    path.addCurve(to: CGPoint(x: 0.68272, y: 0.74107), controlPoint1: CGPoint(x: 0.70858, y: 0.73539), controlPoint2: CGPoint(x: 0.69570, y: 0.74107))
    path.close()
    return path
}()

private let indifferentFacePath: UIBezierPath = {
    var path = UIBezierPath()
    path.move(to: CGPoint(x: 0.40672, y: 0.61281))
    path.addLine(to: CGPoint(x: 0.58459, y: 0.61281))
    path.addCurve(to: CGPoint(x: 0.62964, y: 0.61635), controlPoint1: CGPoint(x: 0.60701, y: 0.61281), controlPoint2: CGPoint(x: 0.61891, y: 0.61281))
    path.addLine(to: CGPoint(x: 0.63172, y: 0.61686))
    path.addCurve(to: CGPoint(x: 0.66484, y: 0.66417), controlPoint1: CGPoint(x: 0.65161, y: 0.62410), controlPoint2: CGPoint(x: 0.66484, y: 0.64301))
    path.addCurve(to: CGPoint(x: 0.66484, y: 0.66687), controlPoint1: CGPoint(x: 0.66484, y: 0.66688), controlPoint2: CGPoint(x: 0.66484, y: 0.66687))
    path.addLine(to: CGPoint(x: 0.66484, y: 0.66687))
    path.addLine(to: CGPoint(x: 0.66484, y: 0.66687))
    path.addLine(to: CGPoint(x: 0.66484, y: 0.66958))
    path.addCurve(to: CGPoint(x: 0.63172, y: 0.71689), controlPoint1: CGPoint(x: 0.66484, y: 0.69074), controlPoint2: CGPoint(x: 0.65161, y: 0.70965))
    path.addCurve(to: CGPoint(x: 0.58321, y: 0.72094), controlPoint1: CGPoint(x: 0.61891, y: 0.72094), controlPoint2: CGPoint(x: 0.60701, y: 0.72094))
    path.addLine(to: CGPoint(x: 0.41604, y: 0.72094))
    path.addCurve(to: CGPoint(x: 0.37099, y: 0.71740), controlPoint1: CGPoint(x: 0.39361, y: 0.72094), controlPoint2: CGPoint(x: 0.38172, y: 0.72094))
    path.addLine(to: CGPoint(x: 0.36891, y: 0.71689))
    path.addCurve(to: CGPoint(x: 0.33578, y: 0.66958), controlPoint1: CGPoint(x: 0.34902, y: 0.70965), controlPoint2: CGPoint(x: 0.33578, y: 0.69074))
    path.addCurve(to: CGPoint(x: 0.33578, y: 0.66687), controlPoint1: CGPoint(x: 0.33578, y: 0.66688), controlPoint2: CGPoint(x: 0.33578, y: 0.66687))
    path.addLine(to: CGPoint(x: 0.33578, y: 0.66687))
    path.addLine(to: CGPoint(x: 0.33578, y: 0.66687))
    path.addLine(to: CGPoint(x: 0.33578, y: 0.66417))
    path.addCurve(to: CGPoint(x: 0.36891, y: 0.61686), controlPoint1: CGPoint(x: 0.33578, y: 0.64301), controlPoint2: CGPoint(x: 0.34902, y: 0.62410))
    path.addCurve(to: CGPoint(x: 0.41741, y: 0.61281), controlPoint1: CGPoint(x: 0.38172, y: 0.61281), controlPoint2: CGPoint(x: 0.39361, y: 0.61281))
    path.addLine(to: CGPoint(x: 0.41604, y: 0.61281))
    path.addLine(to: CGPoint(x: 0.40672, y: 0.61281))
    path.close()
    path.move(to: CGPoint(x: 0.40668, y: 0.47244))
    path.addCurve(to: CGPoint(x: 0.40737, y: 0.34074), controlPoint1: CGPoint(x: 0.44250, y: 0.43626), controlPoint2: CGPoint(x: 0.44281, y: 0.37729))
    path.addCurve(to: CGPoint(x: 0.27832, y: 0.34006), controlPoint1: CGPoint(x: 0.37192, y: 0.30419), controlPoint2: CGPoint(x: 0.31415, y: 0.30388))
    path.addCurve(to: CGPoint(x: 0.27763, y: 0.47176), controlPoint1: CGPoint(x: 0.24250, y: 0.37624), controlPoint2: CGPoint(x: 0.24219, y: 0.43521))
    path.addCurve(to: CGPoint(x: 0.40668, y: 0.47244), controlPoint1: CGPoint(x: 0.31308, y: 0.50831), controlPoint2: CGPoint(x: 0.37085, y: 0.50862))
    path.close()
    path.move(to: CGPoint(x: 0.72211, y: 0.47232))
    path.addCurve(to: CGPoint(x: 0.72257, y: 0.34063), controlPoint1: CGPoint(x: 0.75787, y: 0.43608), controlPoint2: CGPoint(x: 0.75807, y: 0.37712))
    path.addCurve(to: CGPoint(x: 0.59352, y: 0.34018), controlPoint1: CGPoint(x: 0.68706, y: 0.30413), controlPoint2: CGPoint(x: 0.62928, y: 0.30393))
    path.addCurve(to: CGPoint(x: 0.59306, y: 0.47187), controlPoint1: CGPoint(x: 0.55776, y: 0.37642), controlPoint2: CGPoint(x: 0.55755, y: 0.43538))
    path.addCurve(to: CGPoint(x: 0.72211, y: 0.47232), controlPoint1: CGPoint(x: 0.62857, y: 0.50837), controlPoint2: CGPoint(x: 0.68634, y: 0.50857))
    path.close()
    return path
}()

private let calmFacePath: UIBezierPath = {
    var path = UIBezierPath()
    path.move(to: CGPoint(x: 0.24842, y: 0.66786))
    path.addCurve(to: CGPoint(x: 0.25210, y: 0.59418), controlPoint1: CGPoint(x: 0.22948, y: 0.64651), controlPoint2: CGPoint(x: 0.23113, y: 0.61351))
    path.addCurve(to: CGPoint(x: 0.32431, y: 0.59793), controlPoint1: CGPoint(x: 0.27305, y: 0.57487), controlPoint2: CGPoint(x: 0.30539, y: 0.57655))
    path.addCurve(to: CGPoint(x: 0.50574, y: 0.67622), controlPoint1: CGPoint(x: 0.36833, y: 0.64770), controlPoint2: CGPoint(x: 0.43446, y: 0.67622))
    path.addCurve(to: CGPoint(x: 0.68716, y: 0.59793), controlPoint1: CGPoint(x: 0.57701, y: 0.67622), controlPoint2: CGPoint(x: 0.64316, y: 0.64770))
    path.addCurve(to: CGPoint(x: 0.75937, y: 0.59418), controlPoint1: CGPoint(x: 0.70606, y: 0.57653), controlPoint2: CGPoint(x: 0.73840, y: 0.57487))
    path.addCurve(to: CGPoint(x: 0.76305, y: 0.66786), controlPoint1: CGPoint(x: 0.78032, y: 0.61351), controlPoint2: CGPoint(x: 0.78197, y: 0.64651))
    path.addCurve(to: CGPoint(x: 0.50574, y: 0.78055), controlPoint1: CGPoint(x: 0.69968, y: 0.73950), controlPoint2: CGPoint(x: 0.60589, y: 0.78055))
    path.addCurve(to: CGPoint(x: 0.24842, y: 0.66786), controlPoint1: CGPoint(x: 0.40556, y: 0.78055), controlPoint2: CGPoint(x: 0.31179, y: 0.73950))
    path.close()
    path.move(to: CGPoint(x: 0.29216, y: 0.36250))
    path.addLine(to: CGPoint(x: 0.37488, y: 0.36250))
    path.addCurve(to: CGPoint(x: 0.41156, y: 0.36534), controlPoint1: CGPoint(x: 0.39338, y: 0.36250), controlPoint2: CGPoint(x: 0.40294, y: 0.36250))
    path.addLine(to: CGPoint(x: 0.41323, y: 0.36575))
    path.addCurve(to: CGPoint(x: 0.43984, y: 0.40377), controlPoint1: CGPoint(x: 0.42921, y: 0.37157), controlPoint2: CGPoint(x: 0.43984, y: 0.38676))
    path.addCurve(to: CGPoint(x: 0.43984, y: 0.40594), controlPoint1: CGPoint(x: 0.43984, y: 0.40594), controlPoint2: CGPoint(x: 0.43984, y: 0.40594))
    path.addLine(to: CGPoint(x: 0.43984, y: 0.40594))
    path.addLine(to: CGPoint(x: 0.43984, y: 0.40594))
    path.addLine(to: CGPoint(x: 0.43984, y: 0.40811))
    path.addCurve(to: CGPoint(x: 0.41323, y: 0.44612), controlPoint1: CGPoint(x: 0.43984, y: 0.42511), controlPoint2: CGPoint(x: 0.42921, y: 0.44030))
    path.addCurve(to: CGPoint(x: 0.37426, y: 0.44938), controlPoint1: CGPoint(x: 0.40294, y: 0.44938), controlPoint2: CGPoint(x: 0.39338, y: 0.44938))
    path.addLine(to: CGPoint(x: 0.30012, y: 0.44938))
    path.addCurve(to: CGPoint(x: 0.26344, y: 0.44653), controlPoint1: CGPoint(x: 0.28162, y: 0.44938), controlPoint2: CGPoint(x: 0.27206, y: 0.44938))
    path.addLine(to: CGPoint(x: 0.26177, y: 0.44612))
    path.addCurve(to: CGPoint(x: 0.23516, y: 0.40811), controlPoint1: CGPoint(x: 0.24579, y: 0.44030), controlPoint2: CGPoint(x: 0.23516, y: 0.42511))
    path.addCurve(to: CGPoint(x: 0.23516, y: 0.40594), controlPoint1: CGPoint(x: 0.23516, y: 0.40594), controlPoint2: CGPoint(x: 0.23516, y: 0.40594))
    path.addLine(to: CGPoint(x: 0.23516, y: 0.40594))
    path.addLine(to: CGPoint(x: 0.23516, y: 0.40594))
    path.addLine(to: CGPoint(x: 0.23516, y: 0.40377))
    path.addCurve(to: CGPoint(x: 0.26177, y: 0.36575), controlPoint1: CGPoint(x: 0.23516, y: 0.38676), controlPoint2: CGPoint(x: 0.24579, y: 0.37157))
    path.addCurve(to: CGPoint(x: 0.30074, y: 0.36250), controlPoint1: CGPoint(x: 0.27206, y: 0.36250), controlPoint2: CGPoint(x: 0.28162, y: 0.36250))
    path.addLine(to: CGPoint(x: 0.30012, y: 0.36250))
    path.addLine(to: CGPoint(x: 0.29216, y: 0.36250))
    path.close()
    path.move(to: CGPoint(x: 0.61778, y: 0.36250))
    path.addLine(to: CGPoint(x: 0.70050, y: 0.36250))
    path.addCurve(to: CGPoint(x: 0.73718, y: 0.36534), controlPoint1: CGPoint(x: 0.71900, y: 0.36250), controlPoint2: CGPoint(x: 0.72856, y: 0.36250))
    path.addLine(to: CGPoint(x: 0.73885, y: 0.36575))
    path.addCurve(to: CGPoint(x: 0.76547, y: 0.40377), controlPoint1: CGPoint(x: 0.75483, y: 0.37157), controlPoint2: CGPoint(x: 0.76547, y: 0.38676))
    path.addCurve(to: CGPoint(x: 0.76547, y: 0.40594), controlPoint1: CGPoint(x: 0.76547, y: 0.40594), controlPoint2: CGPoint(x: 0.76547, y: 0.40594))
    path.addLine(to: CGPoint(x: 0.76547, y: 0.40594))
    path.addLine(to: CGPoint(x: 0.76547, y: 0.40594))
    path.addLine(to: CGPoint(x: 0.76547, y: 0.40811))
    path.addCurve(to: CGPoint(x: 0.73885, y: 0.44612), controlPoint1: CGPoint(x: 0.76547, y: 0.42511), controlPoint2: CGPoint(x: 0.75483, y: 0.44030))
    path.addCurve(to: CGPoint(x: 0.69988, y: 0.44938), controlPoint1: CGPoint(x: 0.72856, y: 0.44938), controlPoint2: CGPoint(x: 0.71900, y: 0.44938))
    path.addLine(to: CGPoint(x: 0.62575, y: 0.44938))
    path.addCurve(to: CGPoint(x: 0.58907, y: 0.44653), controlPoint1: CGPoint(x: 0.60725, y: 0.44938), controlPoint2: CGPoint(x: 0.59769, y: 0.44938))
    path.addLine(to: CGPoint(x: 0.58740, y: 0.44612))
    path.addCurve(to: CGPoint(x: 0.56078, y: 0.40811), controlPoint1: CGPoint(x: 0.57142, y: 0.44030), controlPoint2: CGPoint(x: 0.56078, y: 0.42511))
    path.addCurve(to: CGPoint(x: 0.56078, y: 0.40594), controlPoint1: CGPoint(x: 0.56078, y: 0.40594), controlPoint2: CGPoint(x: 0.56078, y: 0.40594))
    path.addLine(to: CGPoint(x: 0.56078, y: 0.40594))
    path.addLine(to: CGPoint(x: 0.56078, y: 0.40594))
    path.addLine(to: CGPoint(x: 0.56078, y: 0.40377))
    path.addCurve(to: CGPoint(x: 0.58740, y: 0.36575), controlPoint1: CGPoint(x: 0.56078, y: 0.38676), controlPoint2: CGPoint(x: 0.57142, y: 0.37157))
    path.addCurve(to: CGPoint(x: 0.62637, y: 0.36250), controlPoint1: CGPoint(x: 0.59769, y: 0.36250), controlPoint2: CGPoint(x: 0.60725, y: 0.36250))
    path.addLine(to: CGPoint(x: 0.62575, y: 0.36250))
    path.addLine(to: CGPoint(x: 0.61778, y: 0.36250))
    path.close()
    return path
}()

private let romanticFacePath: UIBezierPath = {
    var path = UIBezierPath()
    path.move(to: CGPoint(x: 0.49925, y: 0.79442))
    path.addCurve(to: CGPoint(x: 0.23667, y: 0.68029), controlPoint1: CGPoint(x: 0.39703, y: 0.79442), controlPoint2: CGPoint(x: 0.30135, y: 0.75281))
    path.addCurve(to: CGPoint(x: 0.24044, y: 0.60569), controlPoint1: CGPoint(x: 0.21736, y: 0.65865), controlPoint2: CGPoint(x: 0.21904, y: 0.62524))
    path.addCurve(to: CGPoint(x: 0.31412, y: 0.60948), controlPoint1: CGPoint(x: 0.26182, y: 0.58613), controlPoint2: CGPoint(x: 0.29481, y: 0.58784))
    path.addCurve(to: CGPoint(x: 0.49925, y: 0.68876), controlPoint1: CGPoint(x: 0.35903, y: 0.65986), controlPoint2: CGPoint(x: 0.42652, y: 0.68876))
    path.addCurve(to: CGPoint(x: 0.68438, y: 0.60948), controlPoint1: CGPoint(x: 0.57198, y: 0.68876), controlPoint2: CGPoint(x: 0.63948, y: 0.65986))
    path.addCurve(to: CGPoint(x: 0.75808, y: 0.60569), controlPoint1: CGPoint(x: 0.70367, y: 0.58784), controlPoint2: CGPoint(x: 0.73667, y: 0.58611))
    path.addCurve(to: CGPoint(x: 0.76181, y: 0.68029), controlPoint1: CGPoint(x: 0.77944, y: 0.62524), controlPoint2: CGPoint(x: 0.78112, y: 0.65865))
    path.addCurve(to: CGPoint(x: 0.49925, y: 0.79442), controlPoint1: CGPoint(x: 0.69716, y: 0.75281), controlPoint2: CGPoint(x: 0.60145, y: 0.79442))
    path.close()
    path.move(to: CGPoint(x: 0.37568, y: 0.30554))
    path.addCurve(to: CGPoint(x: 0.33047, y: 0.32378), controlPoint1: CGPoint(x: 0.35852, y: 0.30554), controlPoint2: CGPoint(x: 0.34256, y: 0.31213))
    path.addCurve(to: CGPoint(x: 0.28527, y: 0.30554), controlPoint1: CGPoint(x: 0.31841, y: 0.31213), controlPoint2: CGPoint(x: 0.30242, y: 0.30554))
    path.addCurve(to: CGPoint(x: 0.21913, y: 0.37251), controlPoint1: CGPoint(x: 0.24880, y: 0.30554), controlPoint2: CGPoint(x: 0.21913, y: 0.33558))
    path.addCurve(to: CGPoint(x: 0.23929, y: 0.42052), controlPoint1: CGPoint(x: 0.21913, y: 0.39081), controlPoint2: CGPoint(x: 0.22635, y: 0.40791))
    path.addLine(to: CGPoint(x: 0.31163, y: 0.49380))
    path.addCurve(to: CGPoint(x: 0.33027, y: 0.50337), controlPoint1: CGPoint(x: 0.31413, y: 0.49632), controlPoint2: CGPoint(x: 0.32123, y: 0.50337))
    path.addLine(to: CGPoint(x: 0.33062, y: 0.50337))
    path.addCurve(to: CGPoint(x: 0.34879, y: 0.49460), controlPoint1: CGPoint(x: 0.33873, y: 0.50337), controlPoint2: CGPoint(x: 0.34631, y: 0.49713))
    path.addLine(to: CGPoint(x: 0.42332, y: 0.41882))
    path.addCurve(to: CGPoint(x: 0.44182, y: 0.37251), controlPoint1: CGPoint(x: 0.43525, y: 0.40625), controlPoint2: CGPoint(x: 0.44182, y: 0.38980))
    path.addCurve(to: CGPoint(x: 0.37568, y: 0.30554), controlPoint1: CGPoint(x: 0.44182, y: 0.33558), controlPoint2: CGPoint(x: 0.41215, y: 0.30554))
    path.close()
    path.move(to: CGPoint(x: 0.70911, y: 0.30554))
    path.addCurve(to: CGPoint(x: 0.66392, y: 0.32378), controlPoint1: CGPoint(x: 0.69197, y: 0.30554), controlPoint2: CGPoint(x: 0.67599, y: 0.31213))
    path.addCurve(to: CGPoint(x: 0.61871, y: 0.30554), controlPoint1: CGPoint(x: 0.65183, y: 0.31213), controlPoint2: CGPoint(x: 0.63587, y: 0.30554))
    path.addCurve(to: CGPoint(x: 0.55258, y: 0.37251), controlPoint1: CGPoint(x: 0.58225, y: 0.30554), controlPoint2: CGPoint(x: 0.55258, y: 0.33558))
    path.addCurve(to: CGPoint(x: 0.57271, y: 0.42052), controlPoint1: CGPoint(x: 0.55258, y: 0.39081), controlPoint2: CGPoint(x: 0.55980, y: 0.40791))
    path.addLine(to: CGPoint(x: 0.64508, y: 0.49380))
    path.addCurve(to: CGPoint(x: 0.66372, y: 0.50337), controlPoint1: CGPoint(x: 0.64755, y: 0.49632), controlPoint2: CGPoint(x: 0.65465, y: 0.50337))
    path.addLine(to: CGPoint(x: 0.66406, y: 0.50337))
    path.addCurve(to: CGPoint(x: 0.68223, y: 0.49460), controlPoint1: CGPoint(x: 0.67217, y: 0.50337), controlPoint2: CGPoint(x: 0.67974, y: 0.49713))
    path.addLine(to: CGPoint(x: 0.75677, y: 0.41882))
    path.addCurve(to: CGPoint(x: 0.77526, y: 0.37251), controlPoint1: CGPoint(x: 0.76869, y: 0.40625), controlPoint2: CGPoint(x: 0.77526, y: 0.38980))
    path.addCurve(to: CGPoint(x: 0.70911, y: 0.30554), controlPoint1: CGPoint(x: 0.77526, y: 0.33558), controlPoint2: CGPoint(x: 0.74557, y: 0.30554))
    path.close()
    return path
}()

private let excitedFacePath: UIBezierPath = {
    var path = UIBezierPath()
    path.move(to: CGPoint(x: 0.40297, y: 0.42509))
    path.addCurve(to: CGPoint(x: 0.40366, y: 0.29256), controlPoint1: CGPoint(x: 0.43902, y: 0.38868), controlPoint2: CGPoint(x: 0.43933, y: 0.32935))
    path.addCurve(to: CGPoint(x: 0.27380, y: 0.29188), controlPoint1: CGPoint(x: 0.36799, y: 0.25578), controlPoint2: CGPoint(x: 0.30985, y: 0.25548))
    path.addCurve(to: CGPoint(x: 0.27311, y: 0.42441), controlPoint1: CGPoint(x: 0.23775, y: 0.32829), controlPoint2: CGPoint(x: 0.23744, y: 0.38763))
    path.addCurve(to: CGPoint(x: 0.40297, y: 0.42509), controlPoint1: CGPoint(x: 0.30878, y: 0.46119), controlPoint2: CGPoint(x: 0.36692, y: 0.46150))
    path.close()
    path.move(to: CGPoint(x: 0.72006, y: 0.42498))
    path.addCurve(to: CGPoint(x: 0.72053, y: 0.29245), controlPoint1: CGPoint(x: 0.75605, y: 0.38851), controlPoint2: CGPoint(x: 0.75626, y: 0.32917))
    path.addCurve(to: CGPoint(x: 0.59067, y: 0.29200), controlPoint1: CGPoint(x: 0.68479, y: 0.25573), controlPoint2: CGPoint(x: 0.62665, y: 0.25553))
    path.addCurve(to: CGPoint(x: 0.59021, y: 0.42452), controlPoint1: CGPoint(x: 0.55468, y: 0.32847), controlPoint2: CGPoint(x: 0.55447, y: 0.38780))
    path.addCurve(to: CGPoint(x: 0.72006, y: 0.42498), controlPoint1: CGPoint(x: 0.62594, y: 0.46124), controlPoint2: CGPoint(x: 0.68408, y: 0.46145))
    path.close()
    path.move(to: CGPoint(x: 0.77240, y: 0.53263))
    path.addCurve(to: CGPoint(x: 0.73966, y: 0.51841), controlPoint1: CGPoint(x: 0.76384, y: 0.52353), controlPoint2: CGPoint(x: 0.75202, y: 0.51841))
    path.addLine(to: CGPoint(x: 0.25418, y: 0.51841))
    path.addCurve(to: CGPoint(x: 0.22144, y: 0.53263), controlPoint1: CGPoint(x: 0.24182, y: 0.51841), controlPoint2: CGPoint(x: 0.23000, y: 0.52353))
    path.addCurve(to: CGPoint(x: 0.20880, y: 0.56657), controlPoint1: CGPoint(x: 0.21288, y: 0.54171), controlPoint2: CGPoint(x: 0.20832, y: 0.55398))
    path.addCurve(to: CGPoint(x: 0.49693, y: 0.84934), controlPoint1: CGPoint(x: 0.21496, y: 0.72513), controlPoint2: CGPoint(x: 0.34150, y: 0.84934))
    path.addCurve(to: CGPoint(x: 0.78504, y: 0.56657), controlPoint1: CGPoint(x: 0.65233, y: 0.84934), controlPoint2: CGPoint(x: 0.77888, y: 0.72513))
    path.addCurve(to: CGPoint(x: 0.77240, y: 0.53263), controlPoint1: CGPoint(x: 0.78552, y: 0.55398), controlPoint2: CGPoint(x: 0.78096, y: 0.54171))
    path.close()
    return path
}()

private let happyFacePath: UIBezierPath = {
    var path = UIBezierPath()
    path.move(to: CGPoint(x: 0.40070, y: 0.46354))
    path.addCurve(to: CGPoint(x: 0.40093, y: 0.33102), controlPoint1: CGPoint(x: 0.43662, y: 0.42701), controlPoint2: CGPoint(x: 0.43672, y: 0.36767))
    path.addCurve(to: CGPoint(x: 0.27107, y: 0.33079), controlPoint1: CGPoint(x: 0.36513, y: 0.29436), controlPoint2: CGPoint(x: 0.30699, y: 0.29426))
    path.addCurve(to: CGPoint(x: 0.27084, y: 0.46332), controlPoint1: CGPoint(x: 0.23515, y: 0.36732), controlPoint2: CGPoint(x: 0.23504, y: 0.42666))
    path.addCurve(to: CGPoint(x: 0.40070, y: 0.46354), controlPoint1: CGPoint(x: 0.30664, y: 0.49997), controlPoint2: CGPoint(x: 0.36477, y: 0.50008))
    path.close()
    path.move(to: CGPoint(x: 0.71805, y: 0.46349))
    path.addCurve(to: CGPoint(x: 0.71817, y: 0.33096), controlPoint1: CGPoint(x: 0.75394, y: 0.42692), controlPoint2: CGPoint(x: 0.75399, y: 0.36759))
    path.addCurve(to: CGPoint(x: 0.58831, y: 0.33085), controlPoint1: CGPoint(x: 0.68234, y: 0.29433), controlPoint2: CGPoint(x: 0.62420, y: 0.29428))
    path.addCurve(to: CGPoint(x: 0.58819, y: 0.46337), controlPoint1: CGPoint(x: 0.55242, y: 0.36741), controlPoint2: CGPoint(x: 0.55237, y: 0.42675))
    path.addCurve(to: CGPoint(x: 0.71805, y: 0.46349), controlPoint1: CGPoint(x: 0.62402, y: 0.50000), controlPoint2: CGPoint(x: 0.68216, y: 0.50005))
    path.close()
    path.move(to: CGPoint(x: 0.49444, y: 0.78358))
    path.addCurve(to: CGPoint(x: 0.23551, y: 0.67017), controlPoint1: CGPoint(x: 0.39365, y: 0.78358), controlPoint2: CGPoint(x: 0.29927, y: 0.74223))
    path.addCurve(to: CGPoint(x: 0.23921, y: 0.59602), controlPoint1: CGPoint(x: 0.21647, y: 0.64866), controlPoint2: CGPoint(x: 0.21811, y: 0.61545))
    path.addCurve(to: CGPoint(x: 0.31189, y: 0.59980), controlPoint1: CGPoint(x: 0.26029, y: 0.57659), controlPoint2: CGPoint(x: 0.29285, y: 0.57829))
    path.addCurve(to: CGPoint(x: 0.49444, y: 0.67858), controlPoint1: CGPoint(x: 0.35617, y: 0.64986), controlPoint2: CGPoint(x: 0.42272, y: 0.67858))
    path.addCurve(to: CGPoint(x: 0.67701, y: 0.59980), controlPoint1: CGPoint(x: 0.56616, y: 0.67858), controlPoint2: CGPoint(x: 0.63272, y: 0.64986))
    path.addCurve(to: CGPoint(x: 0.74969, y: 0.59602), controlPoint1: CGPoint(x: 0.69603, y: 0.57829), controlPoint2: CGPoint(x: 0.72857, y: 0.57657))
    path.addCurve(to: CGPoint(x: 0.75337, y: 0.67017), controlPoint1: CGPoint(x: 0.77075, y: 0.61545), controlPoint2: CGPoint(x: 0.77241, y: 0.64866))
    path.addCurve(to: CGPoint(x: 0.49444, y: 0.78358), controlPoint1: CGPoint(x: 0.68961, y: 0.74223), controlPoint2: CGPoint(x: 0.59522, y: 0.78358))
    path.close()
    return path
}()
