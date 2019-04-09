//
//  MainTabBarController.h
//  lemon
//
//  Created by lei-wen on 2019/3/21.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import <UIKit/UIKit.h>
#if __has_include(<CYLTabBarController/CYLTabBarController.h>)
#import <CYLTabBarController/CYLTabBarController.h>
#else
#import "CYLTabBarController.h"
#endif
NS_ASSUME_NONNULL_BEGIN

@interface MainTabBarController : CYLTabBarController

@end

NS_ASSUME_NONNULL_END
