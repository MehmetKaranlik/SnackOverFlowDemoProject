//
//  CustomTabItem.swift
//  SnackOverFlow
//
//  Created by mehmet karanlık on 20.10.2022.
//

import Foundation

struct CustomMainTabItem : Identifiable, Equatable {
   static func == (lhs: CustomMainTabItem, rhs: CustomMainTabItem) -> Bool {
      lhs.title == rhs.title
   }

   let id: UUID = UUID()
   let title : String
   let image : ImageAsset
   let page : PageRoute

}
