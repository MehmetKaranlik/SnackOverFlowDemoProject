//
//  RatingView.swift
//  SnackOverFlow
//
//  Created by mehmet karanlık on 27.10.2022.
//

import SwiftUI

struct RatingView: View {
   var body: some View {
      HStack(spacing:0) {
         IconView(image: Asset.Images.Icons.star, color: Asset.Colors.yellow.swiftUIColor)
         ProductText.caption2("4.6")
            .foregroundColor(Asset.Colors.gandalf.swiftUIColor)
            .padding(.leading,SpacingItems.spacingBase / 2)
         Spacer()
            .frame(width: SpacingItems.spacingBase)
         IconView(image: Asset.Images.Icons.speed, color: Asset.Colors.teflon.swiftUIColor)
         ProductText.caption2("31m")
            .foregroundColor(Asset.Colors.gandalf.swiftUIColor)
            .padding(.leading,SpacingItems.spacingBase / 2)
      }
   }
}

private struct IconView : View {
   let image : ImageAsset
   let color : Color
   var body : some View {
      image.swiftUIImage
         .renderingMode(.template)
         .resizable()
         .frame(width: SpacingItems.spacingS, height: SpacingItems.spacingS)
         .foregroundColor(color)
   }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView()
    }
}
