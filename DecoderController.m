//
//  FirstViewController.m
//  CaptuvoBasicSimples
//
//  Created by zhou shadow on 4/20/15.
//  Copyright (c) 2015 Honeywell Inc. All rights reserved.
//

#import "DecoderController.h"

@interface DecoderController ()

@end

@implementation DecoderController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateDecoderUI:) name:DECODER_DATA_RECEIVED_VC object:nil] ;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateDecoderUI:(NSNotification *)notification
{
    if (notification.object!=nil&&[notification.object isKindOfClass:[NSString class]]) {
        self.scanresultlbl.text = notification.object ;
    }
}
@end
