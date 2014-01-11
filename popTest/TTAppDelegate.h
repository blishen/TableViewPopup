//
//  TTAppDelegate.h
//  popTest
//
//  Created by David Blishen on 10/01/2014.
//
//

#import <Cocoa/Cocoa.h>
#import "TTThing.h"
#import "TTTypeOfThing.h"

@interface TTAppDelegate : NSObject <NSApplicationDelegate, NSTableViewDelegate>  {
            
    IBOutlet NSArrayController*	thingsArrayController;
    IBOutlet NSArrayController*	typesArrayController;
    

}

@property (assign) IBOutlet NSWindow *window;
@property (nonatomic, retain) NSMutableArray *things;
@property (nonatomic, retain) NSMutableArray *typesOfThing;

// Just to prove it all works

-(IBAction)testValues:(id)sender;




@end
