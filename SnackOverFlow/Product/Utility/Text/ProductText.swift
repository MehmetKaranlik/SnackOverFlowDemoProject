//
//  ProductText.swift
//  SnackOverFlow
//
//  Created by mehmet karanlık on 14.10.2022.
//

import Foundation
import SwiftUI

struct ProductText: View {
   let label: String
   let customFont: SwiftUI.Font

   var body: some View {
      return Text(label)
         .font(customFont)
   }
}

extension ProductText {
   static func largeTitle(_ label: String) -> ProductText {
      ProductText(
         label: label,
         customFont: FontFamily.Poppins.bold.swiftUIFont(size: 34)
      )
   }

   static func title1(_ label: String) -> ProductText {
      ProductText(
         label: label,
         customFont: FontFamily.Poppins.bold.swiftUIFont(size: 28)
      )
   }

   static func title2(_ label: String) -> ProductText {
      ProductText(
         label: label,
         customFont: FontFamily.Poppins.semiBold.swiftUIFont(size: 22)
      )
   }

   static func title3(_ label: String) -> ProductText {
      ProductText(
         label: label,
         customFont: FontFamily.Poppins.bold.swiftUIFont(size: 20)
      )
   }

   static func headline(_ label: String) -> ProductText {
      ProductText(
         label: label,
         customFont: FontFamily.Poppins.bold.swiftUIFont(size: 17)
      )
   }

   static func body(_ label: String) -> ProductText {
      ProductText(
         label: label,
         customFont: FontFamily.Poppins.regular.swiftUIFont(size: 17)
      )
   }

   static func callout(_ label: String) -> ProductText {
      ProductText(
         label: label,
         customFont: FontFamily.Poppins.regular.swiftUIFont(size: 16)
      )
   }

   static func subhead(_ label: String) -> ProductText {
      ProductText(
         label: label,
         customFont: FontFamily.Poppins.regular.swiftUIFont(size: 15)
      )
   }

   static func footnote(_ label: String) -> ProductText {
      ProductText(
         label: label,
         customFont: FontFamily.Poppins.regular.swiftUIFont(size: 13)
      )
   }

   static func caption1(_ label: String) -> ProductText {
      ProductText(
         label: label,
         customFont: FontFamily.Poppins.regular.swiftUIFont(size: 12)
      )
   }

   static func caption2(_ label: String) -> ProductText {
      ProductText(
         label: label,
         customFont: FontFamily.Poppins.regular.swiftUIFont(size: 11)
      )
   }

   static func small(_ label: String) -> some View {
      ProductText(
         label: label,
         customFont: FontFamily.Poppins.medium.swiftUIFont(size: 10)
      )
      .foregroundColor(Asset.Colors.gandalf.swiftUIColor)
   }
}
