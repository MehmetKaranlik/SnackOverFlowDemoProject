//
//  SnackCardBundle.swift
//  SnackOverFlow
//
//  Created by mehmet karanlık on 16.10.2022.
//

import SwiftUI

struct SnackBundleCard: View {
   @State var hasPrice: Bool = true
   var body: some View {
      HStack(alignment: .top, content: {
         Grid2x2Bundle()
         Spacer()
            .frame(width: SpacingItems.spacingM)
         MiddleRow(hasPrice: hasPrice)
         Spacer()
         TrailingButton(hasPrice: hasPrice)
      })
      .padding(.all,SpacingItems.spacingM)
   }
}

struct SnackCardBundle_Previews: PreviewProvider {
   static var previews: some View {
      SnackBundleCard()
         .previewLayout(.sizeThatFits)
         .padding()
   }
}

private struct Grid2x2Bundle: View {
   var body: some View {
      Grid {
       gridRow()
       gridRow()
      }
      .padding(.all, SpacingItems.spacingBase)
      .border(Asset.Colors.karl.swiftUIColor)
      .cornerRadius(RadiusItems.radiusS / 2)
   }

   @ViewBuilder
   func gridRow() -> some View {
      GridRow {
         CardGridItem()
         CardGridItem()
      }
   }
}



private struct MiddleRow: View {
   @State var hasPrice : Bool

   var body: some View {
      VStack(alignment: .leading) {
         ProductText.headline("Untitled bundle")
            .foregroundColor(Asset.Colors.teflon.swiftUIColor)
         ProductText.subhead("No description")
            .foregroundColor(Asset.Colors.gandalf.swiftUIColor)
         Spacer()
            .frame(height: SpacingItems.spacingBase)
         priceView()

      }
   }


   @ViewBuilder
   func priceView() -> some View {
      if hasPrice {
         PriceView()
      }else {
         EmptyView()
      }
   }
}


private struct TrailingButton : View {
   @State var hasPrice : Bool
   var body : some View {
            icon()
            .foregroundColor(Asset.Colors.clooney.swiftUIColor)
   }
   @ViewBuilder
   func icon() -> some View {
      if hasPrice {
         Asset.Images.Icons.toBeSaved.swiftUIImage
            .renderingMode(.template)
      }else {
         Asset.Images.Icons.create.swiftUIImage
            .renderingMode(.template)

      }
   }
}





