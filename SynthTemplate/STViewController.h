//
//  STViewController.h
//  SynthTemplate
//
//  Created by Joe McLean on 8/9/14.
//  Copyright (c) 2014 Horse Productions. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "PdDispatcher.h"

@interface STViewController : UIViewController {
    PdDispatcher *dispatcher;
    void *patch;
}

-(IBAction)playF0:(id)sender;
-(IBAction)playFs0:(id)sender;
-(IBAction)playG0:(id)sender;
-(IBAction)playGs0:(id)sender;
-(IBAction)playA:(id)sender;
-(IBAction)playAs:(id)sender;
-(IBAction)playB:(id)sender;
-(IBAction)playC:(id)sender;
-(IBAction)playCs:(id)sender;
-(IBAction)playD:(id)sender;
-(IBAction)playDs:(id)sender;
-(IBAction)playE:(id)sender;
-(IBAction)playF:(id)sender;
-(IBAction)playFs:(id)sender;
-(IBAction)playG:(id)sender;
-(IBAction)playGs:(id)sender;
-(IBAction)playA2:(id)sender;

@end
