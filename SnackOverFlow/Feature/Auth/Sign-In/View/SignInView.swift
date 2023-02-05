//
//  SignInView.swift
//  SnackOverFlow
//
//  Created by mehmet karanlık on 15.10.2022.
//

import SwiftUI
import StackNavigator

struct SignInView: View {
   @EnvironmentObject var navigationHandler : NavigationHandler
    var body: some View {
       VStack {
          Spacer()
          Asset.Images.Icons.appLogo.swiftUIImage
          Spacer()
          ForEach(SpecialLoginItems.allCases , id: \.rawValue) { item in
             SpecialLoginButton(type: item)
          }
          Spacer()
             .frame(height: SpacingItems.spacingXl)
          Divider()
             .frame(minHeight: SizeItems.xSmall / 2)
             .overlay {
                Asset.Colors.white.swiftUIColor.opacity(0.4)
             }
             .padding(.horizontal,SpacingItems.spacingXxl)
          SecondaryButton(action: {
             navigationHandler.replaceRoot(with: Routes.main)
          }, label: L10n.signInNormal)
       }
       .padding(.horizontal,SpacingItems.spacingM)

       .background {
          Asset.Images.Images.drink.swiftUIImage
       }


    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
