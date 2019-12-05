source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
inhibit_all_warnings!
use_frameworks!
install! 'cocoapods', :deterministic_uuids => false

workspace 'MyApp.xcworkspace'

target 'MyApp' do
    project 'MyApp'

    # Architect
    pod 'MVVM-Swift' # MVVM Architect for iOS Application.

    # UI
    # pod 'SVProgressHUD', '2.2.5' # A clean and lightweight progress HUD for your iOS and tvOS app.
    # pod 'IQKeyboardManagerSwift', '5.0.7' # Codeless drop-in universal library allows to prevent issues of keyboard sliding up and cover UITextField/UITextView. Neither need to write any code nor any setup required and much more.
    # pod 'LGSideMenuController', '2.1.1' # iOS view controller, shows left and right views by pressing button or gesture.

    # Data
    pod 'ObjectMapper' # Simple JSON Object mapping written in Swift. Please fix this version to 2.2.6 now.
    # pod 'SwiftyJSON', '4.0.0' # The better way to deal with JSON data in Swift.

    # Network
    pod 'Alamofire' # Elegant HTTP Networking in Swift.
    pod 'AlamofireNetworkActivityIndicator' # Controls the visibility of the network activity indicator on iOS using Alamofire.

    # Utils
    pod 'SwiftLint' # A tool to enforce Swift style and conventions.
    pod 'SwiftDate', '5.1.0' # The best way to manage Dates and Timezones in Swift.
    pod 'SwifterSwift', '4.6.0'

    # pod 'AsyncSwift', '2.0.4' # Syntactic sugar in Swift for asynchronous dispatches in Grand Central Dispatch.
    # pod 'SwiftyUserDefaults', '3.0.1' # Modern Swift API for NSUserDefaults.
    # pod 'DeviceKit', '1.5.0' # DeviceKit is a value-type replacement of UIDevice.
    # pod 'SAMKeychain', '1.5.3' # Simple Objective-C wrapper for the keychain that works on Mac and iOS.
    # pod 'KeychainAccess', '3.1.0' # Simple Swift wrapper for Keychain that works on iOS, watchOS, tvOS and macOS.

target 'MyAppTests' do
    inherit! :complete
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            if config.name == 'Release'
                config.build_settings['SWIFT_OPTIMIZATION_LEVEL'] = '-Owholemodule'
            end
            config.build_settings['SWIFT_VERSION'] = '5.0'
        end
        end
    end
end
