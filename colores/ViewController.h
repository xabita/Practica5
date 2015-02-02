//
//  ViewController.h
//  colores
//
//  Created by user91356 on 2/1/15.
//  Copyright (c) 2015 user91356. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIView *myView;
@property (strong, nonatomic) IBOutlet UILabel *lblTime;

@property (strong, nonatomic) IBOutlet UILabel *label;


@property (strong, nonatomic) IBOutlet UISlider *redSlider;
@property (strong, nonatomic) IBOutlet UISlider *greenSlider;
@property (strong, nonatomic) IBOutlet UISlider *blueSlider;
@property (strong, nonatomic) IBOutlet UISlider *countSlider;
@property (strong, nonatomic) IBOutlet UILabel *lblSegundos;

- (IBAction)redSlider:(id)sender;
- (IBAction)greenSlider:(id)sender;
- (IBAction)blueSlider:(id)sender;



- (IBAction)countSlider2:(id)sender;

- (IBAction)countSlider:(id)sender;
@end

