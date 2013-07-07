//
//  HangifyFeaturedCell.h
//  Hangify
//
//  Created by Josh Pearlstein on 7/3/13.
//
//

#import <UIKit/UIKit.h>

@interface HangifyFeaturedCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *main;
@property (strong, nonatomic) IBOutlet UILabel *name;
@property (strong, nonatomic) IBOutlet UILabel *location;
@property (strong, nonatomic) IBOutlet UILabel *time;
@property (strong, nonatomic) IBOutlet UILabel *attending;
@property (strong, nonatomic) IBOutlet UIImageView *profile;
@property (strong, nonatomic) IBOutlet UILabel *num_friends;
@property (strong, nonatomic) IBOutlet UIImageView *category_image;
@property (strong, nonatomic) IBOutlet UIImageView *status;

@end
