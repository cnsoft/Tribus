//
//  Piege.m
//  ChipmunkWrapper
//
//  Created by Aymeric Lamboley on 20/03/12.
//  Copyright (c) 2012 Sodeso. All rights reserved.
//

#import "Piege.h"

@implementation Piege

- (id) initWithName:(NSString *)paramName params:(NSDictionary *)params {
    
    if (self = [super initWithName:paramName params:params]) {
        
    }
    
    return self;
}

- (id) initWithName:(NSString *)paramName params:(NSDictionary *)params andGraphic:(SPDisplayObject *)displayObject {
    
    if (self = [super initWithName:paramName params:params andGraphic:displayObject]) {
        
    }
    
    return self;
}

- (void) destroy {
    
    [super destroy];
}

- (void) defineShape {
    
    [super defineShape];
    
    [shape setCollisionType:@"piege"];
}


- (void) simpleInit {

    [super.space addCollisionHandlerBetween:@"hero" andTypeB:@"piege" target:self begin:@selector(collisionStart: space:) preSolve:NULL postSolve:NULL separate:NULL];
}

- (BOOL) collisionStart:(CMArbiter*) arbiter space:(CMSpace*) space {

    [[NSNotificationCenter defaultCenter] postNotificationName:@"piege" object:nil];
    
    return YES;
}

@end
