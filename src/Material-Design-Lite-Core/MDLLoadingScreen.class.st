"
I represent loading components screen.
"
Class {
	#name : #MDLLoadingScreen,
	#superclass : #MDLDemoScreen,
	#category : 'Material-Design-Lite-Core-Example-Components'
}

{ #category : #accessing }
MDLLoadingScreen >> description [
	^ 'Indicate loading and progress states.'
]

{ #category : #accessing }
MDLLoadingScreen >> icon [
	^ 'comploadingPng'
]

{ #category : #code }
MDLLoadingScreen >> progressBarBufferingCode [
	^ 'html mdlProgressBar id: ''bufferingProgressBar''.
html script:
	''
	document.querySelector(''''#bufferingProgressBar'''').addEventListener(''''mdl-componentupgraded'''', function() {
		this.MaterialProgress.setProgress(33);
		this.MaterialProgress.setBuffer(87);
	});'''
]

{ #category : #code }
MDLLoadingScreen >> progressBarCode [ 
	^ 'html mdlProgressBar id: ''progressBar''.
html script:
	''setInterval(function(){document.querySelector(''#progressBar'').MaterialProgress.setProgress(100/60* (new Date()).getSeconds());}, 1000);'''
]

{ #category : #rendering }
MDLLoadingScreen >> renderBufferingProgressBarOn: html [
	html div
		class: 'examples';
		with: [ 
					html mdlProgressBar
						style: 'margin: auto;';
						id: 'bufferingProgressBar'.
					html
						script:
							'document.querySelector(''#bufferingProgressBar'').addEventListener(''mdl-componentupgraded'', function() {
	this.MaterialProgress.setProgress(33);
	this.MaterialProgress.setBuffer(87);
});'.
					html paragraph: 'Buffering progress bar' ].
	html
		preformatted: [ 
			html code
				class: 'smalltalk';
				with:
						self progressBarBufferingCode ]
]

{ #category : #rendering }
MDLLoadingScreen >> renderIndeterminateProgressBarOn: html [
	html div
		class: 'examples';
		with: [ 
					html mdlProgressBar
						style: 'margin: auto;';
						indeterminate.
					html paragraph: 'Indeterminate progress bar' ].
	html
		preformatted: [ 
			html code
				class: 'smalltalk';
				with: 'html mdlProgressBar indeterminate' ]
]

{ #category : #rendering }
MDLLoadingScreen >> renderProgressBarOn: html [
	html div
		class: 'examples';
		with: [ html mdlProgressBar style: 'margin: auto;'; id: 'progressBar'.
			html
				script:
					'setInterval(function(){document.querySelector(''#progressBar'').MaterialProgress.setProgress(100/60* (new Date()).getSeconds());}, 1000);'.
			html paragraph: 'Progress bar' ].
	html preformatted: [ html code class: 'smalltalk';
				with:
					self progressBarCode ]
]

{ #category : #rendering }
MDLLoadingScreen >> renderScreenContentOn: html [
	self renderProgressBarOn: html.
	self renderBufferingProgressBarOn: html.
	self renderIndeterminateProgressBarOn: html.
	self renderSpinnersOn: html
]

{ #category : #rendering }
MDLLoadingScreen >> renderSpinnersOn: html [
	html mdlGrid
		class: 'examples';
		with: [ 
					html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html div
								class: 'centered-content';
								with: [ html mdlSpinner active ].
							html paragraph: 'Spinner' ]
						size: 2.
						html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html div
								class: 'centered-content';
								with: [ html mdlSpinner active singleColor ].
							html paragraph: 'Spinner single Colored' ]
						size: 2.
					html mdlLayoutSpacer ].
	html
		preformatted: [ 
			html code
				class: 'smalltalk';
				with:
						self spinner1Code ].
						html
		preformatted: [ 
			html code
				class: 'smalltalk';
				with:
						self spinner2Code ].
]

{ #category : #code }
MDLLoadingScreen >> spinner1Code [ 
	^ 'html mdlSpinner active'
]

{ #category : #code }
MDLLoadingScreen >> spinner2Code [ 
	^ 'html mdlSpinner active singleColor'
]

{ #category : #accessing }
MDLLoadingScreen >> title [
	^ 'Loading'
]
