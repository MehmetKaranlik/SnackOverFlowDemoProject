//
//  CarouselLargeSimple.swift
//  SnackOverFlow
//
//  Created by mehmet karanlık on 10.11.2022.
//

import SwiftUI

struct CarouselLargeSimple: View {

    var body: some View {
       AsyncImage(
         url: AppConstants.carouselSimpleImageUrl,
         content: { $0.imageModifier() },
         placeholder: { ProgressView() .frame(width: SizeItems.xxxLarge) }
       )

    }
}

struct CarouselLargeSimple_Previews: PreviewProvider {
    static var previews: some View {
        CarouselLargeSimple()
    }
}


private extension Image {
   func imageModifier() -> some View {
      self
         .resizable()
         .scaledToFit()
         .frame(width: SizeItems.xxxLarge)
         .cornerRadius(RadiusItems.radiusS / 2)
         .overlay {
            ProductText.headline("Title")
               .foregroundColor(Asset.Colors.white.swiftUIColor)
         }

   }
}
