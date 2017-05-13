//
//  UIViewController+Extension.m
//  Test
//
//  Created by liwei on 2017/5/13.
//  Copyright © 2017年 liwei. All rights reserved.
//

#import "UIViewController+Extension.h"
#import "NSObject+Extension.h"

#define kNavigationBarWidth self.view.frame.size.width
#define kNavigationBarHeight 64
#define kStatusBarHeigth 20

@implementation UIViewController (Extension)

/*
 
 create navigationBar with titleImage
 
 default size :CGSizeMake(30,30)
 
 **/

- (void)createNavigationBarWithTitleView:(NSString *)titleImage {

    [self createNavigationBarWithTitleView:titleImage barColor:[UIColor whiteColor] size:CGSizeMake(30, 30) alpha:1.0];
}
- (void)createNavigationBarWithTitleView:(NSString *)titleImage barColor:(UIColor *)color size:(CGSize)size alpha:(CGFloat)alpha{
    UIView *navigationBar = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kNavigationBarWidth, kNavigationBarHeight)];
    navigationBar.backgroundColor = [UIColor clearColor];
    
    UIView *opaueView = [[UIView alloc] initWithFrame:navigationBar.bounds];
    opaueView.alpha = alpha;
    opaueView.backgroundColor = color;
    [navigationBar addSubview:opaueView];
    
    
    UIImageView *titleImageView = [[UIImageView alloc] init];
    titleImageView.center = CGPointMake(navigationBar.center.x, kStatusBarHeigth + (kNavigationBarHeight - kStatusBarHeigth) * 0.5);
   
    titleImageView.bounds = CGRectMake(0, 0, size.width, size.height);
    
    titleImageView.image = [UIImage imageNamed:titleImage];
    
    [navigationBar addSubview:titleImageView];
    
    [self.view addSubview:navigationBar];
}



- (void)createNavigationBarWithLeftItem:(NSString *)leftImage rightItem:(NSString *)rightImage barColor:(UIColor *)barColor alpha:(CGFloat)alpha {

    UIView *navigationBar = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kNavigationBarWidth, kNavigationBarHeight)];
    navigationBar.backgroundColor = [UIColor clearColor];
    
    UIView *opaueView = [[UIView alloc] initWithFrame:navigationBar.bounds];
    opaueView.backgroundColor = barColor;
    opaueView.alpha = alpha;
    [navigationBar addSubview:navigationBar];
    
    if (![leftImage objectIsEmpty]) {
        
    }
    
    if (![rightImage objectIsEmpty]) {
        
    }
    [self.view addSubview:navigationBar];
}





@end
