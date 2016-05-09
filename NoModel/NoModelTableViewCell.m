//
//  NoModelTableViewCell.m
//  NoModel
//
//  Created by 臧其龙 on 16/5/9.
//  Copyright © 2016年 臧其龙. All rights reserved.
//

#import "NoModelTableViewCell.h"

static NSString * const kFamilyNameKey = @"familyName";
static NSString * const kAgeKey = @"age";
static NSString * const kNameKey = @"name";

@interface NoModelTableViewCell ()
{
    
}
@end

@implementation NoModelTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.ageLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 20)];
        [self.contentView addSubview:self.ageLabel];
        
        self.nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 0, 100, 20)];
        [self.contentView addSubview:self.nameLabel];
        
        self.familyNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(200, 0, 100, 20)];
        [self.contentView addSubview:self.familyNameLabel];
    }
    
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)bindDataWithModelDictionary:(NSDictionary *)dict
{
    self.familyNameLabel.text = dict[kFamilyNameKey];
    self.ageLabel.text = [NSString stringWithFormat:@"%ld", [dict[kAgeKey] integerValue]];
    self.nameLabel.text = dict[kNameKey];
}

@end
