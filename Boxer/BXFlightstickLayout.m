/* 
 Boxer is copyright 2011 Alun Bestor and contributors.
 Boxer is released under the GNU General Public License 2.0. A full copy of this license can be
 found in this XCode project at Resources/English.lproj/BoxerHelp/pages/legalese.html, or read
 online at [http://www.gnu.org/licenses/gpl-2.0.txt].
 */


#import "BXFlightstickLayout.h"
#import "BXEmulatedJoystick.h"

@implementation BXFlightstickLayout

+ (void) load
{
	[BXJoypadLayout registerLayout: self forJoystickType: [BXCHFlightStickPro class]];
	[BXJoypadLayout registerLayout: self forJoystickType: [BXThrustmasterFCS class]];
}

+ (JoypadControllerLayout *)layout
{
    static JoypadControllerLayout *layout = nil;
    if (!layout)
    {
        layout = [[JoypadControllerLayout alloc] init];
        
            
        [layout setName: @"4-button flightstick with POV switch"];
        
        [layout addAnalogStickWithFrame: CGRectMake(0, 70, 240, 240)
                           identifier: kJoyInputAnalogStick1];
        
        //Hat-switch: top center of screen
        [layout addDpadWithFrame: CGRectMake(280, 0, 200, 200)
                      dpadOrigin: CGPointMake(380, 100)
                      identifier: kJoyInputDpad1];
        
        //Primary buttons: blue, square, located at bottom left of screen
        [layout addButtonWithFrame: CGRectMake(380,240,100,80) 
                             label: @"1" 
                          fontSize: 36
                             shape: kJoyButtonShapeSquare
                             color: kJoyButtonColorBlue
                        identifier: kJoyInputAButton];
        
        [layout addButtonWithFrame: CGRectMake(280,240,100,80) 
                             label: @"2" 
                          fontSize: 36
                             shape: kJoyButtonShapeSquare
                             color: kJoyButtonColorBlue
                        identifier: kJoyInputBButton];
        
        
        //Secondary buttons: black and rectangular, located at middle left of screen
        [layout addButtonWithFrame: CGRectMake(380,200,100,40) 
                             label: @"3" 
                          fontSize: 24
                             shape: kJoyButtonShapeSquare
                             color: kJoyButtonColorBlack
                        identifier: kJoyInputXButton];
        
        [layout addButtonWithFrame: CGRectMake(280,200,100,40) 
                             label: @"4" 
                          fontSize: 24
                             shape: kJoyButtonShapeSquare
                             color: kJoyButtonColorBlack
                        identifier: kJoyInputYButton];
        
        //Meta buttons: pill-shaped, located at the top left
        [layout addButtonWithFrame: CGRectMake(20,10,110,30) 
                             label: @"Esc" 
                          fontSize: 16
                             shape: kJoyButtonShapePill
                             color: kJoyButtonColorBlack
                        identifier: kJoyInputStartButton];
        
        [layout addButtonWithFrame: CGRectMake(150,10,110,30) 
                             label: @"Pause" 
                          fontSize: 16
                             shape: kJoyButtonShapePill
                             color: kJoyButtonColorBlack
                        identifier: kJoyInputSelectButton];
    }
    return layout;
}
@end
