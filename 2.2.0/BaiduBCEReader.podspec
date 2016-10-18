Pod::Spec.new do |s|

  s.name         = 'BaiduBCEReader'
  s.version      = '2.2.0'
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
  s.source   =   { :http => 'http://sdk.bce.baidu.com/media-sdk/Baidu-DocReader-SDK-iOS-2.2.0.zip?responseContentDisposition=attachment',:sha1 => "5098ad239668088d4e731033a293616dd8c13166"}

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
