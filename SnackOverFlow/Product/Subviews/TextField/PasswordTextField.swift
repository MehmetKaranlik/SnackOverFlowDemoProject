//
//  PasswordTextField.swift
//  SnackOverFlow
//
//  Created by mehmet karanlık on 16.10.2022.
//

import Foundation
import SwiftUI
struct PasswordTextField : View {
   @Binding var value : String

   var body : some View {
      HStack {
         Asset.Images.Icons.lock.swiftUIImage
         CustomUIKitTextField(
            text:$value, placeholder: L10n.password,
            backgroundColor: Asset.Colors.white.color,
            foregroundColor: Asset.Colors.teflon.color
         )
      }
      .padding(.all, SpacingItems.spacingM)
      .border(Asset.Colors.karl.swiftUIColor, width: SizeItems.xxSmall)
      .cornerRadius(RadiusItems.radiusXs)

   }
}
