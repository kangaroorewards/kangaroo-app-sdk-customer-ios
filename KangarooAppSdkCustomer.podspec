Pod::Spec.new do |spec|
    spec.name                     = 'KangarooAppSdkCustomer'
    spec.version                  = '1.0'
    spec.homepage                 = 'https://kangaroorewards.com/'
    spec.authors                  = ''
    spec.license                  = ''
    spec.summary                  = 'Kangaroo app SDK for building customer facing applications'
    spec.vendored_frameworks      = 'build/cocoapods/framework/KangarooAppSdkCustomer.framework'
    spec.libraries                = 'c++'
    spec.source                   = { :http => 'https://github.com/kangaroorewards/kangaroo-app-sdk-customer-ios/releases/download/1.0.0/KangarooAppSdkCustomer.xcframework.zip' }



    spec.pod_target_xcconfig = {
        'KOTLIN_PROJECT_PATH' => ':kangaroo-app-sdk-customer',
        'PRODUCT_MODULE_NAME' => 'KangarooAppSdkCustomer',
    }

    spec.script_phases = [
        {
            :name => 'Build KangarooAppSdkCustomer',
            :execution_position => :before_compile,
            :shell_path => '/bin/sh',
            :script => <<-SCRIPT
                if [ "YES" = "$OVERRIDE_KOTLIN_BUILD_IDE_SUPPORTED" ]; then
                  echo "Skipping Gradle build task invocation due to OVERRIDE_KOTLIN_BUILD_IDE_SUPPORTED environment variable set to \"YES\""
                  exit 0
                fi
                set -ev
                REPO_ROOT="$PODS_TARGET_SRCROOT"
                "$REPO_ROOT/../gradlew" -p "$REPO_ROOT" $KOTLIN_PROJECT_PATH:syncFramework \
                    -Pkotlin.native.cocoapods.platform=$PLATFORM_NAME \
                    -Pkotlin.native.cocoapods.archs="$ARCHS" \
                    -Pkotlin.native.cocoapods.configuration="$CONFIGURATION"
            SCRIPT
        }
    ]
                
end