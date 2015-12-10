//
//  RoomListViewController.m
//  MyClassroom
//
//  Created by Hind Almushigih on 8/12/15.
//  Copyright © 2015 Gannon University. All rights reserved.
//

#import "RoomListViewController.h"

@interface RoomListViewController ()

@end

@implementation RoomListViewController
{
    //NSArray *tableData;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableData = [NSArray arrayWithObjects:@"Room : 101", @"Room : 102", @"Room : 103", @"Room : 104", @"Room : 105", @"Room : 106", @"Room : 107", @"Room : 108", @"Room : 109", @"Room : 110",nil];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [self.tableData objectAtIndex:indexPath.row];
    return cell;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
