source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
inhibit_all_warnings!
use_frameworks!
install! 'cocoapods', :deterministic_uuids => false

workspace 'MyApp.xcworkspace'

target 'MyApp' do
    project 'MyApp'

    # Architect
    pod 'MVVM-Swift', '~> 1.1.0' # MVVM Architect for iOS Application.

    # UI
#    pod 'SVProgressHUD', '~> 2.1.2' # A clean and lightweight progress HUD for your iOS and tvOS app.
#    pod 'IQKeyboardManagerSwift', '~> 4.0.6' # Codeless drop-in universal library allows to prevent issues of keyboard sliding up and cover UITextField/UITextView. Neither need to write any code nor any setup required and much more.
#    pod 'LGSideMenuController', '~> 2.1.1' # iOS view controller, shows left and right views by pressing button or gesture.

    # Data
    #    pod 'RealmS', '~> 2.3.1' # Realm + ObjectMapper.
    pod 'ObjectMapper', '2.2.6' # Simple JSON Object mapping written in Swift. Please fix this version to 2.2.6 now.
#    pod 'SwiftyJSON', '~> 3.1.4' # The better way to deal with JSON data in Swift.

    # Network
    pod 'Alamofire', '~> 4.3.0' # Elegant HTTP Networking in Swift.
    pod 'AlamofireNetworkActivityIndicator', '~> 2.1.0' # Controls the visibility of the network activity indicator on iOS using Alamofire.

    # Utils
#    pod 'SwiftDate', '~> 4.1.2' # The best way to manage Dates and Timezones in Swift.
#    pod 'SAMKeychain', '~> 1.5.2' # Simple Objective-C wrapper for the keychain that works on Mac and iOS.
#    pod 'KeychainAccess', '~> 3.0.2' # Simple Swift wrapper for Keychain that works on iOS, watchOS, tvOS and macOS.
    pod 'SwiftLint', '~> 0.16.1' # A tool to enforce Swift style and conventions.
#    pod 'AsyncSwift', '~> 2.0.1' # Syntactic sugar in Swift for asynchronous dispatches in Grand Central Dispatch.
    pod 'SwiftUtils', '~> 2.1.1' # Swift shorthand.
#    pod 'SwiftyUserDefaults', '~> 3.0.1' # Modern Swift API for NSUserDefaults.
#    pod 'DeviceKit', '~> 1.2.3' # DeviceKit is a value-type replacement of UIDevice.

    # Crash reporting & beta deployment
#    pod 'Fabric', '~> 1.6.7'
#    pod 'Crashlytics', '~> 3.7.0'

    target 'MyAppTests' do
        inherit! :complete
    end
end
