//
//  ViewController.m
//  NHLinearShadow
//
//  Created by Nathan Hegedus - Mac Mini on 27/02/14.
//  Copyright (c) 2014 Nathan Hegedus. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+NHLinearShadow.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *photo1ImageView;
@property (weak, nonatomic) IBOutlet UIImageView *photo2ImageView;
@property (weak, nonatomic) IBOutlet UIImageView *photo3ImageView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [UIImageView addShadowWithAverageColorInImage:_photo1ImageView.image inImageView:_photo1ImageView];
    [UIImageView addShadowWithColor:[UIColor purpleColor] inImageView:_photo2ImageView];
    [UIImageView addShadowWithAverageColorInImage:_photo3ImageView.image inImageView:_photo3ImageView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
