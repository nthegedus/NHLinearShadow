##NHLinearShadow

With NHLinearShadow you can add a shadow like this:
![ScreenShot](https://www.dropbox.com/s/br1f58mb6pwvzpd/shadow.png)

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
![ScreenShot](https://www.dropbox.com/s/b3tpk82r691olhn/example_NHLinearShadow.png)
