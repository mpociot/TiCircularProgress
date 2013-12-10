/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2013 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "DeMarcelpociotCircularprogressProgressView.h"

@implementation DeMarcelpociotCircularprogressProgressView


-(DACircularProgressView*)progressView
{
    if( progressView == nil )
    {
        NSLog(@"INITIALIZING VIEW");
        progressView = [[DACircularProgressView alloc] initWithFrame:[self frame]];
        [self addSubview:progressView];
    }
    return progressView;
}

-(void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds
{
    if (progressView != nil) {
        
        // You must call the special method 'setView:positionRect' against
        // the TiUtils helper class. This method will correctly layout your
        // child view within the correct layout boundaries of the new bounds
        // of your view.
        
        [TiUtils setView:progressView positionRect:bounds];
    }
}

-(void)setProgressTintColor_:(id)color
{
    [[self progressView] setProgressTintColor:[TiUtils colorValue:color].color];
}

-(void)setTrackTintColor_:(id)color
{
    [[self progressView] setTrackTintColor:[TiUtils colorValue:color].color];
}


-(void)setRoundedCorners_:(id)roundedCorners
{
    BOOL corners = [TiUtils boolValue:roundedCorners def:YES];
    DACircularProgressView *view = [self progressView];
    view.roundedCorners = corners;
}

-(void)setAnimatedProgress_:(BOOL)animatedProgress
{
    self.animatedProgress = animatedProgress;
}

-(void)setProgress_:(id)progress
{
    DACircularProgressView *view = [self progressView];
    if( self.animatedProgress )
    {
        [view setProgress:[TiUtils floatValue:progress] animated:YES];
    } else {
        [view setProgress:[TiUtils floatValue:progress]];
    }
}

-(float)progress
{
    return [self progressView].progress;
}

-(void)setThicknessRatio_:(id)ratio
{
    DACircularProgressView *view = [self progressView];
    view.thicknessRatio = [TiUtils floatValue:ratio];
}

-(float)thicknessRatio:(id)ratio
{
    return [self progressView].thicknessRatio;
}

@end
