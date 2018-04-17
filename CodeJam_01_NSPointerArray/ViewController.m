//
//  ViewController.m
//  CodeJam_01_NSPointerArray
//
//  Created by anthony volkov on 4/16/18.
//  Copyright © 2018 anthony volkov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    @autoreleasepool {
     
#pragma mark - 1. Create pointer array and add 10 objects inside.
        //    NSPointerArray *pointerArray = [NSPointerArray pointerArrayWithOptions:(NSPointerFunctionsWeakMemory)];
        NSPointerArray *pointerArray = [NSPointerArray weakObjectsPointerArray];
        for (int q = 0; q < 10; q++) {
            [pointerArray addPointer:[NSNumber numberWithInt:arc4random()%10]];
        }
        //    for (NSString *str in pointerArray) {
        //        NSLog(@"%@", str);
        //    }
        
        
        
#pragma mark - 2. Check arrays count.
        NSLog(@"array count = %lu", (unsigned long)[pointerArray count]);
        
        
        
#pragma mark - 3. Nil several objects, added to the array and check count once again.
        NSLog(@"---------------");
        
        [pointerArray replacePointerAtIndex:4 withPointer:nil];
        [pointerArray replacePointerAtIndex:1 withPointer:nil];
        [pointerArray replacePointerAtIndex:9 withPointer:nil];
        //    for (NSString *str in pointerArray) {
        //        NSLog(@"%@", str);
        //    }
        NSLog(@"array count = %lu", (unsigned long)[pointerArray count]);
        
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
