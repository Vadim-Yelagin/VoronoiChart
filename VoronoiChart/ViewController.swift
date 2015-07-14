//  Created by Vadim Yelagin on 14/07/15.
//  Copyright (c) 2015 Fueled. All rights reserved.

import UIKit

class ViewController: UIViewController {

    @IBOutlet var voronoiChartView: VoronoiChartView!

	override func viewDidLoad() {
		super.viewDidLoad()
		self.generatePacking()
	}

	@IBAction func generatePacking() {
		let moods: [MoodType] = [
			.happy,
			.excited,
			.romantic,
			.calm,
			.indifferent,
			.confused,
			.stressed,
			.sad,
			.angry
		]
		let circles = moods.map {
			Circle(userInfo: $0, radius: CGFloat(arc4random_uniform(3000) + 1000))
		}
		self.voronoiChartView.packing = CirclePacking.dichotomyPacking(circles, iterations: 25)
	}

}
