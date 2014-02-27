//
//  UIImageView+NHLinearShadow.m
//  NHLinearShadow
//
//  Created by Nathan Hegedus on 27/02/14.
//  Copyright (c) 2014 Nathan Hegedus. All rights reserved.
//

#import "UIImageView+NHLinearShadow.h"

@implementation UIImageView (NHLinearShadow)

#pragma mark - Public Static Methods
+(void)addShadowWithAverageColorInImage:(UIImage *)image inImageView:(UIImageView *)imageView{
    
    [self prepareGradientInImageView:imageView andImage:image];

}

+(void)addShadowWithColor:(UIColor *)color inImageView:(UIImageView *)imageView{
    
    [self prepareGradientInImageView:imageView andColor:color];
    
}

#pragma mark - Private Static Methods

+(void)prepareGradientInImageView:(UIImageView *)imageView andImage:(UIImage *)image{
    
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = imageView.layer.bounds;

    gradientLayer.colors = [NSArray arrayWithObjects:
                            (id)[UIColor colorWithWhite:1.0f alpha:0.1f].CGColor,
                            (id)[self averageColorInImage:image].CGColor,
                            nil];

    [self addGradient:gradientLayer inImageView:imageView];

}

+(void)prepareGradientInImageView:(UIImageView *)imageView andColor:(UIColor *)color{
    
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = imageView.layer.bounds;

    gradientLayer.colors = [NSArray arrayWithObjects:
                            (id)[UIColor colorWithWhite:1.0f alpha:0.1f].CGColor,
                            (id)color.CGColor,
                            nil];

    [self addGradient:gradientLayer inImageView:imageView];
    
    
    
}

+(void)addGradient:(CAGradientLayer *)gradientLayer inImageView:(UIImageView *)imageView{
    
    gradientLayer.locations = [NSArray arrayWithObjects:
                               [NSNumber numberWithFloat:0.0f],
                               [NSNumber numberWithFloat:1.0f],
                               nil];
    
    gradientLayer.cornerRadius = imageView.layer.cornerRadius - 3;
    
    if (!imageView.layer.sublayers) {
        [imageView.layer addSublayer:gradientLayer];
    }

    
}

+(UIColor *)averageColorInImage:(UIImage *)imageA{
    
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    unsigned char rgba[4];
    CGContextRef context = CGBitmapContextCreate(rgba, 1, 1, 8, 4, colorSpace, kCGImageAlphaPremultipliedLast | kCGBitmapByteOrder32Big);
    
    CGContextDrawImage(context, CGRectMake(0, 0, 1, 1), [imageA CGImage]);
    CGColorSpaceRelease(colorSpace);
    CGContextRelease(context);
    
    CGFloat alpha = .7;
    CGFloat multiplier = alpha/255.0;
    return [UIColor colorWithRed:((CGFloat)rgba[0])*multiplier
                           green:((CGFloat)rgba[1])*multiplier
                            blue:((CGFloat)rgba[2])*multiplier
                           alpha:alpha];
    
}


@end
