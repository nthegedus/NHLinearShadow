##NHLinearShadow

With NHLinearShadow you can add a shadow like this:

<img width=237 src="http://s3.amazonaws.com/Start_Apps/shadow.png"/>

using a simple way!

You can add a near "Linear Shadow Color" choosing a color like `[UIColor redColor]` or you can use "Linear Shadow" based on a photo, this will find the average color and add a shadow 

##How to use?

### Installation with CocoaPods

I recommend you to take a look at [CocoaPods](http://cocoapods.org) and use it for dependency management in your iOS projects.

To add NHLinearShadow to your project it is necessary that the following lines are in your Podfile:

```ruby
platform :ios, '7.0'
pod "NHLinearShadow", "~> 1.0.1"
```

### Installation without CocoaPods

  1. Add the NHLinearShadow into your project
  2. Import NHLinearShadow, `#import "UIImageView+NHLinearShadow.h"`

  if you want use a Linear Shadow Color use this:
      `[UIImageView addShadowWithColor:"anUIColor"] inImageView:"anUIImageView"];`
  else if you want to use a Linear Shadow based on a photo use this:
     `[UIImageView addShadowWithAverageColorInImage:"anUIImage" inImageView:"anUIImageView"];`


##Example
<img width=640 src="http://s3.amazonaws.com/Start_Apps/example_NHLinearShadow.png"/>
