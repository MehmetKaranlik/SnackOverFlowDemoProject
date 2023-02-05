//
//  HomeView.swift
//  SnackOverFlow
//
//  Created by mehmet karanlık on 16.10.2022.
//

import SwiftUI
import StackNavigator

struct MarketView: View {
   @State var searchText : String = ""
    var body: some View {
       ScrollView {
          VStack {
             SearchTextField(searchText: $searchText)
             Spacer()
                .frame(height: SpacingItems.spacingL)
             CustomLabel(titleText: L10n.recentUserBundles, image: Asset.Images.Icons.detail)
                .padding(.bottom, SizeItems.medium)
             SnackBoxRow()
             Top3Bundles()
             CustomLabel(titleText: "Peopler nearby favorites", image: Asset.Images.Icons.detail)
             NearbyFavoritesView()
             Spacer()
                .frame(height: SizeItems.xLargeDense)
          }
       }
    }
}

struct MarketView_Previews: PreviewProvider {
    static var previews: some View {
        MarketView()
    }
}

struct SearchTextField: View {
   @Binding var searchText : String
   @EnvironmentObject var navmanager : NavigationHandler
   var body: some View {
      HStack {
         Asset.Images.Icons.search.swiftUIImage
            .renderingMode(.template)
            .foregroundColor(Asset.Colors.clooney.swiftUIColor)

         TextField("Search", text: $searchText)
            .onTapGesture {
               navmanager.push(destionation: Routes.empty)
            }

      }
      .padding(.horizontal, SizeItems.small)
      .padding(.vertical,SizeItems.smallDense)
      .background(Asset.Colors.whitey.swiftUIColor)
      .cornerRadius(RadiusItems.radiusS / 2)
      .padding(.all,SpacingItems.spacingM)
      

   }
}

struct SnackBoxRow: View {
   var body: some View {
      ScrollView(.horizontal, showsIndicators: false) {
         HStack {
            ForEach(0..<3) { int in
               SnackBox()
                  .padding(
                     .leading,
                     int == 0 ? SizeItems.medium : 0
                  )
            }
         }
      }
   }
}

struct Top3Bundles: View {
   var body: some View {
      VStack {
         CustomLabel(titleText: "Top 3 popular bundles")
            .padding(.top, SizeItems.medium)
         ForEach(0..<3) { _ in
            BundleBanner(image: Asset.Images.Images.banner, title: "Turkish tea time bundle")

         }
         .padding(.horizontal,SpacingItems.spacingM)
      }
   }
}

struct NearbyFavoritesView: View {
   var body: some View {
      ScrollView(.horizontal, showsIndicators: false) {
         HStack {
            ForEach(0..<10) { index in
               CarouselSmallAdvanced()
                  .padding(.leading, index == 0 ? SpacingItems.spacingM : 0)
            }
         }
      }
   }
}
