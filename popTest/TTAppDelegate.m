//
//  TTAppDelegate.m
//  popTest
//
//  Created by David Blishen on 10/01/2014.
//
//

#import "TTAppDelegate.h"

@implementation TTAppDelegate
@synthesize things, typesOfThing;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Create the two arrays we're going to store stuff in
    
    things = [[NSMutableArray alloc] init];
    typesOfThing = [[NSMutableArray alloc] init];
    
    // Create some objects we want to use to populate the popup button values
    // These all go into the typesOfThing array via the typesArrayController
    
    TTTypeOfThing *type1 = [[TTTypeOfThing alloc] init];
    [type1 setType:@"Animal"];
    [typesArrayController addObject:type1];
    
    TTTypeOfThing *type2 = [[TTTypeOfThing alloc] init];
    [type2 setType:@"Mineral"];
    [typesArrayController addObject:type2];
    
    TTTypeOfThing *type3 = [[TTTypeOfThing alloc] init];
    [type3 setType:@"Vegtable"];
    [typesArrayController addObject:type3];
    
    // Create some objects we want to use to populate the table view itself
    // The thingType property is what is set by the popup button in the table view
    
    TTThing *thing1 = [[TTThing alloc] init];
    [thing1 setThingName:@"Potato"];
    [thing1 setThingType:@"Vegtable"];
    [thingsArrayController addObject:thing1];
    
    TTThing *thing2 = [[TTThing alloc] init];
    [thing2 setThingName:@"Kitten"];
    [thing2 setThingType:@"Animal"];
    [thingsArrayController addObject:thing2];
        
}

-(IBAction)testValues:(id)sender {
    
    for (TTThing *object in things) {
        NSLog(@"A %@, is a kind of %@", object.thingName, object.thingType);
    }
    
    
}







@end
