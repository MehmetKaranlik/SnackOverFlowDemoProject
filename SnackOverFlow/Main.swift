//
//  SnackOverFlowApp.swift
//  SnackOverFlow
//
//  Created by mehmet karanlık on 14.10.2022.
//

import SwiftUI
import StackNavigator
@main
struct SnackOverFlowApp: App {
    var body: some Scene {
        WindowGroup {
           AppBuilder(initial: Routes.onboarding.toItem())
        }
    }

}
