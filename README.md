# ATShare

[![CI Status](https://img.shields.io/travis/ablettchen@gmail.com/ATShare.svg?style=flat)](https://travis-ci.org/ablettchen@gmail.com/ATShare)
[![Version](https://img.shields.io/cocoapods/v/ATShare.svg?style=flat)](https://cocoapods.org/pods/ATShare)
[![License](https://img.shields.io/cocoapods/l/ATShare.svg?style=flat)](https://cocoapods.org/pods/ATShare)
[![Platform](https://img.shields.io/cocoapods/p/ATShare.svg?style=flat)](https://cocoapods.org/pods/ATShare)


## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

```objectiveC
#import <ATShare/ATShare.h>
```

```objectiveC
ATShare *share = [ATShare new];
[share addSocial:[ATSocialWechat new]];
[share addSocial:[ATSocialWechatTimeline new]];

ATShareResWeb *res = [ATShareResWeb new];
res.title = @"ATShare";
res.desc = @"Social share";
res.thumb = [UIImage imageNamed:@"avatar"];
res.urlString = @"https://github.com/ablettchen/ATShare";

ATSocialWechat *wechat = [ATSocialWechat new];
wechat.appKey = @"xxxxxx";
wechat.appSecret = @"xxxxxx";
wechat.redirectURL = @"http://mobile.umeng.com/social";

[share shareTo:wechat res:res finished:^(NSError * _Nullable error, id<ATSocialProtocol>  _Nonnull social) {
    NSString *msg = [NSString stringWithFormat:@"%@", error?error.localizedDescription:@"succeed"];
    [self.view makeToast:msg];
}];
```

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
