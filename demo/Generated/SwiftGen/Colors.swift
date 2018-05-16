// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
  import AppKit.NSColor
  internal typealias Color = NSColor
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIColor
  internal typealias Color = UIColor
#endif

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// swiftlint:disable operator_usage_whitespace
internal extension Color {
  convenience init(rgbaValue: UInt32) {
    let red   = CGFloat((rgbaValue >> 24) & 0xff) / 255.0
    let green = CGFloat((rgbaValue >> 16) & 0xff) / 255.0
    let blue  = CGFloat((rgbaValue >>  8) & 0xff) / 255.0
    let alpha = CGFloat((rgbaValue      ) & 0xff) / 255.0

    self.init(red: red, green: green, blue: blue, alpha: alpha)
  }
}
// swiftlint:enable operator_usage_whitespace

// swiftlint:disable identifier_name line_length type_body_length
internal struct ColorName {
  internal let rgbaValue: UInt32
  internal var color: Color { return Color(named: self) }

  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#a12741"></span>
  /// Alpha: 100% <br/> (0xa12741ff)
  internal static let badgeTextColor = ColorName(rgbaValue: 0xa12741ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#9f2943"></span>
  /// Alpha: 100% <br/> (0x9f2943ff)
  internal static let homeButtonBackgroundColor = ColorName(rgbaValue: 0x9f2943ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ffffff"></span>
  /// Alpha: 100% <br/> (0xffffffff)
  internal static let homeButtonTitleColor = ColorName(rgbaValue: 0xffffffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f5f5f5"></span>
  /// Alpha: 100% <br/> (0xf5f5f5ff)
  internal static let lightBackgroundColor = ColorName(rgbaValue: 0xf5f5f5ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#e6e5e2"></span>
  /// Alpha: 100% <br/> (0xe6e5e2ff)
  internal static let lightGrayBorderColor = ColorName(rgbaValue: 0xe6e5e2ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#e6e5e2"></span>
  /// Alpha: 100% <br/> (0xe6e5e2ff)
  internal static let lightGrayLineColor = ColorName(rgbaValue: 0xe6e5e2ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f2f2f2"></span>
  /// Alpha: 100% <br/> (0xf2f2f2ff)
  internal static let menuItemSeparatorColor = ColorName(rgbaValue: 0xf2f2f2ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#808080"></span>
  /// Alpha: 100% <br/> (0x808080ff)
  internal static let menuItemTitleColor = ColorName(rgbaValue: 0x808080ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f7e0df"></span>
  /// Alpha: 100% <br/> (0xf7e0dfff)
  internal static let pinkPastel = ColorName(rgbaValue: 0xf7e0dfff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#999999"></span>
  /// Alpha: 100% <br/> (0x999999ff)
  internal static let placeholderTextColor = ColorName(rgbaValue: 0x999999ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#666666"></span>
  /// Alpha: 100% <br/> (0x666666ff)
  internal static let searchTextColor = ColorName(rgbaValue: 0x666666ff)
}
// swiftlint:enable identifier_name line_length type_body_length

internal extension Color {
  convenience init(named color: ColorName) {
    self.init(rgbaValue: color.rgbaValue)
  }
}
