//
//  ATShareMessage.h
//  ATShare
//
//  Created by ablett on 2019/5/17.
//

#import <Foundation/Foundation.h>
#import "ATShareDefin.h"

NS_ASSUME_NONNULL_BEGIN

@interface ATShareMessage : NSObject

// URL : title desc thumb URL
// Image : title desc thumb Image (图片或者URL)
// Audio : title desc thumb URL
// Video : title desc thumb URL

@property (assign, nonatomic) enum ATShareResource resource;    ///< default is Url
@property (copy, nonatomic, nonnull) NSString *title;                    ///< 标题
@property (copy, nonatomic, nonnull) NSString *desc;                     ///< 描述
@property (copy, nonatomic, nonnull) id thumb;                           ///< 缩略图
@property (copy, nonatomic, nonnull) NSString *urlString;                ///< 资源链接

@end

NS_ASSUME_NONNULL_END