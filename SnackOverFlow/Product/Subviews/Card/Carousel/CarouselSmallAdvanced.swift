//
//  FoodCard.swift
//  SnackOverFlow
//
//  Created by mehmet karanlık on 27.10.2022.
//

import SwiftUI

struct CarouselSmallAdvanced: View {
   var body: some View {
      VStack(alignment:.leading,spacing: 0) {
         ImageView()
         Spacer()
            .frame(height: SizeItems.small)
         ProductText.headline("Title")
            .foregroundColor(Asset.Colors.teflon.swiftUIColor)
         Spacer()
            .frame(height: SpacingItems.spacingBase)
         ProductText.subhead("Description")
            .foregroundColor(Asset.Colors.teflon.swiftUIColor)
         Spacer()
            .frame(height: SizeItems.small)
         RatingView()
      }
   }
}

struct CarouselSmallAdvanced_Previews: PreviewProvider {
   static var previews: some View {
      CarouselSmallAdvanced()
         .previewLayout(.sizeThatFits)
         .padding()
   }
}

struct ImageView: View {
   var body: some View {
      AsyncImage(
         url: AppConstants.foodPlaceHolderUrl,
         content: { $0.imageModifier() },
         placeholder: { ProgressView() }
      )

   }
}

private extension Image {
   func imageModifier() -> some View {
      self

         .resizable()
         .scaledToFill()
         .frame(
            width: CardSizes.carouselSmallCardSize,
            height: CardSizes.carouselSmallCardSize
         )
         .clipShape(RoundedRectangle(cornerRadius: RadiusItems.radiusS / 2))
   }
}
