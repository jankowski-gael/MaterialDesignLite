"
I'm representing sliders components screen
"
Class {
	#name : #MDLSlidersScreen,
	#superclass : #MDLDemoScreen,
	#category : 'Material-Design-Lite-Core-Example-Components'
}

{ #category : #accessing }
MDLSlidersScreen >> complexeSlider [
	^ OrderedDictionary with: 'Complexe Slider' -> #renderComplexeSliderOn:
]

{ #category : #accessing }
MDLSlidersScreen >> description [
	^ 'Selecting a value out of a range.'
]

{ #category : #accessing }
MDLSlidersScreen >> icon [
	^ 'compslidersPng'
]

{ #category : #rendering }
MDLSlidersScreen >> renderComplexeSliderOn: html [
	html
		mdlSliderContainer: [ 
			| outputId |
			outputId := html nextId.
			html label
				for: html nextId;
				with: 'A better example'.
			html mdlIcon: #hourglass_empty.
			html mdlSlider
				onInput: outputId , '.value = ' , html lastId , '.value';
				id: html lastId;
				min: 0;
				max: 10000;
				step: 100;
				value: 100;
				showBounds.
			html output
				id: outputId;
				for: html lastId;
				with: 100 ]
]

{ #category : #rendering }
MDLSlidersScreen >> renderDefaultSliderOn: html [
	html div
		class: 'centered-content';
		class: 'examples';
		with: [ 
					html mdlSlider
						min: 0;
						max: 10000;
						value: 0.
					html paragraph: 'Default slider' ].
	html
		preformatted: [ 
			html code
				class: 'smalltalk';
				with: self sliderCode ]
]

{ #category : #rendering }
MDLSlidersScreen >> renderScreenContentOn: html [
	self renderDefaultSliderOn: html.
	self renderSliderWithDefaultValueOn: html.
	self renderSliderDisabledOn: html.
	self render: self complexeSlider withCardSizeOf: 4 on: html
]

{ #category : #rendering }
MDLSlidersScreen >> renderSliderDisabledOn: html [
	html div
		class: 'examples';
		class: 'centered-content';
		with: [ 
					html mdlSlider
						min: 0;
						max: 300;
						value: 10;
						disabled.
					html paragraph: 'Disabled slider' ].
	html
		preformatted: [ 
			html code
				class: 'smalltalk';
				with: self sliderDisabledCode ]
]

{ #category : #rendering }
MDLSlidersScreen >> renderSliderWithDefaultValueOn: html [
	html div
		class: 'examples';
		class: 'centered-content';
		with: [ 
					html mdlSlider
						min: 0;
						max: 100;
						value: 75.
					html paragraph: 'Slider with a default value' ].
	html
		preformatted: [ 
			html code
				class: 'smalltalk';
				with: self sliderDefaultValueCode ]
]

{ #category : #code }
MDLSlidersScreen >> sliderCode [
	^ 'html mdlSlider
	min:0;
	max: 10000;
	value: 0'
]

{ #category : #code }
MDLSlidersScreen >> sliderDefaultValueCode [
	^ 'html mdlSlider
	min:0;
	max: 100;
	value: 75'
]

{ #category : #code }
MDLSlidersScreen >> sliderDisabledCode [
	^ 'html mdlSlider
	min:0;
	max: 300;
	value: 10;
	disabled'
]

{ #category : #accessing }
MDLSlidersScreen >> title [
	^ 'Sliders'
]
