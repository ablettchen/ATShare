# ATShare

[![CI Status](https://img.shields.io/travis/ablettchen@gmail.com/ATShare.svg?style=flat)](https://travis-ci.org/ablettchen@gmail.com/ATShare)
[![Version](https://img.shields.io/cocoapods/v/ATShare.svg?style=flat)](https://cocoapods.org/pods/ATShare)
[![License](https://img.shields.io/cocoapods/l/ATShare.svg?style=flat)](https://cocoapods.org/pods/ATShare)
[![Platform](https://img.shields.io/cocoapods/p/ATShare.svg?style=flat)](https://cocoapods.org/pods/ATShare)

## Intro

Platform supported

* Wechat
* WechatTimeline
* QQ
* QZone
* Sina

支持横屏、竖屏展示
```objectiveC
- (void)show:(nonnull id<ATShareResProtocol>)res
    selected:(nullable ATShareSocialBlock)selected
    finished:(nullable ATShareFinishedBlock)finished;

- (void)showLandscape:(nonnull id<ATShareResProtocol>)res
                selected:(nullable ATShareSocialBlock)selected
             finished:(nullable ATShareFinishedBlock)finished;
```

支持分享扩展
```objectiveC
- (void)addSocial:(nonnull id<ATSocialProtocol>)social;
```

支持不带UI界面
```objectiveC
- (void)shareTo:(nonnull id<ATSocialProtocol>)social
            res:(nonnull id<ATShareResProtocol>)res
       finished:(nullable ATShareFinishedBlock)finished;
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

ATShare is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ATShare'
```

## Author

ablett, ablett.chen@gmail.com

## License

ATShare is available under the MIT license. See the LICENSE file for more info.
