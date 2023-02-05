//
//  HomeView.swift
//  SnackOverFlow
//
//  Created by mehmet karanlık on 27.10.2022.
//

import SwiftUI
import StackNavigator
struct HomeView: View {
   @EnvironmentObject var navigationHandler : NavigationHandler

    var body: some View {
       ScrollView {
          VStack {
             HeroCard(image: Asset.Images.Images.tea)
               
             CustomLabel(titleText: "Daily Quest", image: Asset.Images.Icons.detail)
             CarouselView()
             CustomLabel(titleText: "Popular items", image: Asset.Images.Icons.detail)
             CarouselView()
             CustomLabel(titleText: "Others items", image: Asset.Images.Icons.detail)
             CarouselView()
             CustomLabel(titleText: "Others items", image: Asset.Images.Icons.detail)
             CarouselView()
             Group {
                CustomLabel(titleText: "Others items", image: Asset.Images.Icons.detail)
                CarouselView()
             }


          }
       }
       .padding(.bottom,SpacingItems.spacingXl)
       .ignoresSafeArea(edges: .bottom)

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


private struct CarouselView : View  {
   var body: some View {
      ScrollView(.horizontal, showsIndicators: false) {
         HStack {
            CarouselLargeSimple()
               .padding(.leading,SpacingItems.spacingM)
            CarouselLargeSimple()
            CarouselLargeSimple()
            CarouselLargeSimple()

         }
      }
   }
}
