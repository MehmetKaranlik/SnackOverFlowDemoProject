//
//  HeroCard.swift
//  SnackOverFlow
//
//  Created by mehmet karanlık on 10.11.2022.
//

import SwiftUI

struct HeroCard: View {
   let image: ImageAsset
    var body: some View {
       image.swiftUIImage.resizable()
          .scaledToFit()
          .frame(width: UIScreen.main.bounds.width)
          .overlay(alignment: .bottomLeading) {
             VStack(alignment: .leading) {
                HStack {
                   Asset.Images.Icons.location.swiftUIImage
                      .renderingMode(.template)
                      .foregroundColor(Asset.Colors.white.swiftUIColor)
                   ProductText.subhead("San Francisco, CA")
                      .foregroundColor(Asset.Colors.white.swiftUIColor)
                }
                ProductText.title1(L10n.bannerText)
                   .foregroundColor(Asset.Colors.white.swiftUIColor)
             }
             .padding(.bottom,SpacingItems.spacingXl)
             .padding(.horizontal,SpacingItems.spacingM)
          }
    }
}

struct HeroCard_Previews: PreviewProvider {
    static var previews: some View {
       HeroCard(image: Asset.Images.Images.tea)
    }
}

