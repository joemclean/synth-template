//
//  STAppDelegate.h
//  SynthTemplate
//
//  Created by Joe McLean on 8/9/14.
//  Copyright (c) 2014 Horse Productions. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "PdAudioController.h"

@interface STAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic, readonly) PdAudioController *audioController;

@end
