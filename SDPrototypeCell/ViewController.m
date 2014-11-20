//
//  ViewController.m
//  SDPrototypeCell
//
//  Created by shay deacy on 12/11/2014.
//  Copyright (c) 2014 shay deacy. All rights reserved.
//

#import "ViewController.h"
#import "ShayTableViewCell.h"

@interface ViewController () <UITableViewDataSource>


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.tweets = @[@{@"userName": @"@shay", @"realName":@"seamus",@"tweetText" : @"this is a tweeeeeeeeet", @"tweetImage" : @"aah.jpg"},
                    @{@"userName": @"@shay", @"realName":@"seamus",@"tweetText" : @"this is a tweeeeeeeeet", @"tweetImage" : @"cell.png"},
                    @{@"userName": @"@shay", @"realName":@"seamus",@"tweetText" : @"this is a tweeeeeeeeet", @"tweetImage" : @"aah.jpg"},
                    @{@"userName": @"@shay", @"realName":@"seamus",@"tweetText" : @"this is a tweeeeeeeeet", @"tweetImage" : @"aah.jpg"},
                    @{@"userName": @"@shay", @"realName":@"seamus",@"tweetText" : @"this is a tweeeeeeeeet", @"tweetImage" : @"aah.jpg"}
                    ];

}





-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.tweets count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ShayTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ShayTableViewCellIdentifier"];
    NSDictionary *tweetsDict = self.tweets[indexPath.row];
    cell.realNameLabel.text = tweetsDict[@"realName"];
    cell.userNameLabel.text = tweetsDict[@"userName"];
    cell.tweetTextField.text = tweetsDict[@"tweetText"];
    cell.tweetImageView.image = [UIImage imageNamed:tweetsDict[@"tweetImage"]];
    return cell;
}

- (IBAction)leftNavButton:(id)sender {
    NSLog(@"left clicked");
}

- (IBAction)rightNavButton:(id)sender {
        NSLog(@"right clicked");
}
@end

