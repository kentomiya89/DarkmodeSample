// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

// swiftlint:disable sorted_imports
import Foundation
import UIKit

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Storyboard Scenes

// swiftlint:disable explicit_type_interface identifier_name line_length type_body_length type_name
internal enum StoryboardScene {
  internal enum CgColorSetting: StoryboardType {
    internal static let storyboardName = "CgColorSetting"

    internal static let initialScene = InitialSceneType<UIKit.UIViewController>(storyboard: CgColorSetting.self)
  }
  internal enum HowToColorSetting: StoryboardType {
    internal static let storyboardName = "HowToColorSetting"

    internal static let initialScene = InitialSceneType<UIKit.UIViewController>(storyboard: HowToColorSetting.self)
  }
  internal enum HowToColorSettingInCode: StoryboardType {
    internal static let storyboardName = "HowToColorSettingInCode"

    internal static let initialScene = InitialSceneType<HowColorSettingInCodeViewController>(storyboard: HowToColorSettingInCode.self)
  }
  internal enum ImageSetting: StoryboardType {
    internal static let storyboardName = "ImageSetting"

    internal static let initialScene = InitialSceneType<UIKit.UIViewController>(storyboard: ImageSetting.self)
  }
  internal enum LaunchScreen: StoryboardType {
    internal static let storyboardName = "LaunchScreen"

    internal static let initialScene = InitialSceneType<UIKit.UIViewController>(storyboard: LaunchScreen.self)
  }
  internal enum SampleListTop: StoryboardType {
    internal static let storyboardName = "SampleListTop"

    internal static let initialScene = InitialSceneType<UIKit.UINavigationController>(storyboard: SampleListTop.self)
  }
}
// swiftlint:enable explicit_type_interface identifier_name line_length type_body_length type_name

// MARK: - Implementation Details

internal protocol StoryboardType {
  static var storyboardName: String { get }
}

internal extension StoryboardType {
  static var storyboard: UIStoryboard {
    let name = self.storyboardName
    return UIStoryboard(name: name, bundle: BundleToken.bundle)
  }
}

internal struct SceneType<T: UIViewController> {
  internal let storyboard: StoryboardType.Type
  internal let identifier: String

  internal func instantiate() -> T {
    let identifier = self.identifier
    guard let controller = storyboard.storyboard.instantiateViewController(withIdentifier: identifier) as? T else {
      fatalError("ViewController '\(identifier)' is not of the expected class \(T.self).")
    }
    return controller
  }
}

internal struct InitialSceneType<T: UIViewController> {
  internal let storyboard: StoryboardType.Type

  internal func instantiate() -> T {
    guard let controller = storyboard.storyboard.instantiateInitialViewController() as? T else {
      fatalError("ViewController is not of the expected class \(T.self).")
    }
    return controller
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    Bundle(for: BundleToken.self)
  }()
}
// swiftlint:enable convenience_type
