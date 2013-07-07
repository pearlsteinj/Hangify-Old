//
//  HangifyTabBarController.h
//  Hangify
//
//  Created by Josh Pearlstein on 7/2/13.
//
//

#import <UIKit/UIKit.h>

@interface HangifyTabBarController : UITabBarController
@property (strong, nonatomic) UIButton *btn1;
@property (strong, nonatomic) UIButton *btn2;
@property (strong, nonatomic) UIButton *btn3;
@property (strong, nonatomic) UIButton *btn4;
@property (strong, nonatomic) UIButton *btn5;
@property (weak, nonatomic) UIButton *lastSender;
@property (strong, nonatomic) UIView *tabBarView;
@end
