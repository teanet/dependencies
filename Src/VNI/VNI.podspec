load '../../Phasesfile'

Pod::Spec.new do |s|
  s.common_init "VNI"
  s.dependency "VNServices"
	s.dependency "VNReviews"
	s.dependency "VNSearch"

  # s.test_spec 'Tests' do |ts|
  #   ts.source_files = 'Test/Unit/*.swift'
  #   ts.requires_app_host = true
  #   ts.app_host_name = 'TestHost/App'
  # end
  # s.app_spec 'Demo' do |as|
  #   # as.dependency "VNSearchMocks"
  #   as.common_app_spec
  # end

end
