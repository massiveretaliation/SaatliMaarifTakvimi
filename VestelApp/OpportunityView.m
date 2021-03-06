//
//  OpportunityView.m
//  VestelApp
//
//  Created by KORAY on 1/2/14.
//  Copyright (c) 2014 Koray Gültürk. All rights reserved.
//

#import "OpportunityView.h"

@implementation OpportunityView
@synthesize opportunityIcon;
@synthesize title;
@synthesize description;

-(void)didMoveToSuperview
{
    [self setTitle];
    [self setDescription];
}

-(void)setTitle
{
    opportunityIcon         = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"history.png"]];
    [self addSubview:opportunityIcon];
    
    opportunityIcon.frame   = CGRectMake(10, 10, 20, 20);
    
    title                   = [[UILabel alloc]initWithFrame:CGRectMake(35, 5, 130, 30)];
    title.text              = @"Günün Fırsatı";
    title.font              = [UIFont fontWithName:@"Verdana" size:(10)];
    
    [self addSubview:title];
    
    CGRect line             = CGRectMake(10, 35, 140, 1);
    UIView *lineView        = [[UIView alloc]initWithFrame:line];
    lineView.backgroundColor= [UIColor grayColor];
    [self addSubview:lineView];
}

-(void) setDescription
{
    description             = [[UILabel alloc] initWithFrame:CGRectMake(15, 20, 140, 70)];
    description.textColor   = [UIColor grayColor];
    description.font        = [UIFont fontWithName:@"Verdana" size:(8)];
    description.lineBreakMode   = NSLineBreakByWordWrapping;
    description.numberOfLines   = 0;
    description.text        = @"Yıkama ve kurutma \ntek makinede.\nSadece 999 TL'ye";
    
    [self addSubview:description];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
