//
//  ATShare.m
//  ATShare
//  https://github.com/ablettchen/ATShare
//
//  Created by ablett on 05/17/2019.
//  Copyright (c) 2019 ablett. All rights reserved.
//


#import "ATShare.h"


@interface ATShare ()
@property (strong, nonatomic) NSMutableArray <id<ATShareSocialProtocol>> *socials;

@end
@implementation ATShare

#pragma mark - lifecycle

- (instancetype)init {
    self = [super init];
    if (!self) return nil;
    _socials = [NSMutableArray array];
    return self;
}

#pragma mark - privite


#pragma mark - public

- (void)addSocial:(__kindof NSObject<ATShareSocialProtocol> *)social {
    if ([self.socials containsObject:social]) {return;}
    [self.socials addObject:social];
}

- (void)show:(nonnull ATShareMessage *)message
    selected:(nullable ATShareSocialBlock)selected
    finished:(nullable ATShareFinishedBlock)finished {
    
}

- (void)showLandscape:(nonnull ATShareMessage *)message
             selected:(nullable ATShareSocialBlock)selected
             finished:(nullable ATShareFinishedBlock)finished {
    
}

- (void)hide {
    
}

- (void)shareToWechat:(nonnull ATShareMessage *)message {
    
}

- (void)shareToWechatTimeline:(nonnull ATShareMessage *)message {
    
}

- (void)shareToQQ:(nonnull ATShareMessage *)message {
    
}

- (void)shareToQZone:(nonnull ATShareMessage *)message {
    
}

- (void)shareToSina:(nonnull ATShareMessage *)message {
    
}

@end
