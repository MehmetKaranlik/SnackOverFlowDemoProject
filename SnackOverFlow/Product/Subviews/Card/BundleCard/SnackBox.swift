//
//  SnackBox.swift
//  SnackOverFlow
//
//  Created by mehmet karanlık on 20.10.2022.
//

import SwiftUI

struct SnackBox: View {
    var body: some View {
       VStack(alignment: .leading,spacing: 0) {
          PageGrid()
          ProductText.headline("Title")
             .padding(.top,SizeItems.small)
             .foregroundColor(Asset.Colors.teflon.swiftUIColor)

          ProductText.subhead("Description")
             .foregroundColor(Asset.Colors.gandalf.swiftUIColor)

          RatingView()
             .padding(.top, SizeItems.small)
       }


    }

}

struct SnackBox_Previews: PreviewProvider {
    static var previews: some View {
        SnackBox()
          .previewLayout(.sizeThatFits)
          .padding()
    }
}

private struct PageGrid: View {
   var body: some View {
      Grid {
         gridBuilder()
         gridBuilder()
      }
      .padding(.all,SpacingItems.spacingBase)
      .border(Asset.Colors.karl.swiftUIColor)
      .cornerRadius(RadiusItems.radiusS / 2)
   }

   @ViewBuilder
   func gridBuilder() -> some View {
      GridRow {
         CardGridItem()
         CardGridItem()
      }
   }
}
