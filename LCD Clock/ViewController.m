//
//  ViewController.m
//  LCD Clock
//
//  Created by Matthew Paravati on 11/25/15.
//  Copyright © 2015 TurnToTech. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.dateFormatter = [[NSDateFormatter alloc] init];
    [self readDataFromDefaults];
    
    //[self.blackBackgroundButton setBackgroundColor:[UIColor whiteColor]];
    
    [NSTimer scheduledTimerWithTimeInterval:1.0
                                     target:self
                                   selector:@selector(setTimeOnClock:)
                                   userInfo:nil
                                    repeats:YES];
    
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:NO];
    
}

-(void)setTimeOnClock:(id)sender
{
    [self hourFormatOfClock:self.hourFormatOfClock];
    [self.dateFormatter setTimeZone:[NSTimeZone defaultTimeZone]];
    self.currentTime = [self.dateFormatter stringFromDate: [NSDate date]];
    NSString *firstHourDigit = [self.currentTime substringWithRange:NSMakeRange(0, 1)];
    NSString *secondHourDigit = [self.currentTime substringWithRange:NSMakeRange(1, 1)];
    NSString *firstMinuteDigit = [self.currentTime substringWithRange:NSMakeRange(3, 1)];
    NSString *secondMinuteDigit = [self.currentTime substringWithRange:NSMakeRange(4, 1)];
    self.amPMLabel.text = [self.currentTime substringWithRange:NSMakeRange(6, 2)];
    [self updateFirstHourDigit:firstHourDigit];
    [self updateSecondHourDigit:secondHourDigit];
    [self updateFirstMinuteDigit:firstMinuteDigit];
    [self updateSecondMinuteDigit:secondMinuteDigit];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark update Clock digits

-(void)updateFirstHourDigit:(NSString*)firstHourDigit {
    if ([firstHourDigit isEqualToString:@"0"]) {
        self.oneA.hidden = YES;
        self.oneB.hidden = YES;
        self.oneC.hidden = YES;
        self.oneD.hidden = YES;
        self.oneE.hidden = YES;
        self.oneF.hidden = YES;
        self.oneG.hidden = YES;
    }else if ([firstHourDigit isEqualToString:@"1"]) {
        self.oneA.hidden = YES;
        self.oneB.hidden = YES;
        self.oneC.hidden = YES;
        self.oneD.hidden = YES;
        self.oneE.hidden = YES;
        self.oneF.hidden = NO;
        self.oneG.hidden = NO;
    }else {
        self.oneA.hidden = NO;
        self.oneB.hidden = YES;
        self.oneC.hidden = NO;
        self.oneD.hidden = NO;
        self.oneE.hidden = NO;
        self.oneF.hidden = YES;
        self.oneG.hidden = NO;
    }
}

-(void)updateSecondHourDigit:(NSString *)secondHourDigit {
    if ([secondHourDigit isEqualToString:@"0"]) {
        self.twoA.hidden = NO;
        self.twoB.hidden = NO;
        self.twoC.hidden = YES;
        self.twoD.hidden = NO;
        self.twoE.hidden = NO;
        self.twoF.hidden = NO;
        self.twoG.hidden = NO;
        
    }else if ([secondHourDigit isEqualToString:@"1"]) {
        self.twoA.hidden = YES;
        self.twoB.hidden = YES;
        self.twoC.hidden = YES;
        self.twoD.hidden = YES;
        self.twoE.hidden = YES;
        self.twoF.hidden = NO;
        self.twoG.hidden = NO;
    }else if ([secondHourDigit isEqualToString:@"2"]) {
        self.twoA.hidden = NO;
        self.twoB.hidden = YES;
        self.twoC.hidden = NO;
        self.twoD.hidden = NO;
        self.twoE.hidden = NO;
        self.twoF.hidden = YES;
        self.twoG.hidden = NO;
    }else if ([secondHourDigit isEqualToString:@"3"]) {
        self.twoA.hidden = NO;
        self.twoB.hidden = YES;
        self.twoC.hidden = NO;
        self.twoD.hidden = YES;
        self.twoE.hidden = NO;
        self.twoF.hidden = NO;
        self.twoG.hidden = NO;
    }else if ([secondHourDigit isEqualToString:@"4"]) {
        self.twoA.hidden = YES;
        self.twoB.hidden = NO;
        self.twoC.hidden = NO;
        self.twoD.hidden = YES;
        self.twoE.hidden = YES;
        self.twoF.hidden = NO;
        self.twoG.hidden = NO;
    }else if ([secondHourDigit isEqualToString:@"5"]) {
        self.twoA.hidden = NO;
        self.twoB.hidden = NO;
        self.twoC.hidden = NO;
        self.twoD.hidden = YES;
        self.twoE.hidden = NO;
        self.twoF.hidden = NO;
        self.twoG.hidden = YES;
    }else if ([secondHourDigit isEqualToString:@"6"]) {
        self.twoA.hidden = NO;
        self.twoB.hidden = NO;
        self.twoC.hidden = NO;
        self.twoD.hidden = NO;
        self.twoE.hidden = NO;
        self.twoF.hidden = NO;
        self.twoG.hidden = YES;
    }else if ([secondHourDigit isEqualToString:@"7"]) {
        self.twoA.hidden = NO;
        self.twoB.hidden = NO;
        self.twoC.hidden = YES;
        self.twoD.hidden = YES;
        self.twoE.hidden = YES;
        self.twoF.hidden = NO;
        self.twoG.hidden = NO;
    }else if([secondHourDigit isEqualToString:@"8"]) {
        self.twoA.hidden = NO;
        self.twoB.hidden = NO;
        self.twoC.hidden = NO;
        self.twoD.hidden = NO;
        self.twoE.hidden = NO;
        self.twoF.hidden = NO;
        self.twoG.hidden = NO;
    }else {
        self.twoA.hidden = NO;
        self.twoB.hidden = NO;
        self.twoC.hidden = NO;
        self.twoD.hidden = YES;
        self.twoE.hidden = YES;
        self.twoF.hidden = NO;
        self.twoG.hidden = NO;
    }
}

-(void)updateFirstMinuteDigit:(NSString *)firstMinuteDigit {
    if ([firstMinuteDigit isEqualToString:@"0"]) {
        self.threeA.hidden = NO;
        self.threeB.hidden = NO;
        self.threeC.hidden = YES;
        self.threeD.hidden = NO;
        self.threeE.hidden = NO;
        self.threeF.hidden = NO;
        self.threeG.hidden = NO;
    }else if ([firstMinuteDigit isEqualToString:@"1"]) {
        self.threeA.hidden = YES;
        self.threeB.hidden = YES;
        self.threeC.hidden = YES;
        self.threeD.hidden = YES;
        self.threeE.hidden = YES;
        self.threeF.hidden = NO;
        self.threeG.hidden = NO;
    }else if ([firstMinuteDigit isEqualToString:@"2"]) {
        self.threeA.hidden = NO;
        self.threeB.hidden = YES;
        self.threeC.hidden = NO;
        self.threeD.hidden = NO;
        self.threeE.hidden = NO;
        self.threeF.hidden = YES;
        self.threeG.hidden = NO;
    }else if ([firstMinuteDigit isEqualToString:@"3"]) {
        self.threeA.hidden = NO;
        self.threeB.hidden = YES;
        self.threeC.hidden = NO;
        self.threeD.hidden = YES;
        self.threeE.hidden = NO;
        self.threeF.hidden = NO;
        self.threeG.hidden = NO;
    }else if ([firstMinuteDigit isEqualToString:@"4"]) {
        self.threeA.hidden = YES;
        self.threeB.hidden = NO;
        self.threeC.hidden = NO;
        self.threeD.hidden = YES;
        self.threeE.hidden = YES;
        self.threeF.hidden = NO;
        self.threeG.hidden = NO;
    }else {
        self.threeA.hidden = NO;
        self.threeB.hidden = NO;
        self.threeC.hidden = NO;
        self.threeD.hidden = YES;
        self.threeE.hidden = NO;
        self.threeF.hidden = NO;
        self.threeG.hidden = YES;
    }
}

-(void)updateSecondMinuteDigit:(NSString *)secondMinuteDigit {
    if ([secondMinuteDigit isEqualToString:@"0"]) {
        self.fourA.hidden = NO;
        self.fourB.hidden = NO;
        self.fourC.hidden = YES;
        self.fourD.hidden = NO;
        self.fourE.hidden = NO;
        self.fourF.hidden = NO;
        self.fourG.hidden = NO;
        
    }else if ([secondMinuteDigit isEqualToString:@"1"]) {
        self.fourA.hidden = YES;
        self.fourB.hidden = YES;
        self.fourC.hidden = YES;
        self.fourD.hidden = YES;
        self.fourE.hidden = YES;
        self.fourF.hidden = NO;
        self.fourG.hidden = NO;
    }else if ([secondMinuteDigit isEqualToString:@"2"]) {
        self.fourA.hidden = NO;
        self.fourB.hidden = YES;
        self.fourC.hidden = NO;
        self.fourD.hidden = NO;
        self.fourE.hidden = NO;
        self.fourF.hidden = YES;
        self.fourG.hidden = NO;
    }else if ([secondMinuteDigit isEqualToString:@"3"]) {
        self.fourA.hidden = NO;
        self.fourB.hidden = YES;
        self.fourC.hidden = NO;
        self.fourD.hidden = YES;
        self.fourE.hidden = NO;
        self.fourF.hidden = NO;
        self.fourG.hidden = NO;
    }else if ([secondMinuteDigit isEqualToString:@"4"]) {
        self.fourA.hidden = YES;
        self.fourB.hidden = NO;
        self.fourC.hidden = NO;
        self.fourD.hidden = YES;
        self.fourE.hidden = YES;
        self.fourF.hidden = NO;
        self.fourG.hidden = NO;
    }else if ([secondMinuteDigit isEqualToString:@"5"]) {
        self.fourA.hidden = NO;
        self.fourB.hidden = NO;
        self.fourC.hidden = NO;
        self.fourD.hidden = YES;
        self.fourE.hidden = NO;
        self.fourF.hidden = NO;
        self.fourG.hidden = YES;
    }else if ([secondMinuteDigit isEqualToString:@"6"]) {
        self.fourA.hidden = NO;
        self.fourB.hidden = NO;
        self.fourC.hidden = NO;
        self.fourD.hidden = NO;
        self.fourE.hidden = NO;
        self.fourF.hidden = NO;
        self.fourG.hidden = YES;
    }else if ([secondMinuteDigit isEqualToString:@"7"]) {
        self.fourA.hidden = NO;
        self.fourB.hidden = NO;
        self.fourC.hidden = YES;
        self.fourD.hidden = YES;
        self.fourE.hidden = YES;
        self.fourF.hidden = NO;
        self.fourG.hidden = NO;
    }else if([secondMinuteDigit isEqualToString:@"8"]) {
        self.fourA.hidden = NO;
        self.fourB.hidden = NO;
        self.fourC.hidden = NO;
        self.fourD.hidden = NO;
        self.fourE.hidden = NO;
        self.fourF.hidden = NO;
        self.fourG.hidden = NO;
    }else {
        self.fourA.hidden = NO;
        self.fourB.hidden = NO;
        self.fourC.hidden = NO;
        self.fourD.hidden = YES;
        self.fourE.hidden = YES;
        self.fourF.hidden = NO;
        self.fourG.hidden = NO;
    }
}

#pragma mark switch events

- (IBAction)hourFormatOfClock:(UISwitch*) sender {
    if (sender.on) {
        [self.dateFormatter setDateFormat:@"HH:mm a"];
        self.amPMLabel.hidden = YES;
        self.myPreference.isTwentyFourHourFormat = @"YES";
    }else {
        [self.dateFormatter setDateFormat:@"hh:mm a"];
        self.amPMLabel.hidden = NO;
        self.myPreference.isTwentyFourHourFormat = @"NO";
    }
}

#pragma mark set background color

- (IBAction)blackBackgroundButtonClicked:(id)sender {
    self.backgroundView.backgroundColor = [UIColor blackColor];
    self.colonView.backgroundColor = [UIColor blackColor];
    self.firstDigitView.backgroundColor = [UIColor blackColor];
    self.secondDigitView.backgroundColor = [UIColor blackColor];
    self.thirdDigitView.backgroundColor = [UIColor blackColor];
    self.fourthDigitView.backgroundColor = [UIColor blackColor];
    self.amPMView.backgroundColor = [UIColor blackColor];
    [self.blackBackgroundButton setBackgroundColor:[UIColor cyanColor]];
    [self.grayBackgroundButton setBackgroundColor:[UIColor clearColor]];
    [self.blueBackgroundButton setBackgroundColor:[UIColor clearColor]];
    self.myPreference.backgroundColor = @"blackColor";
}

- (IBAction)grayBackgroundButtonClicked:(id)sender {
    self.backgroundView.backgroundColor = [UIColor lightGrayColor];
    self.colonView.backgroundColor = [UIColor lightGrayColor];
    self.firstDigitView.backgroundColor = [UIColor lightGrayColor];
    self.secondDigitView.backgroundColor = [UIColor lightGrayColor];
    self.thirdDigitView.backgroundColor = [UIColor lightGrayColor];
    self.fourthDigitView.backgroundColor = [UIColor lightGrayColor];
    self.amPMView.backgroundColor = [UIColor lightGrayColor];
    [self.grayBackgroundButton setBackgroundColor:[UIColor cyanColor]];
    [self.blackBackgroundButton setBackgroundColor:[UIColor clearColor]];
    [self.blueBackgroundButton setBackgroundColor:[UIColor clearColor]];
    self.myPreference.backgroundColor = @"grayColor";
}

- (IBAction)blueBackgroundButtonClicked:(id)sender {
    self.backgroundView.backgroundColor = [UIColor blueColor];
    self.colonView.backgroundColor = [UIColor blueColor];
    self.firstDigitView.backgroundColor = [UIColor blueColor];
    self.secondDigitView.backgroundColor = [UIColor blueColor];
    self.thirdDigitView.backgroundColor = [UIColor blueColor];
    self.fourthDigitView.backgroundColor = [UIColor blueColor];
    self.amPMView.backgroundColor = [UIColor blueColor];
    [self.blueBackgroundButton setBackgroundColor:[UIColor cyanColor]];
    [self.grayBackgroundButton setBackgroundColor:[UIColor clearColor]];
    [self.blackBackgroundButton setBackgroundColor:[UIColor clearColor]];
    self.myPreference.backgroundColor = @"blueColor";
}

#pragma mark set digit color

- (IBAction)blueDigitButtonClicked:(id)sender {
    self.amPMLabel.textColor = [UIColor blueColor];
    self.colonLabel.textColor = [UIColor blueColor];
    self.oneA.backgroundColor = [UIColor blueColor];
    self.oneB.backgroundColor = [UIColor blueColor];
    self.oneC.backgroundColor = [UIColor blueColor];
    self.oneD.backgroundColor = [UIColor blueColor];
    self.oneE.backgroundColor = [UIColor blueColor];
    self.oneF.backgroundColor = [UIColor blueColor];
    self.oneG.backgroundColor = [UIColor blueColor];
    self.twoA.backgroundColor = [UIColor blueColor];
    self.twoB.backgroundColor = [UIColor blueColor];
    self.twoC.backgroundColor = [UIColor blueColor];
    self.twoD.backgroundColor = [UIColor blueColor];
    self.twoE.backgroundColor = [UIColor blueColor];
    self.twoF.backgroundColor = [UIColor blueColor];
    self.twoG.backgroundColor = [UIColor blueColor];
    self.threeA.backgroundColor = [UIColor blueColor];
    self.threeB.backgroundColor = [UIColor blueColor];
    self.threeC.backgroundColor = [UIColor blueColor];
    self.threeD.backgroundColor = [UIColor blueColor];
    self.threeE.backgroundColor = [UIColor blueColor];
    self.threeF.backgroundColor = [UIColor blueColor];
    self.threeG.backgroundColor = [UIColor blueColor];
    self.fourA.backgroundColor = [UIColor blueColor];
    self.fourB.backgroundColor = [UIColor blueColor];
    self.fourC.backgroundColor = [UIColor blueColor];
    self.fourD.backgroundColor = [UIColor blueColor];
    self.fourE.backgroundColor = [UIColor blueColor];
    self.fourF.backgroundColor = [UIColor blueColor];
    self.fourG.backgroundColor = [UIColor blueColor];
    [self.blueDigitButton setBackgroundColor:[UIColor cyanColor]];
    [self.redDigitButton setBackgroundColor:[UIColor clearColor]];
    [self.yellowDigitButton setBackgroundColor:[UIColor clearColor]];
    
    self.myPreference.digitColor = @"blueColor";
}

- (IBAction)redDigitButtonClicked:(id)sender {
    self.amPMLabel.textColor = [UIColor redColor];
    self.colonLabel.textColor = [UIColor redColor];
    self.oneA.backgroundColor = [UIColor redColor];
    self.oneB.backgroundColor = [UIColor redColor];
    self.oneC.backgroundColor = [UIColor redColor];
    self.oneD.backgroundColor = [UIColor redColor];
    self.oneE.backgroundColor = [UIColor redColor];
    self.oneF.backgroundColor = [UIColor redColor];
    self.oneG.backgroundColor = [UIColor redColor];
    self.twoA.backgroundColor = [UIColor redColor];
    self.twoB.backgroundColor = [UIColor redColor];
    self.twoC.backgroundColor = [UIColor redColor];
    self.twoD.backgroundColor = [UIColor redColor];
    self.twoE.backgroundColor = [UIColor redColor];
    self.twoF.backgroundColor = [UIColor redColor];
    self.twoG.backgroundColor = [UIColor redColor];
    self.threeA.backgroundColor = [UIColor redColor];
    self.threeB.backgroundColor = [UIColor redColor];
    self.threeC.backgroundColor = [UIColor redColor];
    self.threeD.backgroundColor = [UIColor redColor];
    self.threeE.backgroundColor = [UIColor redColor];
    self.threeF.backgroundColor = [UIColor redColor];
    self.threeG.backgroundColor = [UIColor redColor];
    self.fourA.backgroundColor = [UIColor redColor];
    self.fourB.backgroundColor = [UIColor redColor];
    self.fourC.backgroundColor = [UIColor redColor];
    self.fourD.backgroundColor = [UIColor redColor];
    self.fourE.backgroundColor = [UIColor redColor];
    self.fourF.backgroundColor = [UIColor redColor];
    self.fourG.backgroundColor = [UIColor redColor];
    [self.redDigitButton setBackgroundColor:[UIColor cyanColor]];
    [self.yellowDigitButton setBackgroundColor:[UIColor clearColor]];
    [self.blueDigitButton setBackgroundColor:[UIColor clearColor]];
    
    self.myPreference.digitColor = @"redColor";
}

- (IBAction)yellowDigitButtonClicked:(id)sender {
    self.amPMLabel.textColor = [UIColor yellowColor];
    self.colonLabel.textColor = [UIColor yellowColor];
    self.oneA.backgroundColor = [UIColor yellowColor];
    self.oneB.backgroundColor = [UIColor yellowColor];
    self.oneC.backgroundColor = [UIColor yellowColor];
    self.oneD.backgroundColor = [UIColor yellowColor];
    self.oneE.backgroundColor = [UIColor yellowColor];
    self.oneF.backgroundColor = [UIColor yellowColor];
    self.oneG.backgroundColor = [UIColor yellowColor];
    self.twoA.backgroundColor = [UIColor yellowColor];
    self.twoB.backgroundColor = [UIColor yellowColor];
    self.twoC.backgroundColor = [UIColor yellowColor];
    self.twoD.backgroundColor = [UIColor yellowColor];
    self.twoE.backgroundColor = [UIColor yellowColor];
    self.twoF.backgroundColor = [UIColor yellowColor];
    self.twoG.backgroundColor = [UIColor yellowColor];
    self.threeA.backgroundColor = [UIColor yellowColor];
    self.threeB.backgroundColor = [UIColor yellowColor];
    self.threeC.backgroundColor = [UIColor yellowColor];
    self.threeD.backgroundColor = [UIColor yellowColor];
    self.threeE.backgroundColor = [UIColor yellowColor];
    self.threeF.backgroundColor = [UIColor yellowColor];
    self.threeG.backgroundColor = [UIColor yellowColor];
    self.fourA.backgroundColor = [UIColor yellowColor];
    self.fourB.backgroundColor = [UIColor yellowColor];
    self.fourC.backgroundColor = [UIColor yellowColor];
    self.fourD.backgroundColor = [UIColor yellowColor];
    self.fourE.backgroundColor = [UIColor yellowColor];
    self.fourF.backgroundColor = [UIColor yellowColor];
    self.fourG.backgroundColor = [UIColor yellowColor];
    [self.yellowDigitButton setBackgroundColor:[UIColor cyanColor]];
    [self.redDigitButton setBackgroundColor:[UIColor clearColor]];
    [self.blueDigitButton setBackgroundColor:[UIColor clearColor]];
    
    self.myPreference.digitColor = @"yellowColor";
}

#pragma mark set user defaults

- (IBAction)saveMyData:(id)sender {
    // Saving custom object data to NSUserDefaults
    NSData *encodedObject = [NSKeyedArchiver archivedDataWithRootObject:self.myPreference];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:encodedObject forKey:@"ClockData"];
    [defaults synchronize];
    NSLog(@"Data Saved");
}


