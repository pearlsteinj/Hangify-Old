//
//  HangifyNowViewController.m
//  Hangify
//
//  Created by Josh Pearlstein on 7/2/13.
//
//

#import "HangifyNowViewController.h"
#import "HangifyFeaturedCell.h"
#import "HangifyEventsCell.h"
@interface HangifyNowViewController ()

@end

@implementation HangifyNowViewController
@synthesize tableView;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    tableView.dataSource = self;
    tableView.delegate = self;
    [tableView reloadData];
    UINib *featured_nib = [UINib nibWithNibName:@"HangifyFeaturedCell" bundle:nil];
    [tableView registerNib:featured_nib forCellReuseIdentifier:@"featured"];
    UINib *events_nib = [UINib nibWithNibName:@"HangifyEventsCell" bundle:nil];
    [tableView registerNib:events_nib forCellReuseIdentifier:@"event"];    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    // If you're serving data from an array, return the length of the array:
    return 5;
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Here");
    NSString *CellIdentifier;
    if(indexPath.row ==0){
        CellIdentifier = @"featured";
    }
    else {
        CellIdentifier = @"event";
    }
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        }

       return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.row == 0){
        return 245;
    }
    else{
        return 217;
    }
}
@end
