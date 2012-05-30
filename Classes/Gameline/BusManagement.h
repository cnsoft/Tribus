//
//  BusManagement.h
//  ChipmunkWrapper
//
//  Created by Aymeric Lamboley on 04/05/12.
//  Copyright (c) 2012 Sodeso. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CitrusEngine.h"
#import "CitrusObject.h"
#import "Hero.h"
#import "AnimationSequence.h"

@interface BusManagement : NSObject {
    
    CitrusEngine *ce;
    
    Hero *hero;
    
    NSArray *travel;
    
    NSTimer *timer;
    
    int indice;
    
    AnimationSequence *animTaedioFumee;
}

- (id) initWithData:(NSString *) pathForResource andHero:(Hero *) heroParam;

- (void) start;
- (void) stop;

- (void) creerEnnemi;

@end
