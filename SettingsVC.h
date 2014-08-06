//
//  SettingsVC.h
//  ProjectMusicPlayer
//
//  Created by obinna merenu on 2014-08-05.
//  Copyright (c) 2014 ___obiesnotes___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AudioVC.h"

@interface SettingsVC : UIViewController

@property(nonatomic,strong)AudioVC * audioPlayer2;

- (IBAction)btnMuteSound2:(id)sender;

@end
