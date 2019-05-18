//
//  ATShareRes.m
//  ATShare
//  https://github.com/ablettchen/ATShare
//
//  Created by ablett on 05/17/2019.
//  Copyright (c) 2019 ablett. All rights reserved.
//


#import "ATShareRes.h"

@implementation ATShareResWeb

@synthesize title;
@synthesize desc;
@synthesize thumb;
@synthesize urlString;

- (enum ATShareResType)type {
    return ATShareResTypeWeb;
}

- (NSString *)description {
    return at_shareResDescription(self.type);
}

@end

@implementation ATShareResImage

@synthesize title;
@synthesize desc;
@synthesize thumb;
@synthesize urlString;

- (enum ATShareResType)type {
    return ATShareResTypeImage;
}

- (NSString *)description {
    return at_shareResDescription(self.type);
}

@end

@implementation ATShareResAudio

@synthesize title;
@synthesize desc;
@synthesize thumb;
@synthesize urlString;

- (enum ATShareResType)type {
    return ATShareResTypeAudio;
}

- (NSString *)description {
    return at_shareResDescription(self.type);
}

@end

@implementation ATShareResVideo

@synthesize title;
@synthesize desc;
@synthesize thumb;
@synthesize urlString;

- (enum ATShareResType)type {
    return ATShareResTypeVideo;
}

- (NSString *)description {
    return at_shareResDescription(self.type);
}

@end
