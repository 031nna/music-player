//
//  AudioVC.h
//  ProjectMusicPlayer
//
//  Created by obinna merenu on 2014-08-03.
//  Copyright (c) 2014 ___obiesnotes___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>   //AVaudio library

@interface AudioVC : UIViewController<UIAlertViewDelegate>
@property (nonatomic, strong) AVAudioPlayer *audioPlayer;  //OBJECT OF TYPE AVAUDIOPLAYER

// Public methods
- (void)initPlayer:(NSString*) audioFile fileExtension:(NSString*)fileExtension;
- (void)playAudio;
- (void)pauseAudio;
- (void)setCurrentAudioTime:(float)value;
- (float)getAudioDuration;
- (NSString*)timeFormat:(float)value;
- (NSTimeInterval)getCurrentAudioTime;
- (IBAction)speakerOnOff;
- (IBAction)myAlert;
@end
