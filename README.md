##NHLinearShadow

With NHLinearShadow you can add a shadow like this:

<img width=237 src="http://s3.amazonaws.com/Start_Apps/shadow.png"/>

using a simple way!

You can add a near "Linear Shadow Color" choosing a color like `[UIColor redColor]` or you can use "Linear Shadow" based on a photo, this will find the average color and add a shadow 

##How to use?
  1. Add the NHLinearShadow into your project
  2. Import NHLinearShadow, `#import "UIImageView+NHLinearShadow.h"`

  if you want use a Linear Shadow Color use this:
      `[UIImageView addShadowWithColor:"anUIColor"] inImageView:"anUIImageView"];`
  else if you want to use a Linear Shadow based on a photo use this:
     `[UIImageView addShadowWithAverageColorInImage:"anUIImage" inImageView:"anUIImageView"];`


##Example
<img width=640 src="http://s3.amazonaws.com/Start_Apps/example_NHLinearShadow.png"/>
