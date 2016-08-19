Pod::Spec.new do |s|

  s.name         = 'BaiduBCEReader'
  s.version      = '2.0.0'
  s.summary      = 'Baidu BCE iOS Reader SDK'
  s.homepage     = 'https://cloud.baidu.com/doc/DOC/iOSDocReaderSDK.html'
  s.license      = {
    :type => 'Proprietary',
    :text => <<-LICENSE
         Copyright (c) 2016 Baidu.com, Inc. All Rights Reserved.
         LICENSE
  }
  s.description  = <<-DESC
    Baidu BCE iOS Reader SDK supoort iOS 7.0 and later,
  DESC
  s.author   =   { 'bailu07' => 'bailu07@baidu.com' }
  s.source   =   { :git => 'https://github.com/baidubce/bce-reader-ios.git',:tag=>s.version.to_s}
  s.ios.deployment_target = '7.0'
  s.requires_arc = true
  s.vendored_frameworks = 'framework/DocPlayerSDK.framework'
  s.resource_bundle = {'DocPlayerSDK' => 'framework/DocPlayerSDK.framework/Resources/DocPlayerSDK.Bundle/*'}
  s.frameworks = 'Foundation', 'Webkit'
  s.libraries = 'z'
end
