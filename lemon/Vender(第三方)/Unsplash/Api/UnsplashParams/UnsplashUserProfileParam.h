//
//  UnsplashUserProfileParam.h
//  lemon
//
//  Created by lei-wen on 2019/3/25.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UnsplashUserProfileParam : NSObject

@property (nonatomic, copy) NSString *username;
@property (nonatomic, assign) NSInteger w;
@property (nonatomic, assign) NSInteger h;

- (UnsplashUserProfileParam *)initWithUserName:(NSString *)username w:(NSInteger)w h:(NSInteger)h;

@end

NS_ASSUME_NONNULL_END
