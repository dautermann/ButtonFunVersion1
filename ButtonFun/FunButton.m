//
//  FunButton.m
//  ButtonFun
//
//  Created by Michael Dautermann on 1/7/13.
//  Copyright (c) 2013 Michael Dautermann. All rights reserved.
//

#import "FunButton.h"

@implementation FunButton

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

- (void) changeColor
{
    NSLog( @"change color?");
    self.backgroundColor = [FunButton randomColor];
}

+ (UIColor *) randomColor
{
    UIColor * colorToReturn;
    
    // okay, not really random but close enough... I'll put in "random()" later...
    uint32_t randomNumber = random();
    randomNumber = (randomNumber % 10); // a random number between 0 & 10
    
    switch(randomNumber)
    {
        case 0 :
            colorToReturn = [UIColor blueColor];
            break;
        case 1 :
            colorToReturn = [UIColor grayColor];
            break;
        case 2 :
            colorToReturn = [UIColor greenColor];
            break;
        case 3 :
            colorToReturn = [UIColor purpleColor];
            break;
        case 4 :
            colorToReturn = [UIColor redColor];
            break;
        case 5 :
            colorToReturn = [UIColor brownColor];
            break;
        case 6 :
            colorToReturn = [UIColor cyanColor];
            break;
        case 7 :
            colorToReturn = [UIColor orangeColor];
            break;
        case 8 :
            colorToReturn = [UIColor magentaColor];
            break;
        case 9 :
            colorToReturn = [UIColor whiteColor];
            break;
        default :
            colorToReturn = [UIColor blackColor];
            
    }
    return(colorToReturn);
}


@end
