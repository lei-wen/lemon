//
//  UnsplashCategoryPhotosParam.h
//  lemon
//
//  Created by lei-wen on 2019/3/21.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UnsplashCategoryPhotosParam : NSObject

@property (nonatomic, copy) NSString *id;
@property (nonatomic, assign) NSInteger page;
@property (nonatomic, assign) NSInteger perPage;

- (UnsplashCategoryPhotosParam *)initWithID:(NSString *)id page:(NSInteger)page perPage:(NSInteger)perPage;

@end

NS_ASSUME_NONNULL_END
