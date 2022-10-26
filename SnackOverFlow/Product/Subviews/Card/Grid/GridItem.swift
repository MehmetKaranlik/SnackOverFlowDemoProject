//
//  GridItem.swift
//  SnackOverFlow
//
//  Created by mehmet karanlık on 20.10.2022.
//

import SwiftUI

struct CardGridItem: View {
   var body: some View {
      RoundedRectangle(cornerRadius: RadiusItems.radiusBase)
         .frame(
            width: SizeItems.xLargeLoose,
            height: SizeItems.xLargeLoose
         )
         .foregroundColor(Asset.Colors.clooney.swiftUIColor)
   }
}

struct CardGridItem_Previews: PreviewProvider {
    static var previews: some View {
       CardGridItem()
    }
}
