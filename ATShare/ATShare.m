//
//  ATShare.m
//  ATShare
//
//  Created by ablett on 2019/5/17.
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

- (void)shareToWechat {
    
}

- (void)shareToWechatTimeline {
    
}

- (void)shareToQQ {
    
}

- (void)shareToQZone {
    
}

- (void)shareToSina {
    
}

@end
