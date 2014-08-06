//
//  SettingsVC.m
//  ProjectMusicPlayer
//
//  Created by obinna merenu on 2014-08-05.
//  Copyright (c) 2014 ___obiesnotes___. All rights reserved.
//

#import "SettingsVC.h"

@interface SettingsVC ()

@end

@implementation SettingsVC



- (void)viewDidLoad
{
    [super viewDidLoad];
     self.audioPlayer2 = [[AudioVC alloc]init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnMuteSound2:(id)sender {
    [self.audioPlayer2 speakerOnOff];
}


@end
