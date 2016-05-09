//
//  NoModelTableViewCell.h
//  NoModel
//
//  Created by 臧其龙 on 16/5/9.
//  Copyright © 2016年 臧其龙. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NoModelTableViewCell : UITableViewCell

@property (nonatomic, strong) UILabel *familyNameLabel;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *ageLabel;


- (void)bindDataWithModelDictionary:(NSDictionary *)dict;

@end
