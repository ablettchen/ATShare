//
//  ATViewController.m
//  ATShare
//  https://github.com/ablettchen/ATShare
//
//  Created by ablett on 05/17/2019.
//  Copyright (c) 2019 ablett. All rights reserved.
//


#import "ATViewController.h"
#import "ATShare.h"
#import <ATCategories/ATCategories.h>

@interface ATViewController ()

@end

@implementation ATViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"ATShare";
    
    UIButton *shareBtn = ({
        UIButton *view = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.view addSubview:view];
        view.at_size = CGSizeMake(200, 50);
        view.at_top = self.view.at_top + (IS_IPHONE_X?135:100);
        view.at_centerX = self.view.at_centerX;
        [view setTitle:@"share with UI" forState:UIControlStateNormal];
        [view setTitleColor:UIColorHex(0x0067d8FF) forState:UIControlStateNormal];
        [view setTitleColor:UIColorHex(0xFFFFFFFF) forState:UIControlStateHighlighted];
        [view setBackgroundImage:[UIImage imageWithColor:UIColorHex(0x0067d8FF)] forState:UIControlStateHighlighted];
        [view.titleLabel setFont:[UIFont systemFontOfSize:18]];
        view.layer.borderWidth = 1.f;
        view.layer.borderColor = UIColorHex(0x0067d8FF).CGColor;
        view.layer.cornerRadius = 5.f;
        view.layer.masksToBounds = YES;
        view;
    });
    
    UIButton *noUIBtn = ({
        UIButton *view = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.view addSubview:view];
        view.at_size = shareBtn.at_size;
        view.at_top = shareBtn.at_bottom + 40;
        view.at_centerX = shareBtn.at_centerX;
        [view setTitle:@"share without UI" forState:UIControlStateNormal];
        [view setTitleColor:UIColorHex(0x0067d8FF) forState:UIControlStateNormal];
        [view setTitleColor:UIColorHex(0xFFFFFFFF) forState:UIControlStateHighlighted];
        [view setBackgroundImage:[UIImage imageWithColor:UIColorHex(0x0067d8FF)] forState:UIControlStateHighlighted];
        [view.titleLabel setFont:[UIFont systemFontOfSize:18]];
        view.layer.borderWidth = 1.f;
        view.layer.borderColor = UIColorHex(0x0067d8FF).CGColor;
        view.layer.cornerRadius = 5.f;
        view.layer.masksToBounds = YES;
        view;
    });
    
    
    [shareBtn addTarget:self action:@selector(shareAction:) forControlEvents:UIControlEventTouchUpInside];
    [noUIBtn addTarget:self action:@selector(shareNoUIAction:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)shareAction:(UIButton *)sender {
    
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

- (void)shareNoUIAction:(UIButton *)sender {
    
    ATShare *share = [ATShare new];
    [share addSocial:[ATShareSocialWechat new]];
    [share addSocial:[ATShareSocialWechatTimeline new]];
    
    ATShareMessage *sm = [ATShareMessage new];
    sm.title = @"ATShare";
    sm.desc = @"分享模块封装";
    sm.thumb = @"https://github.com/ablettchen/ATPopupView/blob/master/Example/images/popup.gif";
    sm.urlString = @"https://github.com/ablettchen/ATShare";
    
    [share shareToQQ:sm];
    
}


@end
