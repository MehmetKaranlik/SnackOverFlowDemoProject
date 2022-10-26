//
//  CustomTabItem.swift
//  SnackOverFlow
//
//  Created by mehmet karanlık on 15.10.2022.
//

import Foundation


struct CustomTabItem : Identifiable {
   let id = UUID()
   let label : String
   let image : ImageAsset
   let tag : Int
}
