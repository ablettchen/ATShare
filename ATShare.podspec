#
# Be sure to run `pod lib lint ATShare.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name                    = 'ATShare'
    s.version                 = '0.1.0'
    s.summary                 = '社会化分享'
    s.homepage                = 'https://github.com/ablettchen/ATShare'
    s.license                 = { :type => 'MIT', :file => 'LICENSE' }
    s.author                  = { 'ablett' => 'ablettchen@gmail.com' }
    s.source                  = { :git => 'https://github.com/ablettchen/ATShare.git', :tag => s.version.to_s }
    s.social_media_url        = 'https://twitter.com/ablettchen'
    s.ios.deployment_target   = '8.0'
    s.source_files            = 'ATShare/**/*.{h,m}'
    s.requires_arc            = true
    
    s.dependency 'ATCategories'
    
    # 友盟分享
    s.dependency 'UMCCommon'
    
    # 集成微信(精简版0.2M)
    s.dependency 'UMCShare/Social/ReducedWeChat'
    
    # 集成QQ/QZone/TIM(精简版0.5M)
    s.dependency 'UMCShare/Social/ReducedQQ'
    
    # 集成新浪微博(精简版1M)
    s.dependency 'UMCShare/Social/ReducedSina'
    
    
end

