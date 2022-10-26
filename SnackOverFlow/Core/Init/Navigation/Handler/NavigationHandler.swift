//
//  NavigationHandler.swift
//  SnackOverFlow
//
//  Created by mehmet karanlık on 16.10.2022.
//

import Foundation
import SwiftUI

class NavigationHandler: ObservableObject {
   @Published var routes: [PageRoute] = []
   @Published var singularStackRoute: [PageRoute]

   init(routes: [PageRoute]) {
      self.singularStackRoute = [routes.first(where: { $0.isInitial == true })!]
      assert(!singularStackRoute.isEmpty, "Root cant be empty please make sure one of the routes are initial!")
   }

   func push(name: String) {
      let route = findRouteByName(name: name)
      routes.append(route)
   }

   func popUntil(handler: @escaping (PageRoute) -> Bool) {
      while handler(routes.last!) {
         routes.removeLast()
      }
   }

   func pop<T>(args: T) -> T {
      assert(!routes.isEmpty, "There is no route on stack yet")
      routes.removeLast()
      return args
   }

   func replaceRoot(name: String) {
      let newRoot = findRouteByName(name: name)
      withAnimation {
         singularStackRoute.append(newRoot)
         singularStackRoute.removeFirst()
      }
   }

   // todo will be implemented
//   private func findRouteByView<T : View>( view : T  ) ->  PageRoute {
//
//   }

   private func findRouteByName(name: String) -> PageRoute {
      let route = NavigationPaths.routes.first { route in
         route.name == name
      }
      assert(route != nil, "The page looked are not registered in routes")
      return route!
   }
}
