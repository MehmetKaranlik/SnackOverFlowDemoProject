//
//  PriceView.swift
//  SnackOverFlow
//
//  Created by mehmet karanlık on 20.10.2022.
//

import SwiftUI

struct PriceView: View {

   var body: some View {
      VStack(alignment: .leading, spacing: 0) {
         ProductText.headline("$10.99")
            .foregroundColor(Asset.Colors.teflon.swiftUIColor)
         Spacer()
            .frame(height: SpacingItems.spacingBase*2 )
         RatingView()
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


struct PriceView_Previews: PreviewProvider {
    static var previews: some View {
        PriceView()
    }
}


