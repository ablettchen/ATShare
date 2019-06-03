//
//  ATWebURLActions.m
//  ATShare
//
//  Created by ablett on 2019/5/28.
//

#import "ATWebURLActions.h"

@implementation ATWebURLActionCopy
@synthesize name;
@synthesize icon;
@synthesize enable;
@synthesize action;

- (instancetype)init {
    self = [super init];
    if (!self) return nil;
    self.name = @"复制链接";
    self.icon = atshare_imageNamed(@"atshare_weburlaction_copyurl@2x.png");
    self.enable = YES;
    return self;
}

- (enum ATWebURLActionType)type {
    return kATWebURLActionTypeCopy;
}

- (NSString *)description {
    return at_urlActionDescription(self.type);
}

@end

@implementation ATWebURLActionRefresh
@synthesize name;
@synthesize icon;
@synthesize enable;
@synthesize action;

- (instancetype)init {
    self = [super init];
    if (!self) return nil;
    self.name = @"刷新";
    self.icon = atshare_imageNamed(@"atshare_weburlaction_refresh@2x.png");
    self.enable = YES;
    return self;
}

- (enum ATWebURLActionType)type {
    return kATWebURLActionTypeRefresh;
}

- (NSString *)description {
    return at_urlActionDescription(self.type);
}

@end

@implementation ATWebURLActionOpenInSafari
@synthesize name;
@synthesize icon;
@synthesize enable;
@synthesize action;

- (instancetype)init {
    self = [super init];
    if (!self) return nil;
    self.name = @"在Safari中\n打开";
    self.icon = atshare_imageNamed(@"atshare_weburlaction_openinsafari@2x.png");
    self.enable = YES;
    return self;
}

- (enum ATWebURLActionType)type {
    return kATWebURLActionTypeOpenInSafari;
}

- (NSString *)description {
    return at_urlActionDescription(self.type);
}

@end
