//
//  ReviewEngine.m
//
//  Created by Danilo Priore on 23/11/11.
//  Copyright (c) 2011 Prioregroup.com. All rights reserved.
//
#define ITMS_APPS	@"itms-apps://ax.itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?type=Purple+Software&id=%@"

#import <UIKit/UIKit.h>
#import "ReviewEngine.h"

@implementation ReviewEngine


+ (void)gotoReviewWithAppID:(NSString*)appID {
	
	// id apple dell'app
	NSString *str = [NSString stringWithFormat:ITMS_APPS, appID]; 	
	// richiama il browser
	NSURL *url = [NSURL URLWithString:str];
	[[UIApplication sharedApplication] openURL:url];
}

@end
