//
//  ViewController.m
//  RPNCalc
//
//  Created by Husein Kareem on 5/11/15.
//  Copyright (c) 2015 Husein Kareem. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *numberInputField;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@property (weak, nonatomic) IBOutlet UIButton *addValueButton;

@property NSInteger val1;
@property NSInteger val2;
@property NSInteger val3;
@property NSInteger val4;

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.val1 = 10000000000000;
    self.val2 = 10000000000000;
    self.val3 = 10000000000000;
    self.val4 = 10000000000000;
}

- (IBAction)onAddValueButtonTapped:(UIButton *)sender {
    if ([sender.currentTitle isEqualToString:@"Value 1"]) {
        self.val1 = [self.numberInputField.text intValue];
        self.numberInputField.text = @"";
//        NSLog([NSString stringWithFormat:@"%li", (long)self.val1]);
        [sender setTitle:@"Value 2" forState:UIControlStateNormal];

    } else if ([sender.currentTitle isEqualToString:@"Value 2"]) {
        self.val2 = [self.numberInputField.text intValue];
        self.numberInputField.text = @"";
//        NSLog([NSString stringWithFormat:@"%li", (long)self.val2]);
        [sender setTitle:@"Value 3" forState:UIControlStateNormal];

    } else if ([sender.currentTitle isEqualToString:@"Value 3"]) {
        self.val3 = [self.numberInputField.text intValue];
        self.numberInputField.text = @"";
//        NSLog([NSString stringWithFormat:@"%li", (long)self.val3]);
        [sender setTitle:@"Value 4" forState:UIControlStateNormal];

    } else if ([sender.currentTitle isEqualToString:@"Value 4"]) {
        self.val4 = [self.numberInputField.text intValue];
        self.numberInputField.text = @"";
//        NSLog([NSString stringWithFormat:@"%li", (long)self.val4]);
        [self.addValueButton setEnabled:NO];
    }
}

- (IBAction)onCalculateButtonTapped:(UIButton *)sender {
    if ([self.segmentedControl selectedSegmentIndex] == 0) {
        if (!(self.val4 == 10000000000000)) {
            self.val3 = self.val4 + self.val3;
            self.val4 = 10000000000000;
            self.resultLabel.text = [NSString stringWithFormat:@"Result: %li", (long)self.val3];
            [self.addValueButton setEnabled:YES];
            [self.addValueButton setTitle:@"Value 4" forState:UIControlStateNormal];
        } else if (!(self.val3 == 10000000000000)) {
            self.val2 = self.val3 + self.val2;
            self.val3 = 10000000000000;
            self.resultLabel.text = [NSString stringWithFormat:@"Result: %li", (long)self.val2];
            [self.addValueButton setTitle:@"Value 3" forState:UIControlStateNormal];
        } else if (!(self.val2 == 10000000000000)) {
            self.val1 = self.val2 + self.val1;
            self.resultLabel.text = [NSString stringWithFormat:@"Result: %li", (long)self.val1];
            self.val2 = 10000000000000;
            [self.addValueButton setTitle:@"Value 2" forState:UIControlStateNormal];
        }
    } else if ([self.segmentedControl selectedSegmentIndex] == 1) {
        if (!(self.val4 == 10000000000000)) {
            self.val3 = self.val4 - self.val3;
            self.val4 = 10000000000000;
            self.resultLabel.text = [NSString stringWithFormat:@"Result: %li", (long)self.val3];
            [self.addValueButton setEnabled:YES];
            [self.addValueButton setTitle:@"Value 4" forState:UIControlStateNormal];
        } else if (!(self.val3 == 10000000000000)) {
            self.val2 = self.val3 - self.val2;
            self.val3 = 10000000000000;
            self.resultLabel.text = [NSString stringWithFormat:@"Result: %li", (long)self.val2];
            [self.addValueButton setTitle:@"Value 3" forState:UIControlStateNormal];
        } else if (!(self.val2 == 10000000000000)) {
            self.val1 = self.val2 - self.val1;
            self.resultLabel.text = [NSString stringWithFormat:@"Result: %li", (long)self.val1];
            self.val2 = 10000000000000;
            [self.addValueButton setTitle:@"Value 2" forState:UIControlStateNormal];
        }
    } else if ([self.segmentedControl selectedSegmentIndex] == 2) {
        if (!(self.val4 == 10000000000000)) {
            self.val3 = self.val4 * self.val3;
            self.val4 = 10000000000000;
            self.resultLabel.text = [NSString stringWithFormat:@"Result: %li", (long)self.val3];
            [self.addValueButton setEnabled:YES];
            [self.addValueButton setTitle:@"Value 4" forState:UIControlStateNormal];
        } else if (!(self.val3 == 10000000000000)) {
            self.val2 = self.val3 * self.val2;
            self.val3 = 10000000000000;
            self.resultLabel.text = [NSString stringWithFormat:@"Result: %li", (long)self.val2];
            [self.addValueButton setTitle:@"Value 3" forState:UIControlStateNormal];
        } else if (!(self.val2 == 10000000000000)) {
            self.val1 = self.val2 * self.val1;
            self.resultLabel.text = [NSString stringWithFormat:@"Result: %li", (long)self.val1];
            self.val2 = 10000000000000;
            [self.addValueButton setTitle:@"Value 2" forState:UIControlStateNormal];
        }
    } if ([self.segmentedControl selectedSegmentIndex] == 3) {
        if (!(self.val4 == 10000000000000)) {
            self.val3 = self.val4 / self.val3;
            self.val4 = 10000000000000;
            self.resultLabel.text = [NSString stringWithFormat:@"Result: %li", (long)self.val3];
            [self.addValueButton setEnabled:YES];
            [self.addValueButton setTitle:@"Value 4" forState:UIControlStateNormal];
        } else if (!(self.val3 == 10000000000000)) {
            self.val2 = self.val3 / self.val2;
            self.val3 = 10000000000000;
            self.resultLabel.text = [NSString stringWithFormat:@"Result: %li", (long)self.val2];
            [self.addValueButton setTitle:@"Value 3" forState:UIControlStateNormal];
        } else if (!(self.val2 == 10000000000000)) {
            self.val1 = self.val2 / self.val1;
            self.resultLabel.text = [NSString stringWithFormat:@"Result: %li", (long)self.val1];
            self.val2 = 10000000000000;
            [self.addValueButton setTitle:@"Value 2" forState:UIControlStateNormal];
        }
    }
}

@end
