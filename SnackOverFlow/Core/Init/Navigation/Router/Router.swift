//
//  Router.swift
//  SnackOverFlow
//
//  Created by mehmet karanlık on 16.10.2022.
//

import Foundation
import SwiftUI

struct NavigationPaths {

   static let routes :[PageRoute] = [
      PageRoute(view: OnboardingView(), name: Names.onboarding, isInitial: true),
      PageRoute(view: SignInView(), name: Names.signIn),
      PageRoute(view: LoginView(), name: Names.login),
      PageRoute(view: MarketView(), name: Names.market),
      PageRoute(view: Text(Names.empty), name: Names.empty),
      PageRoute(view: MainView(), name: Names.main)
      
   ]


   internal struct Names {
    static let onboarding = "onboarding"
    static let signIn = "signIn"
    static let login = "login"
    static let home = "home"
    static let empty = "empty"
    static let main = "main"
    static let market = "market"
   }


   static func findRouteByName(_ name : String) -> PageRoute {
      return routes.first(where: { $0.name == name })!
   }
}



