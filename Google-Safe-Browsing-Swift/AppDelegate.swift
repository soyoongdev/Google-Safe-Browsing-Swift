//
//  AppDelegate.swift
//  CodingTest
//
//  Created by faizal on 07/10/18.
//  Copyright © 2018 test. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.configureTheme()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

extension AppDelegate {
    func configureTheme() {
        Theme.current.update {
            $0.colors.background = .themed(
                light: .hex("F6F9FC"),
                dark: .hex("0A0B0D")
            )
            $0.colors.secondaryBackground = .themed(
                light: .hex("FFFFFF"),
                dark: .hex("1A1B1F")
            )
            $0.colors.foreground = .themed(
                light: .hex("0A2540"),
                dark: .hex("FFFFFF")
            )
            $0.colors.secondaryForeground = .themed(
                light: .hex("425466"),
                dark: .hex("BCCCDC")
            )
            $0.colors.content1 = .themed(
                light: .hex("E9F0FB"),
                dark: .hex("1C2C40")
            )
            $0.colors.content2 = .themed(
                light: .hex("D6E4F0"),
                dark: .hex("253B59")
            )
            $0.colors.content3 = .themed(
                light: .hex("B3C7E6"),
                dark: .hex("32537C")
            )
            $0.colors.content4 = .themed(
                light: .hex("8CA8D8"),
                dark: .hex("4D6BA3")
            )
            $0.colors.divider = .themed(
                light: .rgba(r: 10, g: 37, b: 64, a: 0.1),
                dark: .rgba(r: 255, g: 255, b: 255, a: 0.1)
            )
            $0.colors.accent = .init(
                main: .themed(
                    light: .hex("635BFF"),
                    dark: .hex("9E95FF")
                ),
                contrast: .themed(
                    light: .hex("FFFFFF"),
                    dark: .hex("0A0B0D")
                ),
                background: .themed(
                    light: .hex("E7E5FF"),
                    dark: .hex("3B388C")
                )
            )
            $0.colors.primary = .init(
                main: .themed(
                    light: .hex("#0B0C0E"),
                    dark: .hex("#FFFFFF")
                ),
                contrast: .themed(
                    light: .hex("#FFFFFF"),
                    dark: .hex("#0B0C0E")
                ),
                background: .themed(
                    light: .hex("#D9D9D9"),
                    dark: .hex("#515253")
                )
            )
            $0.colors.success = .init(
                main: .themed(
                    light: .hex("00B86B"),
                    dark: .hex("00D487")
                ),
                contrast: .themed(
                    light: .hex("FFFFFF"),
                    dark: .hex("0A0B0D")
                ),
                background: .themed(
                    light: .hex("D8F5EC"),
                    dark: .hex("1E3C34")
                )
            )
            $0.colors.warning = .init(
                main: .themed(
                    light: .hex("FFB020"),
                    dark: .hex("FFC94A")
                ),
                contrast: .universal(.hex("0A2540")),
                background: .themed(
                    light: .hex("FFF4D6"),
                    dark: .hex("4E3E1C")
                )
            )
            $0.colors.danger = .init(
                main: .themed(
                    light: .hex("FF5A5F"),
                    dark: .hex("FF7B84")
                ),
                contrast: .universal(.hex("FFFFFF")),
                background: .themed(
                    light: .hex("FFEAEA"),
                    dark: .hex("4A2C2C")
                )
            )
            $0.layout.disabledOpacity = 0.5
            $0.layout.componentRadius = .init(
                small: 8.0,
                medium: 12.0,
                large: 16.0
            )
            $0.layout.containerRadius = .init(
                small: 12.0,
                medium: 16.0,
                large: 20.0
            )
            $0.layout.shadow = .init(
                small: .init(
                    radius: 6.0,
                    offset: .init(width: 0, height: 4),
                    color: .themed(
                        light: .rgba(r: 0, g: 0, b: 0, a: 0.08),
                        dark: .rgba(r: 255, g: 255, b: 255, a: 0.08)
                    )
                ),
                medium: .init(
                    radius: 12.0,
                    offset: .init(width: 0, height: 6),
                    color: .themed(
                        light: .rgba(r: 0, g: 0, b: 0, a: 0.12),
                        dark: .rgba(r: 255, g: 255, b: 255, a: 0.12)
                    )
                ),
                large: .init(
                    radius: 16.0,
                    offset: .init(width: 0, height: 8),
                    color: .themed(
                        light: .rgba(r: 0, g: 0, b: 0, a: 0.16),
                        dark: .rgba(r: 255, g: 255, b: 255, a: 0.16)
                    )
                )
            )
            $0.layout.borderWidth = .init(
                small: 0.5,
                medium: 1.0,
                large: 2.0
            )
            $0.layout.animationScale = .init(
                small: 0.99,
                medium: 0.97,
                large: 0.95
            )
            $0.layout.typography.headline = .init(
                small: .custom(name: "Urbanist-Medium", size: 16),
                medium: .custom(name: "Urbanist-Semibold", size: 20),
                large: .custom(name: "Urbanist-Bold", size: 24)
            )
            $0.layout.typography.body = .init(
                small: .custom(name: "Urbanist-Regular", size: 14),
                medium: .custom(name: "Urbanist-Regular", size: 16),
                large: .custom(name: "Urbanist-Regular", size: 18)
            )
            $0.layout.typography.button = .init(
                small: .custom(name: "Urbanist-Medium", size: 14),
                medium: .custom(name: "Urbanist-Medium", size: 16),
                large: .custom(name: "Urbanist-Medium", size: 20)
            )
            $0.layout.typography.caption = .init(
                small: .custom(name: "Urbanist-Regular", size: 10),
                medium: .custom(name: "Urbanist-Regular", size: 12),
                large: .custom(name: "Urbanist-Regular", size: 14)
            )
        }
    }
}

