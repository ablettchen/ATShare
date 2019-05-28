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

- (enum ATWebURLActionType)type {
    return kATWebURLActionTypeCopy;
}

- (NSString *)name {
    return @"复制链接";
}

- (NSString *)icon {
    return @"atshare_weburlaction_copy@2x.png";
}

- (NSString *)description {
    return at_urlActionDescription(self.type);
}

@end

@implementation ATWebURLActionRefresh
@synthesize name;
@synthesize icon;

- (enum ATWebURLActionType)type {
    return kATWebURLActionTypeRefresh;
}

- (NSString *)name {
    return @"刷新";
}

- (NSString *)icon {
    return @"atshare_weburlaction_refresh@2x.png";
}

- (NSString *)description {
    return at_urlActionDescription(self.type);
}

@end

@implementation ATWebURLActionOpenInSafari
@synthesize name;
@synthesize icon;

- (enum ATWebURLActionType)type {
    return kATWebURLActionTypeOpenInSafari;
}

- (NSString *)name {
    return @"在Safari中\n打开";
}

- (NSString *)icon {
    return @"atshare_weburlaction_openinsafari@2x.png";
}

- (NSString *)description {
    return at_urlActionDescription(self.type);
}

@end
