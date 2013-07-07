//
//  HangifyEventsCell.h
//  Hangify
//
//  Created by Josh Pearlstein on 7/3/13.
//
//

#import <UIKit/UIKit.h>

@interface HangifyEventsCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *image_1;
@property (strong, nonatomic) IBOutlet UILabel *attending_1;
@property (strong, nonatomic) IBOutlet UILabel *time_1;

@property (strong, nonatomic) IBOutlet UILabel *event_name_1;
@property (strong, nonatomic) IBOutlet UILabel *distance_1;
@property (strong, nonatomic) IBOutlet UIImageView *image_2;
@property (strong, nonatomic) IBOutlet UILabel *event_name_2;
@property (strong, nonatomic) IBOutlet UILabel *attending_2;
@property (strong, nonatomic) IBOutlet UILabel *time_2;
@property (strong, nonatomic) IBOutlet UILabel *distance_2;
@end
