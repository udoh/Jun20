//
//  Jun20UIApplication.m
//  Jun20
//
//  Created by Udo Hoppenworth on 6/20/13.
//  Copyright (c) 2013 Udo Hoppenworth. All rights reserved.
//

#import "Jun20UIApplication.h"

@implementation Jun20UIApplication

-(NSString *)description {
    NSString *myString = @"This is my custom subclass of UIApplication";
    return myString;
}

-(id)init {
    self = [super init];
    if (self) {
        NSLog(@"Custom UIApplication opject initialized successfully");
        NSLog(@"UIApplication description method: %@", self.description);
    }
    return self;
}


@end
