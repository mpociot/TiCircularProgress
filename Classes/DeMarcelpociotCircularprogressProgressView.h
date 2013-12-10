/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2013 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiBase.h"
#import "TiUIView.h"
#import "DACircularProgressView.h"

@interface DeMarcelpociotCircularprogressProgressView : TiUIView {

    DACircularProgressView* progressView;
}

@property (nonatomic, assign) BOOL animatedProgress;

@end
