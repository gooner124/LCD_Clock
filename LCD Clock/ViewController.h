//
//  ViewController.h
//  LCD Clock
//
//  Created by Matthew Paravati on 11/25/15.
//  Copyright © 2015 TurnToTech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClockProperties.h"

@interface ViewController : UIViewController


@property(strong,nonatomic) ClockProperties *myPreference;

@property NSDateFormatter *dateFormatter;
@property NSString *currentTime;
@property (weak, nonatomic) IBOutlet UIView *backgroundView;
@property (weak, nonatomic) IBOutlet UIView *colonView;
@property (weak, nonatomic) IBOutlet UIView *firstDigitView;
@property (weak, nonatomic) IBOutlet UIView *secondDigitView;
@property (weak, nonatomic) IBOutlet UIView *thirdDigitView;
@property (weak, nonatomic) IBOutlet UIView *fourthDigitView;
@property (weak, nonatomic) IBOutlet UIView *amPMView;

@property (weak, nonatomic) IBOutlet UIView *oneA;
@property (weak, nonatomic) IBOutlet UIView *oneB;
@property (weak, nonatomic) IBOutlet UIView *oneC;
@property (weak, nonatomic) IBOutlet UIView *oneD;
@property (weak, nonatomic) IBOutlet UIView *oneE;
@property (weak, nonatomic) IBOutlet UIView *oneF;
@property (weak, nonatomic) IBOutlet UIView *oneG;

@property (weak, nonatomic) IBOutlet UIView *twoA;
@property (weak, nonatomic) IBOutlet UIView *twoB;
@property (weak, nonatomic) IBOutlet UIView *twoC;
@property (weak, nonatomic) IBOutlet UIView *twoD;
@property (weak, nonatomic) IBOutlet UIView *twoE;
@property (weak, nonatomic) IBOutlet UIView *twoF;
@property (weak, nonatomic) IBOutlet UIView *twoG;

@property (weak, nonatomic) IBOutlet UIView *threeA;
@property (weak, nonatomic) IBOutlet UIView *threeB;
@property (weak, nonatomic) IBOutlet UIView *threeC;
@property (weak, nonatomic) IBOutlet UIView *threeD;
@property (weak, nonatomic) IBOutlet UIView *threeE;
@property (weak, nonatomic) IBOutlet UIView *threeF;
@property (weak, nonatomic) IBOutlet UIView *threeG;

@property (weak, nonatomic) IBOutlet UIView *fourA;
@property (weak, nonatomic) IBOutlet UIView *fourB;
@property (weak, nonatomic) IBOutlet UIView *fourC;
@property (weak, nonatomic) IBOutlet UIView *fourD;
@property (weak, nonatomic) IBOutlet UIView *fourE;
@property (weak, nonatomic) IBOutlet UIView *fourF;
@property (weak, nonatomic) IBOutlet UIView *fourG;

@property (weak, nonatomic) IBOutlet UILabel *amPMLabel;
@property (weak, nonatomic) IBOutlet UILabel *colonLabel;
@property (weak, nonatomic) IBOutlet UISwitch *hourFormatOfClock;

//Button Properties
@property (weak, nonatomic) IBOutlet UIButton *blackBackgroundButton;
@property (weak, nonatomic) IBOutlet UIButton *grayBackgroundButton;
@property (weak, nonatomic) IBOutlet UIButton *blueBackgroundButton;
@property (weak, nonatomic) IBOutlet UIButton *blueDigitButton;
@property (weak, nonatomic) IBOutlet UIButton *redDigitButton;
@property (weak, nonatomic) IBOutlet UIButton *yellowDigitButton;
@property (weak, nonatomic) IBOutlet UIButton *estButton;
@property (weak, nonatomic) IBOutlet UIButton *cstButton;
@property (weak, nonatomic) IBOutlet UIButton *pstButton;


//Action events
- (IBAction)hourFormatOfClock:(UISwitch*)sender;
- (IBAction)blackBackgroundButtonClicked:(id)sender;
- (IBAction)grayBackgroundButtonClicked:(id)sender;
- (IBAction)blueBackgroundButtonClicked:(id)sender;
- (IBAction)blueDigitButtonClicked:(id)sender;
- (IBAction)redDigitButtonClicked:(id)sender;
- (IBAction)yellowDigitButtonClicked:(id)sender;
- (IBAction)saveMyData:(id)sender;
- (IBAction)estButtonClicked:(id)sender;
- (IBAction)cstButtonClicked:(id)sender;
- (IBAction)pstButtonClicked:(id)sender;




@end

