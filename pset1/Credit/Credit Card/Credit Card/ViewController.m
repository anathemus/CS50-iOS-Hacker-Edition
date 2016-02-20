//
//  ViewController.m
//  Credit Card
//
//  Created by Benjamin A Burgess on 2/11/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *credit;
@property (weak, nonatomic) IBOutlet UILabel *creditLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)creditInput:(id)sender {
    if (_credit.text.length < 13 || _credit.text.length == 14 || _credit.text.length > 16) {
        _creditLabel.text = (@"INVALID");
    } else {
        NSMutableArray *creditCardDigits;
        NSNumber *numberGrabber;
        int digits = [_credit.text intValue];
        
        for (int i = 0; i > _credit.text.length; i++) {
            numberGrabber = [NSNumber numberWithInt:digits % 10];
            creditCardDigits[i] = numberGrabber;
            digits = digits / 10;
        }
        _creditLabel.text = (@"VALID");
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
