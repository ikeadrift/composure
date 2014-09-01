//
//  bouncyButton.m
//  socialthing
//
//  Created by Ben Zweig on 11/22/13.
//  Copyright (c) 2013 Ben Zweig. All rights reserved.
//

#import "bouncyButton.h"

@implementation bouncyButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)press
{
    [UIView animateWithDuration:0.05 animations:^(void){
        self.transform = (CGAffineTransformScale(self.transform,0.9,0.9));
    }];
}

- (void)unpress
{
    [UIView animateWithDuration:0.15 animations:^(void){
        self.transform = (CGAffineTransformScale(self.transform,1.22,1.22));
    }];
    [UIView animateWithDuration:0.1 animations:^(void){
        self.transform = CGAffineTransformIdentity;
    }];
}


-(void)startup3{
    [UIView animateWithDuration:0.15 animations:^(void){
        self.transform = (CGAffineTransformScale(self.transform,1.22,1.22));
    }];
    [UIView animateWithDuration:0.15 animations:^(void){
        self.transform = (CGAffineTransformScale(self.transform,0.9,0.9));
    }];

}

- (void)goDown{
    [UIView animateWithDuration:0.05 animations:^(void){
        self.transform = (CGAffineTransformMakeTranslation(0.0, -30.0));
    }];
}

- (void)goUp{
    [UIView animateWithDuration:0.05 animations:^(void){
        self.transform = (CGAffineTransformMakeTranslation(0.0, 30.0));
    }];
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
