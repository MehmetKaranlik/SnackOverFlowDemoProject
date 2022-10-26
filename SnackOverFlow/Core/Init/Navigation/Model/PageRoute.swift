//
//  PageRoute.swift
//  SnackOverFlow
//
//  Created by mehmet karanlık on 16.10.2022.
//

import Foundation
import SwiftUI

struct PageRoute : Hashable, Equatable {

   let view : AnyView
   let name : String
   let isInitial : Bool?

   init(view: any View, name: String, isInitial : Bool?) {
      self.view = AnyView(view)
      self.name = name
      self.isInitial = isInitial
   }

   init(view: any View, name: String) {
      self.view = AnyView(view)
      self.name = name
      self.isInitial = nil
   }


   func hash(into hasher: inout Hasher) {
      hasher.finalize()
   }
   static func == (lhs: PageRoute, rhs: PageRoute) -> Bool {
      lhs.name == rhs.name
   }
}
