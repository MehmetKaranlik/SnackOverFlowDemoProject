//
//  BundleBanner.swift
//  SnackOverFlow
//
//  Created by mehmet karanlık on 20.10.2022.
//

import SwiftUI

struct BundleBanner: View {
   let image : ImageAsset
   let title : String
    var body: some View {
       image.swiftUIImage
          .resizable()
          .scaledToFill()
          .frame(height:SizeItems.xxLarge)
          .overlay(content: {
             LinearGradient(
               colors:[.black.opacity(0.3),.clear],
               startPoint: .bottom, endPoint: .top)
          })
          .cornerRadius(RadiusItems.radiusS / 2)
          .padding(.bottom, SizeItems.medium)

          .overlay {
             ProductText.headline(title)
                .foregroundColor(Asset.Colors.white.swiftUIColor)
          }

    }
}

struct BundleBanner_Previews: PreviewProvider {
    static var previews: some View {
       BundleBanner(image: Asset.Images.Images.banner, title: "Sample")
    }
}
