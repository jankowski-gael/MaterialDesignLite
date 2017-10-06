"
I am a screen to show how to use a MDLProgressBarWidget
"
Class {
	#name : #MDLWidgetProgressBarScreen,
	#superclass : #MDLDemoScreen,
	#category : 'Material-Design-Lite-Core-Example-Components'
}

{ #category : #accessing }
MDLWidgetProgressBarScreen >> description [
	^ 'Indicate loading and progress states.'
]

{ #category : #accessing }
MDLWidgetProgressBarScreen >> hiddenProgressBar [
	^ OrderedDictionary with: 'Hidden progress bar' -> #renderHiddenProgressBarOn:
]

{ #category : #accessing }
MDLWidgetProgressBarScreen >> icon [
	^ 'comploadingPng'
]

{ #category : #code }
MDLWidgetProgressBarScreen >> renderHiddenProgressBarOn: html [
	| progression progressBar |
	progression := 0.
	html render: (progressBar := MDLProgressBarWidget progression: [ progression ]) hidden.
	html break.
	html mdlButton
		onClick:
				(progressBar showScript: html)
						,
							(html jQuery ajax
								callback: [ 
									[ 
									[ progression < 1 ]
										whileTrue: [ 
											progression := progression + (1/10).
											(Delay forSeconds: 1) wait ]. Transcript show: progression ] fork ]);
		with: 'Click on me to appear'
]

{ #category : #rendering }
MDLWidgetProgressBarScreen >> renderScreenContentOn: html [
	self render: self synchronizedProgressBar withCardSizeOf: 3 on: html.
	self render: self hiddenProgressBar withCardSizeOf: 4 on: html.
]

{ #category : #code }
MDLWidgetProgressBarScreen >> renderSynchronizedProgressBarOn: html [
	| progression |
	progression := 0.
	html
		render:
			((MDLProgressBarWidget progression: [ progression ])
				refreshTime: 0.2 seconds; "optional with 1s by default"
				yourself).
	html break.
	html mdlButton
		onClick: (html jQuery ajax callback: [ progression := progression + 0.2 ]);
		with: 'Click on me to progress'
]

{ #category : #code }
MDLWidgetProgressBarScreen >> renderSynchronizedProgressBarOnTimeOn: html [
	| progress lastTimestamp |
	progress := 0.
	lastTimestamp := 0.
	html
		render:
			((MDLProgressBarWidget
				progression: [ 
					(Time millisecondsSince: lastTimestamp) >= 400
						ifTrue: [ progress := progress + 0.01. lastTimestamp := Time millisecondClockValue 
				].
			progress ])
				refreshTime: 0.2 seconds; "optional with 1s by default"
				yourself)
]

{ #category : #accessing }
MDLWidgetProgressBarScreen >> synchronizedProgressBar [
	^ OrderedDictionary
		with: 'Synchronized progress bar' -> #renderSynchronizedProgressBarOn:
		with: 'Synchronized progress bar 2' -> #renderSynchronizedProgressBarOnTimeOn:
]

{ #category : #accessing }
MDLWidgetProgressBarScreen >> title [
	^ 'Progress Bar'
]
