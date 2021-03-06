//
//  ATViewController.m
//  ATShare
//  https://github.com/ablettchen/ATShare
//
//  Created by ablett on 05/17/2019.
//  Copyright (c) 2019 ablett. All rights reserved.
//


#import "ATViewController.h"
#import <ATShare/ATShare.h>
#import <ATCategories/ATCategories.h>
#import <UIView+ATToast.h>

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
        [view setTitle:@"share action" forState:UIControlStateNormal];
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
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)shareAction:(UIButton *)sender {
    
    ATShare *share = [ATShare new];
    [share addSocial:[ATSocialWechat new]];
    [share addSocial:[ATSocialWechatTimeline new]];
    
    ATShareResWeb *res = [ATShareResWeb new];
    res.title = @"ATShare";
    res.desc = @"Social share";
    res.thumb = [UIImage imageNamed:@"avatar"];
    res.urlString = @"https://github.com/ablettchen/ATShare";
    
    ATSocialWechat *wechat = [ATSocialWechat new];
    wechat.appKey = @"xxx";
    wechat.appSecret = @"xxx";
    wechat.redirectURL = @"http://mobile.umeng.com/social";
    
    [share shareTo:wechat res:res finished:^(NSError * _Nullable error, id<ATSocialProtocol>  _Nonnull social) {
        NSString *msg = [NSString stringWithFormat:@"%@", error?error.localizedDescription:@"succeed"];
        [self.view makeToast:msg];
    }];
    
}

@end
