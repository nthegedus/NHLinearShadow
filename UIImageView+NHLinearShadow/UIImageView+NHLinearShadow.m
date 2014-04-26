//
//  UIImageView+NHLinearShadow.m
//  NHLinearShadow
//
//  Created by Nathan Hegedus on 27/02/14.
//  Updated by Luciano Nascimento on 26/04/14.
//  Copyright (c) 2014 Nathan Hegedus. All rights reserved.
//

#import "UIImageView+NHLinearShadow.h"

@implementation UIImageView (NHLinearShadow)

#pragma mark - Public Static Methods
+ (void)addShadowWithAverageColorInImage:(UIImage *)image inImageView:(UIImageView *)imageView
{
    [self addGradientLayer:imageView color:[self averageColor:image]];
}

+ (void)addShadowWithColor:(UIColor *)color inImageView:(UIImageView *)imageView
{
    [self addGradientLayer:imageView color:color];
}

#pragma mark - Private Static Methods
+ (void)addGradientLayer:(UIImageView *)imageView color:(UIColor *)color
{
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = imageView.layer.bounds;
    
    CGFloat hue, saturation, brightness;
    [color getHue:&hue saturation:&saturation brightness:&brightness alpha:nil];
    
    gradientLayer.colors = [NSArray arrayWithObjects:
                            (id)[UIColor colorWithHue:hue saturation:saturation brightness:0.3 alpha:0].CGColor,
                            (id)[UIColor colorWithHue:hue saturation:saturation brightness:0.3 alpha:0].CGColor,
                            (id)[UIColor colorWithHue:hue saturation:saturation brightness:0.3 alpha:0.9].CGColor,
                            (id)[UIColor colorWithHue:hue saturation:saturation brightness:0.3 alpha:0.95].CGColor,
                            nil];
    
    gradientLayer.locations = [NSArray arrayWithObjects:
                               [NSNumber numberWithFloat:0],
                               [NSNumber numberWithFloat:0.3],
                               [NSNumber numberWithFloat:0.8],
                               [NSNumber numberWithFloat:1.0],
                               nil];
    
    imageView.layer.sublayers = nil;
    [imageView.layer addSublayer:gradientLayer];
}

+ (UIColor *)averageColor:(UIImage *)image
{
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    unsigned char rgba[4];
    CGContextRef context = CGBitmapContextCreate(rgba, 1, 1, 8, 4, colorSpace, kCGImageAlphaPremultipliedLast | kCGBitmapByteOrder32Big);
    
    CGContextDrawImage(context, CGRectMake(0, 0, 1, 1), [image CGImage]);
    CGColorSpaceRelease(colorSpace);
    CGContextRelease(context);
    
    if(rgba[3] > 0) {
        CGFloat alpha = ((CGFloat)rgba[3])/255.0;
        CGFloat multiplier = alpha/255.0;
        return [UIColor colorWithRed:((CGFloat)rgba[0])*multiplier
                               green:((CGFloat)rgba[1])*multiplier
                                blue:((CGFloat)rgba[2])*multiplier
                               alpha:alpha];
    }
    else {
        return [UIColor colorWithRed:((CGFloat)rgba[0])/255.0
                               green:((CGFloat)rgba[1])/255.0
                                blue:((CGFloat)rgba[2])/255.0
                               alpha:((CGFloat)rgba[3])/255.0];
    }
}

@end
