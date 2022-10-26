//
//  LoginView.swift
//  SnackOverFlow
//
//  Created by mehmet karanlık on 16.10.2022.
//

import SwiftUI

struct LoginView: View {
   @State var email = ""
   @State var password = ""

   @EnvironmentObject var navigationHandler : NavigationHandler

    var body: some View {
       VStack {
          Spacer()
          Asset.Images.Icons.appLogo.swiftUIImage
             .renderingMode(.template)
             .foregroundColor(Asset.Colors.orange.swiftUIColor)
          Spacer()
          Fields(email: email, password: password)
          Spacer()
             .frame(height: SpacingItems.spacingS)
          Divider()
             .frame(minHeight: SizeItems.xSmall / 2)
             .overlay {
                Asset.Colors.karl.swiftUIColor
             }
             .padding(.horizontal,SpacingItems.spacingXxl)
             .padding(.vertical,SpacingItems.spacingM)
          PrimaryButton(action: {
             navigationHandler.replaceRoot(name: NavigationPaths.Names.main)
          }, label: L10n.createAccount)
          .padding(.horizontal,SpacingItems.spacingM)
          Spacer()
             .frame(height: SpacingItems.spacingM)
          ProductText.caption1(L10n.agreementText)
             .padding(.horizontal, SpacingItems.spacingM)

          Spacer()

       }

    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


private struct Fields: View {
   @State var email : String
   @State var password : String
   var body: some View {
      VStack {
         EmailTextField(value: $email)
            .padding(.horizontal,SpacingItems.spacingM)
            .padding(.bottom,SpacingItems.spacingS / 2)
         PasswordTextField(value: $email)
            .padding(.horizontal,SpacingItems.spacingM)
      }
   }
}
