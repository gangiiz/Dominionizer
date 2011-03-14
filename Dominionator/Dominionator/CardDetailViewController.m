//
//  CardDetailViewController.m
//  Dominionator
//
//  Created by Nur Monson on 3/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CardDetailViewController.h"


@implementation CardDetailViewController

@synthesize cardNameLabel=_cardNameLabel;
@synthesize cardTypeLabel=_cardTypeLabel;
@synthesize cardRulesLabel=_cardRulesLabel;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil properties:(NSDictionary*)properties
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
		_properties = [properties retain];
    }
    return self;
}

- (void)dealloc
{
	[_properties release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

	[self.cardRulesLabel setNumberOfLines:100];
	self.cardNameLabel.text = [_properties valueForKey:@"card"];
	self.cardRulesLabel.text = [_properties valueForKey:@"rules"];
	self.cardTypeLabel.text = [_properties valueForKey:@"type"];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
