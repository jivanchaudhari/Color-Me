//
//  ViewController.h
//  JCSliderControl
//
//  Created by Test P02 on 16/09/16.
//  Copyright © 2016 Test P01. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kAllUILabelwidth 50.0
#define kAllUIHeight 30.0
#define kVerticalPadding 20.0
#define kHorizontalPadding 20.0
#define kSliderWidth 200.0
#define kStatusBar 20.0

@interface ViewController : UIViewController

{
    UILabel *labelRed;
    UILabel *labelBlue;
    UILabel *labelGreen;
    CGFloat screenOfWidth;
    CGFloat screenOfHeight;
    UILabel *labelAlpha;
    CGFloat AllSliderYCoordinate;
    UILabel *labelRedValue;
    UILabel *labelBlueValue;
    UILabel *labelGreenValue;
    UILabel *labelAlphaValue;
    UISlider *sliderRed;
    UISlider *sliderBlue;
    UISlider *sliderGreen;
    UISlider *alphaSlider;
    UIView *myView;

    
}


@end

