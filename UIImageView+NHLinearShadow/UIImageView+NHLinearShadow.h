//
//  UIImageView+NHLinearShadow.h
//  NHLinearShadow
//
//  Created by Nathan Hegedus on 27/02/14.
//  Copyright (c) 2014 Nathan Hegedus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (NHLinearShadow)

//Send the image to get the avarege color and create the shadow, send to the ImageView to add the shadow
+(void)addShadowWithAverageColorInImage:(UIImage *)image inImageView:(UIImageView *)imageView;

//Send the color you want to add on UIImageView
+(void)addShadowWithColor:(UIColor *)color inImageView:(UIImageView *)imageView;

@end
