//  Created by Vadim Yelagin on 14/07/15.
//  Copyright (c) 2015 Fueled. All rights reserved.

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        self.window?.tintColor = MoodType.excited.moodColor
        return true
    }
}
