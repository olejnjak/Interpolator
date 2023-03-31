Pod::Spec.new do |s|
    s.name             = 'Interpolator'
    s.version          = '0.1'
    s.summary          = 'Swift implementation of Android interpolators'
    s.description      = <<-DESC
    Interpolator adds interpolators from Android to your Swift apps
    DESC
    s.homepage         = 'https://github.com/olejnjak/Interpolator'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Jakub Olejník' => 'olejnjak@gmail.com' }
    s.social_media_url = "https://twitter.com/olejnjak"
    s.source           = { :git => 'https://github.com/olejnjak/Interpolator.git', :tag => s.version.to_s }
    s.ios.deployment_target = '9.0'
    s.source_files     = 'Interpolator/*.swift'
    s.swift_version    = '5.0'
end
