//
//  UnsplashProfileImage.h
//  lemon
//
//  Created by lei-wen on 2019/3/25.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UnsplashProfileImage : NSObject

@property (nonatomic, copy) NSString *small;
@property (nonatomic, copy) NSString *medium;
@property (nonatomic, copy) NSString *large;

+ (UnsplashProfileImage *)profileImageWithDic:(NSDictionary *)dic;

@end

NS_ASSUME_NONNULL_END
