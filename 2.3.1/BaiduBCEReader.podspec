Pod::Spec.new do |s|

  s.name         = 'BaiduBCEReader'
  s.version      = '2.3.1'
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
  s.author   =   { 'Baidu Cloud Multimedia Team' => 'bce-multimedia@baidu.com' }
  s.source   =   { :http => 'http://sdk.bce.baidu.com/media-sdk/Baidu-DocReader-SDK-iOS-2.3.1.zip?responseContentDisposition=attachment',:sha1 => "d17905ad17a3545ce1b0804c007a806401f70905"}

  s.prepare_command = <<-CMD
    BASEPATH="${PWD}"

    rm -rf "$BASEPATH/framework"
    mkdir -p "$BASEPATH/framework"

    ls -al $SDKPATH
    # copy framework
    cp -R BCEDocumentReader.framework "${BASEPATH}/framework/"
  CMD

  s.ios.deployment_target = '7.0'
  s.requires_arc = true
  s.vendored_frameworks = 'framework/BCEDocumentReader.framework'
  s.resource_bundle = {'DocPlayerSDK' => 'framework/BCEDocumentReader.framework/Resources/DocPlayerSDK.bundle/*'}
  s.frameworks = 'Foundation', 'Webkit'
  s.dependency 'ZipArchive', '~>1.0'
  s.libraries = 'z'
end
