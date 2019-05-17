//
//  ATShareProtocol.h
//  ATShare
//
//  Created by ablett on 2019/5/17.
//

#import <Foundation/Foundation.h>
#import "ATShareDefin.h"

NS_ASSUME_NONNULL_BEGIN

@protocol ATShareSocialProtocol <NSObject>

@property (assign, nonatomic, readonly) ATShareSocial social;
@property (copy, nonatomic, readonly) NSString *name;
@property (copy, nonatomic, readonly) NSString *icon;
@property (assign, nonatomic, readonly) BOOL enable;

@end



NS_ASSUME_NONNULL_END
