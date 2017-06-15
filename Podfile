source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
inhibit_all_warnings!
use_frameworks!
install! 'cocoapods', :deterministic_uuids => false

workspace 'MyApp.xcworkspace'

target 'MyApp' do
    project 'MyApp'

    # Networking
    pod 'Alamofire', '~> 4.3.0'
    pod 'ObjectMapper', '2.2.6' # please fix this version
    pod 'SwiftyJSON', '~> 3.1.4'
    pod 'AlamofireNetworkActivityIndicator', '2.1.0'

    # Utils
    pod 'SwiftDate', '~> 4.1.2'
    pod 'SAMKeychain', '~> 1.5.1'
    pod 'SwiftLint', '~> 0.16.1'
    # pod 'AsyncSwift', '2.0.1'
    # pod 'SVProgressHUD', '~> 2.1.2'
    # pod 'IQKeyboardManagerSwift', '4.0.6'

    # Database
    pod 'RealmS', '~> 2.3.1'

    # MVVM
    pod 'MVVM-Swift'

    # Tracking crash and beta deploy
    # pod 'Fabric', '1.6.7'
    # pod 'Crashlytics', '3.7.0'

    target 'MyAppTests' do
        project 'MyApp'
        inherit! :search_paths
    end
end
