Pod::Spec.new do |spec|
    spec.name                     = 'KangarooAppSdkCustomer'
    spec.version                  = '1.0.023'
    spec.summary                  = 'Kangaroo app SDK for building customer facing applications'
    spec.homepage                 = 'https://kangaroorewards.com/'
    spec.source                   = { :http => 'https://github.com/kangaroorewards/kangaroo-app-sdk-customer-ios/releases/download/1.0.023/KangarooAppSdkCustomer-v1.0.023.zip' }
    s.author                      = { 'KangarooAppSdkCustomer' => 'paul@kangaroorewards.com' }
    spec.license                  = { :type => 'BSD 3-Clause' }
    spec.vendored_frameworks      = 'KangarooAppSdkCustomer.xcframework'
end