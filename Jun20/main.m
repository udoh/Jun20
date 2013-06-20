//
//  main.m
//  Jun20
//
//  Created by Udo Hoppenworth on 6/20/13.
//  Copyright (c) 2013 Udo Hoppenworth. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Jun20AppDelegate.h"
#import "Jun20UIApplication.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        
        NSLog(@"Number of arguments = %d", argc);
        
        for (int i = 0; i < argc; i++) {
            NSLog(@"argv[%d] = %s", i, argv[i]);
        }
        
        return UIApplicationMain(argc, argv, NSStringFromClass([Jun20UIApplication class]), NSStringFromClass([Jun20AppDelegate class]));
    }
}
