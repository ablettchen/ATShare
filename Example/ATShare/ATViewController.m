//
//  ATViewController.m
//  ATShare
//
//  Created by ablettchen@gmail.com on 05/17/2019.
//  Copyright (c) 2019 ablettchen@gmail.com. All rights reserved.
//

#import "ATViewController.h"
#import "ATShare.h"

@interface ATViewController ()

@end

@implementation ATViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    ATShare *share = [ATShare new];
    [share addSocial:[ATShareSocialWechat new]];
    [share addSocial:[ATShareSocialWechatTimeline new]];
    
    ATShareMessage *sm = [ATShareMessage new];
    sm.title = @"ATShare";
    sm.desc = @"分享模块封装";
    sm.thumb = @"https://github.com/ablettchen/ATPopupView/blob/master/Example/images/popup.gif";
    sm.urlString = @"https://github.com/ablettchen/ATShare";
    
    [share show:sm selected:nil finished:^(NSError * _Nullable error, id<ATShareSocialProtocol>  _Nonnull social) {
        NSString *msg;
        if (error) {
             msg = [NSString stringWithFormat:@"%@ 分享失败，%@(%ld)", \
                    at_shareSocialDescription(social.social),\
                    error.localizedDescription, (long)error.code];
        }else {
            msg = [NSString stringWithFormat:@"%@ 分享成功", \
                   at_shareSocialDescription(social.social)];
        }
        NSLog(@"%@", msg);
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
