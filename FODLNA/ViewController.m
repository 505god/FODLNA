//
//  ViewController.m
//  FODLNA
//
//  Created by winston on 2019/7/17.
//  Copyright © 2019 App. All rights reserved.
//

#import "ViewController.h"
#import "CLUPnP.h"

@interface ViewController ()<CLUPnPServerDelegate>
{
    CLUPnPServer *upd;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //search device
    upd = [CLUPnPServer shareServer];
    upd.delegate = self;
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [upd start];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [upd stop];
}

#pragma mark - CLUPnPServerDelegate

- (void)upnpSearchChangeWithResults:(NSArray<CLUPnPDevice *> *)devices{
    NSLog(@"devices = %@", devices);
}

- (void)upnpSearchErrorWithError:(NSError *)error{
    NSLog(@"error==%@", error);
}


@end
