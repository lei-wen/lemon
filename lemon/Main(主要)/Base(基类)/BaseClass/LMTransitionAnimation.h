//
//  LMTransitionAnimation.h
//  lemon
//
//  Created by lei-wen on 2019/3/21.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LMTransitionAnimation : NSObject<UIViewControllerAnimatedTransitioning>

@property (nonatomic, readwrite) UIRectEdge targetEdge;

- (instancetype)initWithTargetEdge:(UIRectEdge)targetEdge;

@end

NS_ASSUME_NONNULL_END
