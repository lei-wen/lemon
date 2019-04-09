//
//  UnsplashUrl.h
//  lemon
//
//  Created by lei-wen on 2019/3/22.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UnsplashUrl : NSObject

@property (nonatomic, copy) NSString *full;
@property (nonatomic, copy) NSString *raw;
@property (nonatomic, copy) NSString *regular;
@property (nonatomic, copy) NSString *small;
@property (nonatomic, copy) NSString *thumb;

+ (UnsplashUrl *)urlWithDic:(NSDictionary *)dic;

@end

NS_ASSUME_NONNULL_END
