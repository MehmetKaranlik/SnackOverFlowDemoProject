//
//  EmailTextField.swift
//  SnackOverFlow
//
//  Created by mehmet karanlık on 16.10.2022.
//

import Foundation
import SwiftUI


struct EmailTextField : View {
   @Binding var value : String

   var body : some View {
      HStack {
         Asset.Images.Icons.email.swiftUIImage
         CustomUIKitTextField(
            text:$value, placeholder: L10n.email,
            backgroundColor: Asset.Colors.whitey.color,
            foregroundColor: Asset.Colors.teflon.color
         )
      }
      .padding(.all, SpacingItems.spacingM)
      .background( Asset.Colors.whitey.swiftUIColor)
      .cornerRadius(RadiusItems.radiusXs)
   }
}
