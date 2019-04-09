//
//  UnsplashLink.h
//  lemon
//
//  Created by lei-wen on 2019/3/25.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UnsplashLink : NSObject

@property (nonatomic, copy) NSString *download;
@property (nonatomic, copy) NSString *html;
@property (nonatomic, copy) NSString *self_;
@property (nonatomic, copy) NSString *photos;
@property (nonatomic, copy) NSString *likes;
@property (nonatomic, copy) NSString *related;

+ (UnsplashLink *)linkWithDic:(NSDictionary *)dic;

@end

NS_ASSUME_NONNULL_END
