//
//  ViewController.m
//  ImageBrower
//
//  Created by ajilisiwei on 3/27/16.
//  Copyright © 2016 ajilisiwei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController
-(void)viewDidLoad{
    [super viewDidLoad];
    NSString *path=[[NSBundle mainBundle] pathForResource:@"Comment" ofType:@"plist"];
    _comment=[NSArray arrayWithContentsOfFile:path];
    self.labImageComment.text=_comment[0];
    UIImage *image=[UIImage imageNamed:@"0.jpg"];
    self.ImageView.image=image;
}

- (IBAction)btnSet:(id)sender {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    CGPoint tempCenter=self.settingView.center;
    if (self.settingView.frame.origin.y==self.view.frame.size.height) {
        tempCenter.y-=self.settingView.frame.size.height;
    }else{
        tempCenter.y+=self.settingView.frame.size.height;
    }
    self.settingView.center=tempCenter;
    [UIView commitAnimations];
}

- (IBAction)valueChanged:(UISlider *)sender {
    int imageno= (int)sender.value;
    self.labImageNo.text=[NSString stringWithFormat:@"%i/7",imageno+1];
    self.labImageComment.text=_comment[imageno];
    self.ImageView.image=[UIImage imageNamed:[NSString stringWithFormat:@"%i.jpg",imageno]];
}
- (IBAction)neightmode:(UISwitch *)sender {
    if (sender.on) {
        self.view.backgroundColor=[UIColor grayColor];
    }else{
        self.view.backgroundColor=[UIColor whiteColor];
    }
}

- (IBAction)imageSiez:(UISlider *)sender {
    self.ImageView.transform=CGAffineTransformMakeScale(sender.value, sender.value);
}
@end
