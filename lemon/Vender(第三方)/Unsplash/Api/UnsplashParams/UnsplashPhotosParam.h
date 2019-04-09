//
//  UnsplashPhotosParam.h
//  lemon
//
//  Created by lei-wen on 2019/3/21.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UnsplashPhotosParam : NSObject

@property (nonatomic, assign) UnsplashPhotoSortType sortType;
@property (nonatomic, assign) NSInteger page;
@property (nonatomic, assign) NSInteger perPage;

- (UnsplashPhotosParam *)initWithPage:(NSInteger)page perPage:(NSInteger)perPage sortType:(UnsplashPhotoSortType)sortType;

@end

NS_ASSUME_NONNULL_END
