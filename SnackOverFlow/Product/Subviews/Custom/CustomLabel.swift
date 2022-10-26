//
//  CustomLabel.swift
//  SnackOverFlow
//
//  Created by mehmet karanlık on 20.10.2022.
//

import SwiftUI

struct CustomLabel: View {
   let titleText : String
   let image : ImageAsset?

   /// custom initializer without icon
   init(titleText: String) {
      self.titleText = titleText
      self.image = nil
   }

      /// custom initializer with icon
   init(titleText : String , image: ImageAsset) {
      self.titleText = titleText
      self.image = image
   }

    var body: some View {
       HStack {
          ProductText.title2(titleText)
             .foregroundColor(Asset.Colors.teflon.swiftUIColor)
          Spacer()
          imageBuilder()
       }
       .padding(.all, SpacingItems.spacingM)
    }


   @ViewBuilder
   func imageBuilder() -> some View {
      if let image {
         Button {

         } label: {
            image.swiftUIImage
         }

      }
   }
}

struct CustomLabel_Previews: PreviewProvider {
    static var previews: some View {
       CustomLabel(titleText: "Example", image: Asset.Images.Icons.home)
    }
}
