//
//  ViewController.m
//  NoModel
//
//  Created by 臧其龙 on 16/5/9.
//  Copyright © 2016年 臧其龙. All rights reserved.
//

#import "ViewController.h"
#import "NoModelTableViewCell.h"
#import "User.h"
#import "NSObject+PropertyList.h"

@interface ViewController ()<UITableViewDataSource>
{
    User *userInfo;
}
@property (weak, nonatomic) IBOutlet UITableView *mTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    userInfo = [[User alloc] init];
    userInfo.age = @(17);
    userInfo.name = @"John";
    userInfo.familyName = @"White";
    
    [self.mTableView registerClass:[NoModelTableViewCell class] forCellReuseIdentifier:@"kCellID"];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource 

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NoModelTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"kCellID"];
    [cell bindDataWithModelDictionary:[userInfo generateModelDictionary]];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

@end
