//
//  Routes.swift
//  SnackOverFlow
//
//  Created by mehmet karanlık on 5.02.2023.
//

import Foundation
import StackNavigator
import SwiftUI

enum Routes : DeepRoutes {


   case onboarding
   case login
   case main
   case home
   case market
   case empty

   func urlSchema() -> String {
      switch self {
         case .onboarding :
            return "onboarding"
         case .login:
            return "login"
         case .main:
            return "main"
         case .home:
            return "home"
         case .market:
            return "market"
         case .empty:
            return "empty"
      }
   }

   func toItem() -> PageRouteInfo {
      switch self {

         case .onboarding:
            return PageRouteInfo(view: OnboardingView(), isInitial: true)
         case .login:
            return PageRouteInfo(view: LoginView())
         case .main:
            return PageRouteInfo(view: MainView())
         case .home:
            return PageRouteInfo(view: HomeView())
         case .market:
            return PageRouteInfo(view: MarketView())
         case .empty:
            return PageRouteInfo(view: Text("empty"))
      }
   }
}
