//
//  ViewController.m
//  FISAutolayout
//
//  Created by Flatiron School on 6/27/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *bottomLabel;
@property (weak, nonatomic) IBOutlet UILabel *centerLabel;
@property (weak, nonatomic) IBOutlet UITextField *myTextField;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet UIView *redBox;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view removeConstraints:self.view.constraints];
    
    self.bottomLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.bottomLabel removeConstraints:self.bottomLabel.constraints];
    [self.bottomLabel.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:0].active = YES;
    [self.bottomLabel.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:0].active = YES;
    
    self.centerLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.centerLabel removeConstraints:self.centerLabel.constraints];
    [self.centerLabel.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor constant:0].active = YES;
    [self.centerLabel.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor constant:0].active = YES;
    
    self.myTextField.translatesAutoresizingMaskIntoConstraints = NO;
    [self.myTextField removeConstraints:self.myTextField.constraints];
    [self.myTextField.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:20].active = YES;
    [self.myTextField.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:20].active = YES;
    [self.myTextField.widthAnchor constraintEqualToAnchor:self.view.widthAnchor constant:-40].active = YES;
    
    self.loginButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.loginButton removeConstraints:self.loginButton.constraints];
    [self.loginButton.topAnchor constraintEqualToAnchor:self.myTextField.bottomAnchor constant:10].active = YES;
    [self.loginButton.centerXAnchor constraintEqualToAnchor:self.myTextField.centerXAnchor].active = YES;
    
    self.redBox.translatesAutoresizingMaskIntoConstraints = NO;
    [self.redBox removeConstraints:self.redBox.constraints];
    [self.redBox.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
    [self.redBox.leftAnchor constraintEqualToAnchor:self.view.leftAnchor].active = YES;
    [self.redBox.widthAnchor constraintEqualToAnchor:self.view.widthAnchor].active = YES;
    [self.redBox.heightAnchor constraintEqualToAnchor:self.view.heightAnchor multiplier:0.25].active = YES;
    /**
    [self.redBox.heightAnchor constraintEqualToAnchor:self.view.heightAnchor multiplier:0.5].active = YES;
    [self.redBox.bottomAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = YES;
     */
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
