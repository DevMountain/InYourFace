//
//  IFAlertDelegateViewController.m
//  InYourFace
//
//  Created by Joshua Howland on 6/5/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "IFAlertDelegateViewController.h"

@interface IFAlertDelegateViewController ()

@end

@implementation IFAlertDelegateViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self presentAlertViewController];
}

- (void)presentAlertViewController {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[self randomTitle] message:@"You only have 2 options:" preferredStyle:UIAlertControllerStyleAlert];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"Never again!" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action) {
        NSLog(@"I'll never show the alert again.");
    }]];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"Hit me baby" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self presentAlertViewController];
    }]];
    
    [self.navigationController presentViewController:alertController animated:YES completion:nil];
}

- (NSString *)randomTitle {

    int index = (arc4random_uniform((int)([self lines].count)));
    return [self lines][index];
    
}

- (NSArray *)lines {

    return @[@"If peeing your pants is cool, consider me Miles Davis",
             @"We don't need no stinking badges",
             @"Thank you very little",
             @"You can't fight in here. This is a war room.",
             @"There's no crying in baseball",
             @"I have nipples, greg. Could you milk me?",
             @"You could be drinking whole, if you wanted to.",
             @"Fat guy in a little coat",
             @"How can we be expected to teach children how to read if they can't even fit inside the building?"];
    
}


@end
