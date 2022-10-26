//
//  MainView.swift
//  SnackOverFlow
//
//  Created by mehmet karanlık on 20.10.2022.
//

import SwiftUI

struct MainView: View {
   @State var selectedIndex : Int = 0
    var body: some View {
       TabView(selection: $selectedIndex) {
          ForEach(DataProvider.tabItems) { item in
             item.page.view
                .tabItem {
                   item.image.swiftUIImage
                      .renderingMode(.template)
                   ProductText.small(item.title)
                }
                .tag(DataProvider.tabItems.firstIndex(where: {$0 == item}))
          }
       }
       .accentColor(Asset.Colors.peach.swiftUIColor)

    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

private struct DataProvider {
   static let tabItems : [CustomMainTabItem] = [
      .init(title: L10n.home, image: Asset.Images.Icons.home, page: NavigationPaths.findRouteByName(NavigationPaths.Names.empty)),
      .init(title: L10n.market, image: Asset.Images.Icons.market, page: NavigationPaths.findRouteByName(NavigationPaths.Names.market)),
      .init(title: L10n.create, image: Asset.Images.Icons.create, page: NavigationPaths.findRouteByName(NavigationPaths.Names.empty)),
      .init(title: L10n.wishlist, image: Asset.Images.Icons.wishlist, page: NavigationPaths.findRouteByName(NavigationPaths.Names.empty)),
      .init(title: L10n.account, image: Asset.Images.Icons.user, page: NavigationPaths.findRouteByName(NavigationPaths.Names.empty)),
   ]

}



