//
//  HangifyTabBarController.m
//  Hangify
//
//  Created by Josh Pearlstein on 7/2/13.
//
//

#import "HangifyTabBarController.h"
#import "HangifyNowViewController.h"
#import "HangifyDiscoverViewController.h"
#import "HangifyMeViewController.h"
#import "HangifyCreateViewController.h"
#import "HangifySettingsViewController.h"
@interface HangifyTabBarController ()

@end

@implementation HangifyTabBarController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(id)init{
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup {
    NSMutableArray *viewControllers = [NSMutableArray array];
    UIStoryboard *st = [UIStoryboard storyboardWithName:[[NSBundle mainBundle].infoDictionary objectForKey:@"UIMainStoryboardFile"] bundle:[NSBundle mainBundle]];
    HangifyNowViewController *viewController1 = [st instantiateInitialViewController];
    viewController1.title = @"1";
    [viewControllers addObject:viewController1];
    
    HangifyDiscoverViewController *viewController2 = [st instantiateInitialViewController];
    viewController2.title = @"2";
    [viewControllers addObject:viewController2];
    
    HangifyMeViewController *blankController = [st instantiateInitialViewController]; 
    [viewControllers addObject:blankController];
    
    HangifySettingsViewController *viewController3 = [st instantiateInitialViewController];
    viewController3.title = @"3";
    [viewControllers addObject:viewController3];
    
    HangifySettingsViewController *viewController4 = [st instantiateInitialViewController];
    viewController4.title = @"4";
    [viewControllers addObject:viewController4];
    
    self.viewControllers = viewControllers;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _tabBarView = [[[NSBundle mainBundle] loadNibNamed:@"HangifyTabBarController" owner:nil options:nil] lastObject]; // "MyTabBar" is the name of the .xib file
    _tabBarView.frame = CGRectMake(0.0,
                                   self.view.frame.size.height - _tabBarView.frame.size.height,
                                   _tabBarView.frame.size.width,
                                   _tabBarView.frame.size.height); // make it overlay your actual tab bar
    [self.view addSubview:_tabBarView];
    
    _btn1 = (UIButton *)[_tabBarView viewWithTag:1];
    [_btn1 addTarget:self action:@selector(processBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    _btn2 = (UIButton *)[_tabBarView viewWithTag:2];
    [_btn2 addTarget:self action:@selector(processBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    _btn3 = (UIButton *)[_tabBarView viewWithTag:3];
    [_btn3 addTarget:self action:@selector(processBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    _btn4 = (UIButton *)[_tabBarView viewWithTag:4];
    [_btn4 addTarget:self action:@selector(processBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    _btn5 = (UIButton *)[_tabBarView viewWithTag:5];
    [_btn5 addTarget:self action:@selector(processBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    _lastSender = _btn1;
    [self setSelectedViewController:self.viewControllers[0]]; // make first controller selected
}
- (void)processBtn:(UIButton *)sender {
    _lastSender = sender;
    [self setSelectedViewController:[self.viewControllers objectAtIndex:sender.tag - 1]];
}

- (void)setSelectedViewController:(UIViewController *)selectedViewController {
        for (UIButton *btn in [_tabBarView subviews]) {
            if ([btn isKindOfClass:[UIButton class]]) {
                if (btn == _lastSender) {
                    btn.selected = YES;
                }
                else {
                    btn.selected = NO;
                }
            }
        
    }
        [super setSelectedViewController:selectedViewController];

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
