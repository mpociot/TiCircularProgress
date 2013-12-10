
var win = Ti.UI.createWindow({
	backgroundColor:'white'
});


// TODO: write your module tests here
var TiCircularProgress = require('de.marcelpociot.circularprogress');

var progressView = TiCircularProgress.createProgressView({
	top: 50,
	left: 50,
	height: 50,
	width: 50,
	roundedCorners: true,
	progress: 0,
	progressTintColor: 'red',
	trackTintColor: 'transparent',
	animatedProgress: true
});
win.add( progressView );


var progressView2 = TiCircularProgress.createProgressView({
	top: 200,
	left: 50,
	height: 80,
	width: 80,
	roundedCorners: false,
	progress: 0,
	progressTintColor: 'red',
	trackTintColor: 'transparent',
	animatedProgress: true
});
win.add( progressView2 );

var progressView3 = TiCircularProgress.createProgressView({
	top: 400,
	left: 50,
	height: 100,
	width: 100,
	roundedCorners: false,
	progress: 0,
	thicknessRatio: 1,
	progressTintColor: 'red',
	trackTintColor: 'black',
	animatedProgress: true
});
win.add( progressView3 );
setInterval(function(){
	progressView.progress += 0.1;	
	progressView2.progress += 0.1;	
	progressView3.progress += 0.1;	

	if( progressView.progress >= 1 )
	{
		progressView.progress = 0;
		progressView2.progress = 0;
		progressView3.progress = 0;
	}
},1000);
win.open();