-(void)readDataFromDefaults
{
    // Fetching saved custom object data from NSUserDefaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSData *encodedObject = [defaults objectForKey:@"ClockData"];
    self.myPreference = [NSKeyedUnarchiver unarchiveObjectWithData:encodedObject];
    
    // Set Background Color
    if ([self.myPreference.backgroundColor isEqualToString:@"blackColor"]) {
        [self blackBackgroundButtonClicked:nil];
    }else if ([self.myPreference.backgroundColor isEqualToString:@"grayColor"]){
        [self grayBackgroundButtonClicked:nil];
    }else{
        [self blueBackgroundButtonClicked:nil];
    }
    
    // Set Digit Color
    if ([self.myPreference.digitColor isEqualToString:@"blueColor"]) {
        [self blueDigitButtonClicked:nil];
    }else if ([self.myPreference.digitColor isEqualToString:@"redColor"]){
        [self redDigitButtonClicked:nil];
    }else{
        [self yellowDigitButtonClicked:nil];
    }
    
    // Set Clock Format
    if ([self.myPreference.isTwentyFourHourFormat isEqualToString:@"YES"]) {
        [self.hourFormatOfClock setOn:YES animated:YES];
    }else{
        [self.hourFormatOfClock setOn:NO animated:YES];
    }
    
    //set time zone
    if ([self.myPreference.timeZone isEqualToString:@"EST"]) {
        [self estButtonClicked:nil];
    }else if ([self.myPreference.timeZone isEqualToString:@"CST"]) {
        [self cstButtonClicked:nil];
    }else {
        [self pstButtonClicked:nil];
    }
    
    
    NSLog(@"Data Fetched");
}

#pragma mark set time zones

- (IBAction)estButtonClicked:(id)sender {
    [NSTimeZone setDefaultTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"EST"]];
    [self.estButton setBackgroundColor:[UIColor cyanColor]];
    [self.cstButton setBackgroundColor:[UIColor clearColor]];
    [self.pstButton setBackgroundColor:[UIColor clearColor]];
    self.myPreference.timeZone = @"EST";
}

- (IBAction)cstButtonClicked:(id)sender {
    [NSTimeZone setDefaultTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"CST"]];
    [self.cstButton setBackgroundColor:[UIColor cyanColor]];
    [self.estButton setBackgroundColor:[UIColor clearColor]];
    [self.pstButton setBackgroundColor:[UIColor clearColor]];
    self.myPreference.timeZone = @"CST";
}

- (IBAction)pstButtonClicked:(id)sender {
    [NSTimeZone setDefaultTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"PST"]];
    [self.pstButton setBackgroundColor:[UIColor cyanColor]];
    [self.estButton setBackgroundColor:[UIColor clearColor]];
    [self.cstButton setBackgroundColor:[UIColor clearColor]];
    self.myPreference.timeZone = @"PST";
}


@end
