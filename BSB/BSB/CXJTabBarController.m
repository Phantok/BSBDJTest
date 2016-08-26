//
//  CXJTabBarController.m
//  BSB
//
//  Created by 崔雪娇 on 16/8/26.
//  Copyright © 2016年 Phant. All rights reserved.
//

#import "CXJTabBarController.h"

@interface CXJTabBarController ()

@end

@implementation CXJTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIViewController *vc01 = [[UIViewController alloc] init];
    vc01.view.backgroundColor = [UIColor yellowColor];
    vc01.tabBarItem.title = @"精华";
    vc01.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
    vc01.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_essence_click_icon"];
    NSMutableDictionary * attrs = [[NSMutableDictionary alloc] init];
    NSMutableDictionary * seletedAttrs = [[NSMutableDictionary alloc] init];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    seletedAttrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    [vc01.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [vc01.tabBarItem setTitleTextAttributes:seletedAttrs forState:UIControlStateSelected];
    [self addChildViewController:vc01];
    
    UIViewController *vc02 = [[UIViewController alloc] init];
    vc02.view.backgroundColor = [UIColor greenColor];
    vc02.tabBarItem.title = @"新帖";
    vc02.tabBarItem.image = [UIImage imageNamed:@"tabBar_new_icon"];
    UIImage *image = [UIImage imageNamed:@"tabBar_new_click_icon"];
//    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [vc02.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [vc02.tabBarItem setTitleTextAttributes:seletedAttrs forState:UIControlStateSelected];
    vc02.tabBarItem.selectedImage = image;
    [self addChildViewController:vc02];
    
    UIViewController *vc03 = [[UIViewController alloc] init];
    vc03.view.backgroundColor = [UIColor blueColor];
    vc03.tabBarItem.title = @"关注";
    vc03.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon"];
    vc03.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_friendTrends_click_icon"];
    [vc03.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [vc03.tabBarItem setTitleTextAttributes:seletedAttrs forState:UIControlStateSelected];
    [self addChildViewController:vc03];
    
    UIViewController *vc04 = [[UIViewController alloc] init];
    vc04.view.backgroundColor = [UIColor redColor];
    vc04.tabBarItem.title = @"我的";
    vc04.tabBarItem.image = [UIImage imageNamed:@"tabBar_me_icon"];
    vc04.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_me_click_icon"];
    [vc04.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [vc04.tabBarItem setTitleTextAttributes:seletedAttrs forState:UIControlStateSelected];
    [self addChildViewController:vc04];
}



@end
