//  Created by Vadim Yelagin on 09/05/2018.
//  Copyright © 2018 Fueled. All rights reserved.

import UIKit

final class VoronoiChartView: UIView {

	var packing: CirclePacking? {
		didSet {
			self.setNeedsDisplay()
		}
	}

	override func draw(_ rect: CGRect) {
		guard let packing = self.packing else {
			return
		}

		let colorSpace = CGColorSpaceCreateDeviceRGB()
		let colorLocations: [CGFloat] = [0, 1]
		let lightGradientColors = [
			UIColor(white: 1, alpha: 0.5).cgColor,
			UIColor(white: 1, alpha: 0).cgColor
		]
		let lightGradient = CGGradient(colorsSpace: colorSpace,
								  colors: lightGradientColors as CFArray,
								  locations: colorLocations)!
		let darkGradientColors = [
			UIColor(white: 0, alpha: 0).cgColor,
			UIColor(white: 0, alpha: 0.25).cgColor
		]
		let darkGradient = CGGradient(colorsSpace: colorSpace,
									   colors: darkGradientColors as CFArray,
									   locations: colorLocations)!

		let radius = packing.radius
		let rect = CGRect(origin: CGPoint(x: -radius, y: -radius), size: CGSize(width: 2*radius, height: 2*radius))
		packing.drawVoronoiChart(in: self.bounds) { ctx, circle in
			let mood = circle.userInfo as! MoodType
			mood.moodColor.setFill()
			ctx.fill(rect)
			mood.darkMoodColor.setFill()
			// the face shape is in 0...1 coordinates
			// context state is saved and restored outside of this closure
			ctx.translateBy(x: circle.center.x - circle.radius, y: circle.center.y - circle.radius)
			ctx.scaleBy(x: 2 * circle.radius, y: 2 * circle.radius)
			mood.facePath.fill()

			// add a slight gradient for a sense of volume
			ctx.setBlendMode(.screen)
			ctx.drawLinearGradient(lightGradient,
								   start: CGPoint(x: 0.25, y: -0.5),
								   end: CGPoint(x: 0.5, y: 0.5),
								   options: [.drawsBeforeStartLocation])
			ctx.setBlendMode(.multiply)
			ctx.drawLinearGradient(darkGradient,
								   start: CGPoint(x: 0.5, y: 0.5),
								   end: CGPoint(x: 0.75, y: 1.5),
								   options: [.drawsAfterEndLocation])
		}
	}

}
