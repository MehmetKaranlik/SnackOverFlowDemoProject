// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {
  /// Account
  internal static let account = L10n.tr("Localizable", "account", fallback: "Account")
  /// By clicking 'Create account', I agree to SnackOverflow’s TOS and Privacy Policy.
  internal static let agreementText = L10n.tr("Localizable", "agreementText", fallback: "By clicking 'Create account', I agree to SnackOverflow’s TOS and Privacy Policy.")
  /// SnackOverFlow
  internal static let appName = L10n.tr("Localizable", "appName", fallback: "SnackOverFlow")
  /// Good afternoon.
  /// Take a break from work.
  internal static let bannerText = L10n.tr("Localizable", "bannerText", fallback: "Good afternoon.\nTake a break from work.")
  /// Create
  internal static let create = L10n.tr("Localizable", "create", fallback: "Create")
  /// Create account
  internal static let createAccount = L10n.tr("Localizable", "createAccount", fallback: "Create account")
  /// Get started
  internal static let getStarted = L10n.tr("Localizable", "getStarted", fallback: "Get started")
  /// Home
  internal static let home = L10n.tr("Localizable", "home", fallback: "Home")
  /// Market
  internal static let market = L10n.tr("Localizable", "market", fallback: "Market")
  /// Hand-pickle high quality snacks.
  internal static let onboarding1 = L10n.tr("Localizable", "onboarding1", fallback: "Hand-pickle high quality snacks.")
  /// Shop global. Mind-blownly affordable.
  internal static let onboarding2 = L10n.tr("Localizable", "onboarding2", fallback: "Shop global. Mind-blownly affordable.")
  /// Deliver on the
  /// promise of time.
  internal static let onboarding3 = L10n.tr("Localizable", "onboarding3", fallback: "Deliver on the\npromise of time.")
  /// Recent users' bundles
  internal static let recentUserBundles = L10n.tr("Localizable", "recentUserBundles", fallback: "Recent users' bundles")
  /// Sign up with Email
  internal static let signInNormal = L10n.tr("Localizable", "signInNormal", fallback: "Sign up with Email")
  /// Wishlist
  internal static let wishlist = L10n.tr("Localizable", "wishlist", fallback: "Wishlist")
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

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
