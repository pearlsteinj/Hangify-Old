//
//  HangifyNowViewController.h
//  Hangify
//
//  Created by Josh Pearlstein on 7/2/13.
//
//

#import <UIKit/UIKit.h>

@interface HangifyNowViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
