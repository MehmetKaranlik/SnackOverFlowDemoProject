   //
   //  PrimaryButton.swift
   //  SnackOverFlow
   //
   //  Created by mehmet karanlık on 14.10.2022.
   //

import SwiftUI

struct SecondaryButton: View {
   let action: () -> Void
   let label: String
   let icon : ImageAsset?
   let isDisabled : Bool

   init(action: @escaping () -> Void, label: String) {
      self.action = action
      self.label = label
      self.icon = nil
      self.isDisabled = false
   }

   init(action: @escaping () -> Void, label: String, icon : ImageAsset?) {
      self.action = action
      self.label = label
      self.icon = icon
      self.isDisabled = false
   }

   init (action: @escaping () -> Void, label: String, icon : ImageAsset?, disabled : Bool) {
      self.action = action
      self.label = label
      self.icon = icon
      self.isDisabled = disabled
   }

   var body: some View {
      Button(action: action) {
         HStack {
            if let icon {
               icon.swiftUIImage
                  .renderingMode(.template)
            }
            ProductText.headline(label)
         }
         .foregroundColor(Asset.Colors.peach.swiftUIColor)
      }
      .buttonStyle(  SecondaryButtonStyle(isDisabled: isDisabled))
      .disabled(isDisabled)

   }
}

struct SecondaryButton_Previews: PreviewProvider {
   static var previews: some View {
      SecondaryButton(
         action: {},
         label: "Secondary Button With Icon",
         icon: Asset.Images.Icons.add,
         disabled: false
      )
   }
}

private struct SecondaryButtonStyle: ButtonStyle {
   let  isDisabled : Bool
   func makeBody(configuration: Configuration) -> some View {
      configuration.label
         .frame(idealWidth: UIScreen.main.bounds.width, maxWidth: UIScreen.main.bounds.width)
         .modifier(
            StateModifier(
               isDisabled: isDisabled,
               isPressed: configuration.isPressed
            )
         )


   }

}



private struct StateModifier: ViewModifier {
   let isDisabled : Bool
   let isPressed : Bool
   func body(content: Content) -> some View {
      if isDisabled {
         content
            .padding()
            .background(Asset.Colors.karl.swiftUIColor)
            .cornerRadius(RadiusItems.radiusXs)
            .frame(height: 56)
            .opacity(0.7)
            .foregroundColor(Asset.Colors.white.swiftUIColor)
      }else {
         content
            .padding()
            .background(Asset.Colors.karl.swiftUIColor)
            .cornerRadius(RadiusItems.radiusXs)
            .frame(height: 56)
            .scaleEffect(isPressed ? 0.97 : 1)
            .brightness(isPressed ? -0.07 : 0)
            .foregroundColor(Asset.Colors.white.swiftUIColor)

      }

   }
}
