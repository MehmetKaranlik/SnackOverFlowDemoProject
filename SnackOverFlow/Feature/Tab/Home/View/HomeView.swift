//
//  HomeView.swift
//  SnackOverFlow
//
//  Created by mehmet karanlık on 27.10.2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
       ScrollView {
          VStack {
             HeroCard(image: Asset.Images.Images.tea)
             CustomLabel(titleText: "Daily Quest", image: Asset.Images.Icons.detail)
             

          }
       }
       .ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
