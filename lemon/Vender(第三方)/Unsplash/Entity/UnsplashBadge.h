//
//  UnsplashBadge.h
//  lemon
//
//  Created by lei-wen on 2019/3/25.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UnsplashBadge : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, assign) bool primary;
@property (nonatomic, copy) NSString *slug;
@property (nonatomic, copy) NSString *link;

+ (UnsplashBadge *)badgeWithDic:(NSDictionary *)dic;

@end

NS_ASSUME_NONNULL_END
