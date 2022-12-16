# Uncomment the next line to define a global platform for your project
platform :ios, '12.0'

abstract_target 'Deps' do
  
pod 'VNCommon',             :path => 'Src/Common'
pod 'VNServices',             :path => 'Src/Services'
pod 'VNServicesInterfaces',   :path => 'Src/Services'
pod 'VNServicesMocks',        :path => 'Src/Services'
pod 'VNSearch',               :path => 'Src/Search'
pod 'VNSearchInterfaces',     :path => 'Src/Search'
pod 'VNSearchMocks',          :path => 'Src/Search'
pod 'VNReviews',               :path => 'Src/Reviews'
pod 'VNReviewsInterfaces',     :path => 'Src/Reviews'
pod 'VNReviewsMocks',          :path => 'Src/Reviews'

pod 'Sourcery'
end

target '__demodeps' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  pod 'VNI',                    :path => 'Src/VNI'

  target '__demodepsTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target '__demodepsUITests' do
    # Pods for testing
  end

end


# Change default pods builds folder to avoid conflict with v4ios builds folder
post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '5.0'
        end
    end

end
