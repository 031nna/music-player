//
//  FirstViewController.h
//  ProjectMusicPlayer
//
//  Created by obinna merenu on 2014-08-03.
//  Copyright (c) 2014 ___obiesnotes___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AudioVC.h"
@interface FirstViewController : UIViewController 



@property(nonatomic,strong)AudioVC * audioPlayer;

@property (weak, nonatomic) IBOutlet UILabel *lblTrackTitle;
@property (weak, nonatomic) IBOutlet UIButton *playButton;

@property (weak, nonatomic) IBOutlet UISlider *currentTimeSlider;

@property (weak, nonatomic) IBOutlet UILabel *duration;

@property (weak, nonatomic) IBOutlet UILabel *timeElapsed;

@property BOOL isPaused;

@property BOOL scrubbing;

@property NSTimer *timer;  //UPDATES CURRENT TIMER

- (IBAction)btnFoward:(id)sender;

- (IBAction)btnBackward:(id)sender;

- (IBAction)btnMute:(UIButton *)sender;
@end
