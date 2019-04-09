//
//  UnsplashStruct.h
//  lemon
//
//  Created by lei-wen on 2019/3/21.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^InFoRequestResultCompletionBlock)(id _Nullable obj, NSError *_Nullable error);
typedef void (^DataRequestResultCompletionBlock)(NSArray *_Nullable data, NSError *_Nullable error);

NS_ASSUME_NONNULL_BEGIN

@interface UnsplashStruct : NSObject

typedef NS_ENUM(NSInteger, UnsplashPhotoSortType) {
    UnsplashPhotoSortTypeLatest,
    UnsplashPhotoSortTypeOldest,
    UnsplashPhotoSortTypePopular,
};

+ (NSString *)UnsplashPhotoSortTypeName:(UnsplashPhotoSortType)sortType;
@end

NS_ASSUME_NONNULL_END
