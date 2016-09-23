//
//  ViewController.m
//  JCSliderControl
//
//  Created by Test P02 on 16/09/16.
//  Copyright © 2016 Test P01. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    screenOfWidth = [[UIScreen mainScreen]bounds].size.width;
    screenOfHeight = [[UIScreen mainScreen]bounds].size.height;
   
    myView = [[UIView alloc]initWithFrame:CGRectMake(kVerticalPadding,kStatusBar , screenOfWidth-(2*kVerticalPadding),530)];
    
    myView.backgroundColor = [UIColor blackColor];
    
    [self.view addSubview:myView];
    
    
    
    labelRed = [[UILabel alloc]initWithFrame:CGRectMake(kVerticalPadding, screenOfHeight-160, kAllUILabelwidth, kAllUIHeight)];
    
    labelRed.backgroundColor = [UIColor whiteColor];
    
    labelRed.text=@"Red";
    
    labelRed.textAlignment =NSTextAlignmentCenter;
    
    [self.view addSubview:labelRed];
    
    sliderRed =[[UISlider alloc]initWithFrame:CGRectMake((kAllUILabelwidth+(2*kVerticalPadding)), screenOfHeight-160, 230, kAllUIHeight)];
    
    sliderRed.backgroundColor = [UIColor whiteColor];
    
    sliderRed.thumbTintColor = [UIColor redColor];
    sliderRed.tintColor =[ UIColor redColor];
    sliderRed.minimumValue = 0;
    
    sliderRed.maximumValue = 1;
    
    
    
    [sliderRed addTarget:self action:@selector(handelRedSlider:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:sliderRed];
    
    labelRedValue =[[UILabel alloc]initWithFrame:CGRectMake((kAllUILabelwidth+(1*kVerticalPadding)+kSliderWidth+(3*kVerticalPadding)), screenOfHeight-160, kAllUILabelwidth, kAllUIHeight)];
   
    labelRedValue.backgroundColor = [UIColor whiteColor];
    
    labelRedValue.textAlignment =NSTextAlignmentCenter;
    
    [self.view addSubview:labelRedValue];
    
    
    //
    
    labelGreen = [[UILabel alloc]initWithFrame:CGRectMake(kVerticalPadding, screenOfHeight-120, kAllUILabelwidth, kAllUIHeight)];
    
    labelGreen.backgroundColor = [UIColor whiteColor];
    
    labelGreen.text=@"Green";
    
    labelGreen.textAlignment =NSTextAlignmentCenter;
    
    [self.view addSubview:labelGreen];
    
    sliderGreen =[[UISlider alloc]initWithFrame:CGRectMake((kAllUILabelwidth+(2*kVerticalPadding)), screenOfHeight-120, 230, kAllUIHeight)];
    
    sliderGreen.backgroundColor = [UIColor whiteColor];
    
    sliderGreen.maximumValue = 1;
    
    sliderGreen.minimumValue = 0;
    
    sliderGreen.thumbTintColor = [UIColor greenColor];
    sliderGreen.tintColor =[ UIColor greenColor];
    
    [sliderGreen addTarget:self action:@selector(handelGreenSlider:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:sliderGreen];
    
    labelGreenValue =[[UILabel alloc]initWithFrame:CGRectMake((kAllUILabelwidth+(1*kVerticalPadding)+kSliderWidth+(3*kVerticalPadding)), screenOfHeight-120, kAllUILabelwidth, kAllUIHeight)];
    
    labelGreenValue.backgroundColor = [UIColor whiteColor];
    labelGreenValue.textAlignment =NSTextAlignmentCenter;
    [self.view addSubview:labelGreenValue];
    
    //
    labelBlue = [[UILabel alloc]initWithFrame:CGRectMake(kVerticalPadding, screenOfHeight-80, kAllUILabelwidth, kAllUIHeight)];
    
    labelBlue.backgroundColor = [UIColor whiteColor];
    
    labelBlue.text=@"Blue";
    
    labelBlue.textAlignment =NSTextAlignmentCenter;
    
    [self.view addSubview:labelBlue];
    
    sliderBlue =[[UISlider alloc]initWithFrame:CGRectMake((kAllUILabelwidth+(2*kVerticalPadding)), screenOfHeight-80, 230, kAllUIHeight)];
    
    sliderBlue.backgroundColor = [UIColor whiteColor];
    
    sliderBlue.minimumValue=0;
    
    sliderBlue.maximumValue =1;
    
    sliderBlue.thumbTintColor = [UIColor blueColor];
    sliderBlue.tintColor =[ UIColor blueColor];
    
    [sliderBlue addTarget:self action:@selector(handelBlueSlider:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:sliderBlue];
    
    labelBlueValue =[[UILabel alloc]initWithFrame:CGRectMake((kAllUILabelwidth+(1*kVerticalPadding)+kSliderWidth+(3*kVerticalPadding)), screenOfHeight-80, kAllUILabelwidth, kAllUIHeight)];
    
    labelBlueValue.backgroundColor = [UIColor whiteColor];
    
    labelBlueValue.textAlignment =NSTextAlignmentCenter;
    [self.view addSubview:labelBlueValue];
    
    
    //
    labelAlpha = [[UILabel alloc]initWithFrame:CGRectMake(kVerticalPadding, screenOfHeight-40, kAllUILabelwidth, kAllUIHeight)];
    
    labelAlpha.backgroundColor = [UIColor whiteColor];
    
    labelAlpha.text=@"Alpha";
    
    labelAlpha.textAlignment =NSTextAlignmentCenter;
    
    [self.view addSubview:labelAlpha];
    
    alphaSlider =[[UISlider alloc]initWithFrame:CGRectMake((kAllUILabelwidth+(2*kVerticalPadding)), screenOfHeight-40, 230, kAllUIHeight)];
    
    alphaSlider.backgroundColor = [UIColor whiteColor];
    
    alphaSlider.minimumValue = 0;
    
    alphaSlider.maximumValue=1;
    
    [alphaSlider addTarget:self action:@selector(handelAlphaSlider:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:alphaSlider];
    
     labelAlphaValue =[[UILabel alloc]initWithFrame:CGRectMake((kAllUILabelwidth+(1*kVerticalPadding)+kSliderWidth+(3*kVerticalPadding)), screenOfHeight-40, kAllUILabelwidth, kAllUIHeight)];
    
    labelAlphaValue.backgroundColor = [UIColor whiteColor];
    
    labelAlphaValue.textAlignment =NSTextAlignmentCenter;
    
    [self.view addSubview:labelAlphaValue];
    
}

-(void)handelRedSlider:(id)sender
{
    UISlider *localRedSlider=sender;
    
    
    labelRedValue.text=[NSString stringWithFormat:@"%0.02f",localRedSlider.value];

    [self colorMe];
 
}

-(void)handelGreenSlider:(id)sender
{
    UISlider *localGreenSlider=sender;
    
    
    labelGreenValue.text=[NSString stringWithFormat:@"%0.02f",localGreenSlider.value];
    
    [self colorMe];
    
}

-(void)handelBlueSlider:(id)sender
{
    UISlider *localBlueSlider=sender;
    
    
    labelBlueValue.text=[NSString stringWithFormat:@"%0.02f",localBlueSlider.value];
    
    [self colorMe];
    
}

-(void)handelAlphaSlider:(id)sender
{
    UISlider *localAlphaSlider=sender;
    
    
    labelAlphaValue.text=[NSString stringWithFormat:@"%0.02f",localAlphaSlider.value];
    
    [self colorMe];
    
}


-(void)colorMe {
    self->myView.backgroundColor=[UIColor colorWithRed:sliderRed.value green:sliderGreen.value blue:sliderBlue.value alpha:alphaSlider.value];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
