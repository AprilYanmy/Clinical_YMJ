//
//  AuctionProjectTableViewCell.m
//  求美者端
//
//  Created by Smeb on 2016/11/30.
//  Copyright © 2016年 AnYanbo. All rights reserved.
//

#import "AuctionProjectTableViewCell.h"

@interface AuctionProjectTableViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *url;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *price;
@property (weak, nonatomic) IBOutlet UILabel *auctionPrice;

@property (strong, nonatomic) AuctionProjectInfo* auctionProjectInfo;
@property (strong, nonatomic) AuctionProUrlInfo* auctionProUrlInfo;

@end

@implementation AuctionProjectTableViewCell

+ (CGFloat)height
{
    return 125.0f;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setUpWithAuctionProjectInfo:(AuctionProjectInfo*)auctionProjectInfo
{
    @try
    {
        self.auctionProjectInfo = auctionProjectInfo;
        
        self.name.text = auctionProjectInfo.name;
        self.price.text = auctionProjectInfo.price;
        self.auctionPrice.text = auctionProjectInfo.fPrice;
        
//        NSURL* url = [NSURL URLWithString:auctionProjectInfo.url];
//        [self.url sd_setImageWithURL:url placeholderImage:DEFAULT_IMAGE];
    }
    @catch (NSException *exception)
    {
        
    }
}

- (void)setupWithInfo:(AuctionProjectInfo*)auctionProjectInfo orderInfo:(AuctionProUrlInfo*)auctionProUrlInfo
{
    
}


@end
