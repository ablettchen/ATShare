//
//  ATShareResProtocol.h
//  ATShare
//
//  Created by ablett on 2019/5/18.
//  Copyright © 2019 ablett. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ATShareDefine.h"

NS_ASSUME_NONNULL_BEGIN

@protocol ATShareResProtocol <NSObject>

@property (assign, nonatomic, readonly) enum ATShareResType type;        ///< default is Url
@property (copy, nonatomic, nonnull) NSString *title;                    ///< 标题
@property (copy, nonatomic, nonnull) NSString *desc;                     ///< 描述
@property (copy, nonatomic, nonnull) id thumb;                           ///< 缩略图
@property (copy, nonatomic, nonnull) NSString *urlString;                ///< 资源链接

@end

NS_ASSUME_NONNULL_END
