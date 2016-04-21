//
//  ViewController.h
//  ImageBrower
//
//  Created by ajilisiwei on 3/27/16.
//  Copyright © 2016 ajilisiwei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSArray *_comment;
}
@property (weak, nonatomic) IBOutlet UIImageView *ImageView;
- (IBAction)btnSet:(id)sender;
- (IBAction)valueChanged:(UISlider *)sender;
@property (weak, nonatomic) IBOutlet UILabel *labImageNo;
@property (weak, nonatomic) IBOutlet UILabel *labImageComment;
@property (weak, nonatomic) IBOutlet UIView *settingView;
- (IBAction)neightmode:(UISwitch *)sender;
- (IBAction)imageSiez:(UISlider *)sender;


@end

