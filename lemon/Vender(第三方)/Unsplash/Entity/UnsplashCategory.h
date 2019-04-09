//
//  UnsplashCategory.h
//  lemon
//
//  Created by lei-wen on 2019/3/25.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UnsplashLink;

NS_ASSUME_NONNULL_BEGIN

@interface UnsplashCategory : NSObject

@property (nonatomic, copy) NSString *id;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *photo_count;
@property (nonatomic, strong) UnsplashLink *unsplashLink;

+ (UnsplashCategory *)categoryWithDic:(NSDictionary *)dic;

@end

NS_ASSUME_NONNULL_END
