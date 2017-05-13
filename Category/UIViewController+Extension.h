//
//  UIViewController+Extension.h
//  Test
//
//  Created by liwei on 2017/5/13.
//  Copyright © 2017年 liwei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Extension)

/*
 
 create navigationBar with titleImage
 
 default size :CGSizeMake(30,30)
 
 default alpha is 1.0
 
 default barColor is [UIColor whiteColor]
 
 **/
- (void)createNavigationBarWithTitleView:(NSString *)titleImage;

- (void)createNavigationBarWithTitleView:(NSString *)titleImage barColor:(UIColor *)color size:(CGSize)size alpha:(CGFloat)alpha;


/*
 create navigation bar with leftBtn and rightBtn
 
 leftBtn and rightBtn can be nil
 
 alpha is navigationBar opaue , default is 1.0
 
 **/
- (void)createNavigationBarWithLeftItem:(NSString *)leftImage rightItem:(NSString *)rightImage barColor:(UIColor *)barColor alpha:(CGFloat)alpha;














/*
 
 carray out when did click leftItem
 
 you can do your own needs in this code
 
 default: pop NavigationController in this code
 
 **/
- (void)didClickLeftItem:(UIButton *)leftItem;

/*
 carray out when did click rightItem
 
 you can do your own needs in this code
 
 **/
- (void)didClickRightItem:(UIButton *)rightItem;


@end
