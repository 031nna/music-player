//
//  AudioVC.m
//  ProjectMusicPlayer
//
//  Created by obinna merenu on 2014-08-03.
//  Copyright (c) 2014 ___obiesnotes___. All rights reserved.
//

#import "AudioVC.h"

@interface AudioVC ()

@end

@implementation AudioVC
//NEW CODE BELOW TOP CODE NOT NEEDED
/*
 * Init the Player with Filename and FileExtension
 */
- (void)initPlayer:(NSString*) audioFile fileExtension:(NSString*)fileExtension
{
    NSURL *audioFileLocationURL = [[NSBundle mainBundle] URLForResource:audioFile withExtension:fileExtension];
    NSError *error;
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:audioFileLocationURL error:&error];
}

/*
 * Simply fire the play Event
 */
- (void)playAudio {
    [self.audioPlayer play];
}

/*
 * Simply fire the pause Event
 */
- (void)pauseAudio {
    [self.audioPlayer pause];
}






///////////////////////////////////////

- (IBAction)fowardAudio{
    
}

- (IBAction)rewindAudio{
    
}

///////////////////////////////////////


- (IBAction)myAlert{
    
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Obi Alert" message:@"UNDER-CONSTRUCTION \n play with the mute" delegate:self cancelButtonTitle:@"Damn!" otherButtonTitles:@"Ok", nil];
    [alertView show];
}



/*
 * Format the float time values like duration
 * to format with minutes and seconds
 */
-(NSString*)timeFormat:(float)value{
    
    float minutes = floor(lroundf(value)/60);
    float seconds = lroundf(value) - (minutes * 60);
    
    int roundedSeconds = lroundf(seconds);
    int roundedMinutes = lroundf(minutes);
    
    NSString *time = [[NSString alloc]
                      initWithFormat:@"%d:%02d",
                      roundedMinutes, roundedSeconds];
    return time;
}

//
- (IBAction)speakerOnOff
{
    static BOOL muted = NO;
    if (muted) {
        [self.audioPlayer setVolume:1.0];
    } else {
        [self.audioPlayer setVolume:0.0];
    }
    muted = !muted;
}

/*
 * To set the current Position of the
 * playing audio File
 */
- (void)setCurrentAudioTime:(float)value {
    [self.audioPlayer setCurrentTime:value];
}

/*
 * Get the time where audio is playing right now
 */
- (NSTimeInterval)getCurrentAudioTime {
    return [self.audioPlayer currentTime];
}

/*
 * Get the whole length of the audio file
 */
- (float)getAudioDuration {
    return [self.audioPlayer duration];
}
@end
