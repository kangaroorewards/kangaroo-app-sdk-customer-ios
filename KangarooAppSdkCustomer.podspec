Pod::Spec.new do |spec|
    spec.name                     = 'KangarooAppSdkCustomer'
    spec.version                  = '1.0.024'
    spec.summary                  = 'Kangaroo app SDK for building customer facing applications'
    spec.homepage                 = 'https://kangaroorewards.com/'
    spec.source                   = { :http => 'https://github.com/kangaroorewards/kangaroo-app-sdk-customer-ios/releases/download/1.0.024/KangarooAppSdkCustomer-v1.0.024.zip' }
    spec.author                      = { 'KangarooAppSdkCustomer' => 'paul@kangaroorewards.com' }
    spec.license                  = { :type => 'KANGAROO', :file => "LICENSE"  }
    spec.vendored_frameworks      = 'KangarooAppSdkCustomer.xcframework'
    spec.ios.deployment_target = '11.0'
end