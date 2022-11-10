// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit
#elseif os(iOS)
  import UIKit
#elseif os(tvOS) || os(watchOS)
  import UIKit
#endif
#if canImport(SwiftUI)
  import SwiftUI
#endif

// Deprecated typealiases
@available(*, deprecated, renamed: "ColorAsset.Color", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetColorTypeAlias = ColorAsset.Color
@available(*, deprecated, renamed: "ImageAsset.Image", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetImageTypeAlias = ImageAsset.Image

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
internal enum Asset {
  internal enum Colors {
    internal static let accentColor = ColorAsset(name: "AccentColor")
    internal static let black30 = ColorAsset(name: "Black%30")
    internal static let clooney = ColorAsset(name: "Clooney")
    internal static let cornflowerBlue = ColorAsset(name: "Cornflower-Blue")
    internal static let deepSkyBlue = ColorAsset(name: "Deep-Sky-Blue")
    internal static let gandalf = ColorAsset(name: "Gandalf")
    internal static let green = ColorAsset(name: "Green")
    internal static let karlPressed = ColorAsset(name: "Karl-Pressed")
    internal static let karl = ColorAsset(name: "Karl")
    internal static let lightOrange = ColorAsset(name: "Light-Orange")
    internal static let orange = ColorAsset(name: "Orange")
    internal static let peachPressed = ColorAsset(name: "Peach-Pressed")
    internal static let peach = ColorAsset(name: "Peach")
    internal static let pureBlack = ColorAsset(name: "PureBlack")
    internal static let snowman = ColorAsset(name: "Snowman")
    internal static let teflon = ColorAsset(name: "Teflon")
    internal static let white = ColorAsset(name: "White")
    internal static let whiteyPressed = ColorAsset(name: "Whitey-Pressed")
    internal static let whitey = ColorAsset(name: "Whitey")
    internal static let yellow = ColorAsset(name: "Yellow")
  }
  internal enum Images {
    internal enum Icons {
      internal static let add = ImageAsset(name: "add")
      internal static let appLogo = ImageAsset(name: "appLogo")
      internal static let apple = ImageAsset(name: "apple")
      internal static let bundle = ImageAsset(name: "bundle")
      internal static let check = ImageAsset(name: "check")
      internal static let checkEmpty = ImageAsset(name: "checkEmpty")
      internal static let close = ImageAsset(name: "close")
      internal static let create = ImageAsset(name: "create")
      internal static let detail = ImageAsset(name: "detail")
      internal static let email = ImageAsset(name: "email")
      internal static let expandRight = ImageAsset(name: "expandRight")
      internal static let facebook = ImageAsset(name: "facebook")
      internal static let goBack = ImageAsset(name: "goBack")
      internal static let google = ImageAsset(name: "google")
      internal static let hide = ImageAsset(name: "hide")
      internal static let home = ImageAsset(name: "home")
      internal static let info = ImageAsset(name: "info")
      internal static let loading = ImageAsset(name: "loading")
      internal static let location = ImageAsset(name: "location")
      internal static let lock = ImageAsset(name: "lock")
      internal static let market = ImageAsset(name: "market")
      internal static let saved = ImageAsset(name: "saved")
      internal static let search = ImageAsset(name: "search")
      internal static let snack = ImageAsset(name: "snack")
      internal static let speed = ImageAsset(name: "speed")
      internal static let star = ImageAsset(name: "star")
      internal static let time = ImageAsset(name: "time")
      internal static let toBeSaved = ImageAsset(name: "toBeSaved")
      internal static let token = ImageAsset(name: "token")
      internal static let user = ImageAsset(name: "user")
      internal static let warning = ImageAsset(name: "warning")
      internal static let wishlist = ImageAsset(name: "wishlist")
    }
    internal enum Images {
      internal static let drink = ImageAsset(name: "Drink")
      internal static let onboarding1 = ImageAsset(name: "Onboarding-1")
      internal static let onboarding2 = ImageAsset(name: "Onboarding-2")
      internal static let onboarding3 = ImageAsset(name: "Onboarding-3")
      internal static let banner = ImageAsset(name: "banner")
      internal static let tea = ImageAsset(name: "tea")
    }
  }
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

internal final class ColorAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Color = NSColor
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Color = UIColor
  #endif

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  internal private(set) lazy var color: Color = {
    guard let color = Color(asset: self) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }()

  #if os(iOS) || os(tvOS)
  @available(iOS 11.0, tvOS 11.0, *)
  internal func color(compatibleWith traitCollection: UITraitCollection) -> Color {
    let bundle = BundleToken.bundle
    guard let color = Color(named: name, in: bundle, compatibleWith: traitCollection) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }
  #endif

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
  internal private(set) lazy var swiftUIColor: SwiftUI.Color = {
    SwiftUI.Color(asset: self)
  }()
  #endif

  fileprivate init(name: String) {
    self.name = name
  }
}

internal extension ColorAsset.Color {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  convenience init?(asset: ColorAsset) {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSColor.Name(asset.name), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
internal extension SwiftUI.Color {
  init(asset: ColorAsset) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle)
  }
}
#endif

internal struct ImageAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Image = UIImage
  #endif

  @available(iOS 8.0, tvOS 9.0, watchOS 2.0, macOS 10.7, *)
  internal var image: Image {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    let name = NSImage.Name(self.name)
    let image = (bundle == .main) ? NSImage(named: name) : bundle.image(forResource: name)
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }

  #if os(iOS) || os(tvOS)
  @available(iOS 8.0, tvOS 9.0, *)
  internal func image(compatibleWith traitCollection: UITraitCollection) -> Image {
    let bundle = BundleToken.bundle
    guard let result = Image(named: name, in: bundle, compatibleWith: traitCollection) else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }
  #endif

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
  internal var swiftUIImage: SwiftUI.Image {
    SwiftUI.Image(asset: self)
  }
  #endif
}

internal extension ImageAsset.Image {
  @available(iOS 8.0, tvOS 9.0, watchOS 2.0, *)
  @available(macOS, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init?(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = BundleToken.bundle
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSImage.Name(asset.name))
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
internal extension SwiftUI.Image {
  init(asset: ImageAsset) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle)
  }

  init(asset: ImageAsset, label: Text) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle, label: label)
  }

  init(decorative asset: ImageAsset) {
    let bundle = BundleToken.bundle
    self.init(decorative: asset.name, bundle: bundle)
  }
}
#endif

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
