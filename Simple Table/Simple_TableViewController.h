//
//  Simple_TableViewController.h
//  Simple Table
//
//  Created by 王 鹏 on 13-8-16.
//  Copyright (c) 2013年 王 鹏. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Simple_TableViewController : UIViewController
<UITableViewDelegate,UITableViewDataSource>{
    NSArray* listData;
}
@property (nonatomic,retain) NSArray*listData;
@end
