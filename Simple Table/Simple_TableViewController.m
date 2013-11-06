//
//  Simple_TableViewController.m
//  Simple Table
//
//  Created by 王 鹏 on 13-8-16.
//  Copyright (c) 2013年 王 鹏. All rights reserved.
//

#import "Simple_TableViewController.h"

@implementation Simple_TableViewController
@synthesize listData;
#pragma mark Table View Controller Methods
- (void)viewDidLoad
{
    NSArray *array = [[NSArray alloc]initWithObjects:@"Jack",@"Jerry",@"Tom",@"Tonny",@"Simon",@"Wonderful",@"Dell",@"Jack",@"Jerry",@"Tom",@"Tonny",@"Simon", nil];
    self.listData = array;
    [array release];
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOriention{
    return (interfaceOriention==UIInterfaceOrientationPortrait);
}
-(void)dReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
-(void)dealloc
{
    [listData release];
    [super dealloc];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.listData count];
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* SimpleTableIdentifier = @"SimpleTableIdentifier";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:SimpleTableIdentifier];
    if (cell==nil) {
       // cell = [[UITableViewCell alloc]initWithFrame:CGRectZero reuseIdentifier:SimpleTableIdentifier];
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimpleTableIdentifier];
    }
  //  NSUInteger row = [indexPath row];
    cell.textLabel.text = [listData objectAtIndex:indexPath.row];
    return cell;
}
@end
