//
//  ViewController.m
//  ButtonFun
//
//  Created by Michael Dautermann on 1/7/13.
//  Copyright (c) 2013 Michael Dautermann. All rights reserved.
//

#import "ViewController.h"
#import "FunButton.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CGRect frameRect = self.view.frame;
    
    for( CGFloat heightIndex = 0.0; heightIndex < frameRect.size.height; heightIndex+=40.0f )
    {
        for( CGFloat widthIndex = 0.0; widthIndex < frameRect.size.width; widthIndex+=40.0f )
        {
            // yes, it's true... I am using UIButton here.
            //
            //
            // if I had a bit more time (beyond the 30 minutes I was given, my "bonus points"
            // attempt here would be to add a gesture recognizer to convert the touchPoint coordinates
            // into the correct imageView index, which I would then swap colors on
            FunButton * imageButton = [FunButton buttonWithType: UIButtonTypeCustom];
            if(imageButton)
            {
                imageButton.backgroundColor = [FunButton randomColor];
                CGRect buttonRect = CGRectMake(widthIndex, heightIndex, 40.f, 40.0f);
                [imageButton setFrame: buttonRect];
                [imageButton addTarget:imageButton action:@selector(changeColor) forControlEvents:UIControlEventTouchDown];
                [self.view addSubview: imageButton];
            }
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
