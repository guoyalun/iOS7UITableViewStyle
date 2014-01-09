//
//  ForthTabViewController.m
//  iOS7UITableView
//
//  Created by zhoonchen on 14-1-7.
//  Copyright (c) 2014年 zhoon. All rights reserved.
//

#import "ForthTabViewController.h"
#import "CommonTableViewCell.h"
#import "CommonUI.h"

@interface ForthTabViewController ()

@end

@implementation ForthTabViewController

- (id)init
{
    return [self initWithStyle:UITableViewStylePlain];
}
- (id)initWithStyle:(UITableViewStyle)style
{
    if (self = [super initWithStyle:style]) {
        //
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)initNavigationItems
{
    [super initNavigationItems];
    self.title = @"TabBar - 4";
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 3;
    } else {
        return 5;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *FirstCellId = @"FirstCellId";
    CommonTableViewCell *cell = (CommonTableViewCell *)[tableView dequeueReusableCellWithIdentifier:FirstCellId];
    if (!cell) {
        cell = [[CommonTableViewCell alloc] initForTableView:tableView withReuseIdentifier:FirstCellId];
    }
    
    CommonTableViewCellPosition position = [self.tableView getCellPositionInTableView:self.tableView positionForRowAtIndexPath:indexPath];
    [cell setCellUIByPosition:position];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@ - %d", @"Most Viewed", indexPath.row];
    CELL_TEXTLABEL_FORMAT(cell.textLabel);
    
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
