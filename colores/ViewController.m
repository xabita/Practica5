//
//  ViewController.m
//  colores
//
//  Created by user91356 on 2/1/15.
//  Copyright (c) 2015 user91356. All rights reserved.
//

#import "ViewController.h"

CGFloat redVal = 0.0f;
CGFloat greenVal = 0.0f;
CGFloat blueVal = 0.0f;
int i= 0;

NSTimer *countTime;

NSInteger valSlider= 0;

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)countSlider:(id)sender {
    // timer is set & will be triggered each second
    
 
   
}


- (IBAction)countSlider2:(id)sender {
    
   i=1;
   valSlider=0;
    
    valSlider= self.countSlider.value;
    self.lblSegundos.text = [[NSNumber numberWithFloat:valSlider] stringValue];
   // valSlider=valSlider-1;

    //for (int cnt=1; cnt<=valSlider; cnt++) {
    countTime = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(starCountTime:) userInfo:nil repeats:YES];
  // [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(showTime) userInfo:nil repeats:YES];
    
    
}

-(void)showTime{
    
    self.label.text=[[NSDate date] description];
}


-(void)starCountTime:(NSTimer *) countTime {
    self.lblTime.text = [[NSNumber numberWithInt:i]stringValue];
    if ( valSlider > i) {
      [ self showHideView];
    }
    else
    {
        [countTime invalidate];
        countTime = nil;
       // self.lblTime.text=@"Fin de la animacion";
        
    }
    i=i+1;
}

-(void) showHideView{
    [UIView animateWithDuration:.5
                          delay:0
                        options:UIViewAnimationOptionAutoreverse
                     animations:^{
                         self.myView.alpha =0;
                     }
                     completion:^(BOOL finished){
                         [UIView animateWithDuration:.5
                                               delay:0
                                             options:UIViewAnimationOptionAutoreverse
                                          animations:^{
                                              self.myView.alpha = 1;
                                          }
                                          completion:nil
                          ];
                     }
     ];
}


- (IBAction)redSlider:(id)sender {
     redVal = self.redSlider.value;
    self.myView.backgroundColor = [UIColor colorWithRed:redVal green:greenVal blue:blueVal alpha:1.0f];
}

- (IBAction)greenSlider:(id)sender {
    greenVal = self.greenSlider.value;
    self.myView.backgroundColor = [UIColor colorWithRed:redVal green:greenVal blue:blueVal alpha:1.0f];
}

- (IBAction)blueSlider:(id)sender {
    blueVal = self.blueSlider.value;
    self.myView.backgroundColor = [UIColor colorWithRed:redVal green:greenVal blue:blueVal alpha:1.0f];
}



@end
