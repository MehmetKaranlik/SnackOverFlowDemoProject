//
//  OnboardingView.swift
//  SnackOverFlow
//
//  Created by mehmet karanlık on 15.10.2022.
//

import SwiftUI
import StackNavigator

struct OnboardingView: View {
   @ObservedObject var vm: OnboardingViewModel
   @EnvironmentObject var navigationHandler : NavigationHandler

   init() {
      self.vm = OnboardingViewModel()
   }

   var body: some View {
      VStack {
         TabsView(selected: $vm.selected)
         IndicatorRow(selectedIndex: $vm.selected)
         Spacer()
            .frame(height: 28)
         PrimaryButton(action: {
            navigationHandler.replaceRoot(with: Routes.login)
         }, label: L10n.getStarted)
         .padding(.horizontal,SpacingItems.spacingM)
         .padding(.bottom, SpacingItems.spacingM )

      }
      .background(.white)
   }
}

struct OnboardingView_Previews: PreviewProvider {
   static var previews: some View {
      OnboardingView()
   }
}

struct TabsView: View {
   @Binding var selected: Int
   var body: some View {
      TabView(selection: $selected) {
         ForEach(DataProvider.tabs, id: \.id) { tabItem in
            VStack {
               tabItem.image.swiftUIImage
               ProductText.largeTitle(tabItem.label)
                  .multilineTextAlignment(.center)
                  .foregroundColor(Asset.Colors.peach.swiftUIColor)
            }
            .tag(tabItem.tag)
         }
      }
      .tabViewStyle(.page(indexDisplayMode: .never))
   }
}

struct IndicatorRow: View {
   @Binding var selectedIndex: Int
   var body: some View {
      HStack {
         ForEach(0 ..< DataProvider.tabs.count) { index in
            buildSingleIndicator(hasFocus: selectedIndex == index)
         }
      }
   }

   @ViewBuilder
   func buildSingleIndicator(hasFocus: Bool) -> some View {
      RoundedRectangle(cornerRadius: SizeItems.normal)
         .frame(
            width: hasFocus ? SizeItems.normalDense : SizeItems.smallDense,
            height:  SizeItems.smallDense, alignment: .center
         )
         .animation(.easeIn(duration: Durations.low.rawValue), value: hasFocus)
         .foregroundColor(hasFocus ? Asset.Colors.clooney.swiftUIColor : Asset.Colors.karl.swiftUIColor)
   }
}

private enum DataProvider {
   static let tabs: [CustomTabItem] = [
      CustomTabItem(label: L10n.onboarding1, image: Asset.Images.Images.onboarding1, tag: 0),
      CustomTabItem(label: L10n.onboarding2, image: Asset.Images.Images.onboarding2, tag: 1),
      CustomTabItem(label: L10n.onboarding3, image: Asset.Images.Images.onboarding3, tag: 2)
   ]
}
