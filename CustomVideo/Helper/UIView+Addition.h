//
//  UIView+Addition.h
//  Helper
//
//  Created by qianfeng on 15/10/14.
//  Copyright (c) 2015年 KaiQiangDong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Addition)

//宽
- (CGFloat)width;

//高
- (CGFloat)height;

//上
- (CGFloat)top;

//下
- (CGFloat)bottom;

//左
- (CGFloat)left;

//右
- (CGFloat)right;

//设置宽
- (void)setWidth:(CGFloat)width;

//设置高
- (void)setHeight:(CGFloat)height;

//设置x
- (void)setXOffset:(CGFloat)x;

//设置y
- (void)setYOffset:(CGFloat)y;

//设置Origin
- (void)setOrigin:(CGPoint)origin;

//设置size
- (void)setSize:(CGSize)size;


@end

