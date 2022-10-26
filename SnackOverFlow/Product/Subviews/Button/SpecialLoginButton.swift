//
//  SpecialLoginButton.swift
//  SnackOverFlow
//
//  Created by mehmet karanlık on 15.10.2022.
//

import SwiftUI

struct SpecialLoginButton: View {
   let type: SpecialLoginItems
   var body: some View {
      Button {} label: {
         HStack {
            type.toItem().icon.swiftUIImage
            ProductText.headline(type.toItem().labelText)

         }
         .frame(
            idealWidth: UIScreen.main.bounds.width,
            maxWidth: UIScreen.main.bounds.width,
            alignment: .leading
         )
      }.buttonStyle(SpecialLoginButtonStyle(type: type))
   }
}

struct SpecialLoginButton_Previews: PreviewProvider {
   static var previews: some View {
      SpecialLoginButton(
         type: .facebook)
   }
}

struct SpecialLoginButtonStyle: ButtonStyle {
   let type: SpecialLoginItems
   func makeBody(configuration: Configuration) -> some View {
      configuration.label
         .padding(.all, SpacingItems.spacingM)
         .background(self.type.toItem().backGroundColor.swiftUIColor)
         .cornerRadius(RadiusItems.radiusXs)

         .scaleEffect(configuration.isPressed ? 0.97 : 1)
         .foregroundColor(self.type.toItem().foreGroundColor.swiftUIColor)
   }
}

enum SpecialLoginItems: String, CaseIterable {
   case facebook = "Sign In with Facebook"
   case google = "Sign In with Google"
   case apple = "Sign In with Apple"
}

extension SpecialLoginItems {
   func toItem() -> SpecialLoginItemValueHolder {
      switch self {
         case .apple:
            return SpecialLoginItemValueHolder(
               labelText: self.rawValue,
               icon: Asset.Images.Icons.apple,
               backGroundColor: Asset.Colors.pureBlack,
               foreGroundColor: Asset.Colors.white
            )
         case .facebook:
            return SpecialLoginItemValueHolder(
               labelText: self.rawValue,
               icon: Asset.Images.Icons.facebook,
               backGroundColor: Asset.Colors.deepSkyBlue, foreGroundColor: Asset.Colors.white
            )
         case .google:
            return SpecialLoginItemValueHolder(
               labelText: self.rawValue,
               icon: Asset.Images.Icons.google,
               backGroundColor: Asset.Colors.white,
               foreGroundColor: Asset.Colors.gandalf
            )
      }
   }
}

struct SpecialLoginItemValueHolder {
   let labelText: String
   let icon: ImageAsset
   let backGroundColor: ColorAsset
   let foreGroundColor: ColorAsset
}
