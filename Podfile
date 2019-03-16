plugin 'cocoapods-static-frameworks'
plugin 'cocoapods-transitive-dependencies'

use_frameworks!

target 'Texture-Tutorial' do
    pod 'RxSwift', '~> 4.1.2'
    pod 'RxCocoa', '~> 4.1.2'
    pod 'NSObject+Rx', '~>2.0.0'
    pod 'Texture', '2.7'
    pod 'Texture/PINRemoteImage', '~> 2.7'
    pod 'RxCocoa-Texture', :git => 'git@github.com:ferico55/RxCocoa-Texture.git', :branch =>'2.2.2-tkpd'
end

post_install do |installer|
    
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            if target.name == "Texture"
                config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] = '$(inherited) YOGA=0'
            end
            
            if target.name == "RxCocoa-Texture"
                config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] = '$(inherited) YOGA=0'
            end
        end
    end
end
