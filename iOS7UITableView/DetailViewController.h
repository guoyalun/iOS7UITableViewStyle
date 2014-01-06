//
//  DetailViewController.h
//  iOS7UITableView
//
//  Created by zhoonchen on 14-1-6.
//  Copyright (c) 2014年 zhoon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
