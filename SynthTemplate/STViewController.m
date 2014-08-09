//
//  STViewController.m
//  SynthTemplate
//
//  Created by Joe McLean on 8/9/14.
//  Copyright (c) 2014 Horse Productions. All rights reserved.
//

#import "STViewController.h"

@interface STViewController ()

@end

@implementation STViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	dispatcher = [[PdDispatcher alloc] init];
    [PdBase setDelegate:dispatcher];
    patch = [PdBase openFile:@"basic_synth_engine.pd" path:[[NSBundle mainBundle] resourcePath]];
    if (!patch) {
        NSLog(@"Couldn't load patch.");
        //fail gracefully someday.
    }
}

-(void)viewDidUnload {
    [super viewDidUnload];
    [PdBase closeFile:patch];
    [PdBase setDelegate:nil];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - keyboard callbacks

-(void)playNote:(int)n {
    [PdBase sendFloat:n toReceiver:@"midinote"];
    [PdBase sendBangToReceiver:@"trigger"];
}

-(IBAction)playF0:(id)sender{
    [self playNote:41];
}

-(IBAction)playFs0:(id)sender{
    [self playNote:42];
}

-(IBAction)playG0:(id)sender{
    [self playNote:43];
}

-(IBAction)playGs0:(id)sender{
    [self playNote:44];
}

-(IBAction)playA:(id)sender{
    [self playNote:45];
}

-(IBAction)playAs:(id)sender{
    [self playNote:46];
}

-(IBAction)playB:(id)sender{
    [self playNote:47];
}

-(IBAction)playC:(id)sender{
    [self playNote:48];
}

-(IBAction)playCs:(id)sender{
    [self playNote:49];
}

-(IBAction)playD:(id)sender{
    [self playNote:50];
}


-(IBAction)playDs:(id)sender{
    [self playNote:51];
}

-(IBAction)playE:(id)sender{
    [self playNote:52];
}

-(IBAction)playF:(id)sender{
    [self playNote:53];
}

-(IBAction)playFs:(id)sender{
    [self playNote:54];
}

-(IBAction)playG:(id)sender{
    [self playNote:55];
}

-(IBAction)playGs:(id)sender{
    [self playNote:56];
}

-(IBAction)playA2:(id)sender{
    [self playNote:57];
}

@end
