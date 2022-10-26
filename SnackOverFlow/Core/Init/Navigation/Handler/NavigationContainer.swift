//
//  NavigationContainer.swift
//  SnackOverFlow
//
//  Created by mehmet karanlık on 16.10.2022.
//

import Foundation
import SwiftUI


struct NavigationContainer: View {

   @ObservedObject var navigationHandler = NavigationHandler(routes: NavigationPaths.routes)

   var body : some View {
      NavigationStack(path: $navigationHandler.routes) {
         ZStack {
            ForEach(self.navigationHandler.singularStackRoute, id: \.self) { rootItem in
               rootItem.view
            }
            .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .opacity))
         }
         .navigationDestination(for: PageRoute.self) { router in
            router.view
         }
      }
      .environmentObject(navigationHandler)
   }
}
