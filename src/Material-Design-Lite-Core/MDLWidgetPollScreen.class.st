"
Screen to render MDLPollWidget examples
"
Class {
	#name : #MDLWidgetPollScreen,
	#superclass : #MDLDemoScreen,
	#category : 'Material-Design-Lite-Core-Example-Components'
}

{ #category : #accessing }
MDLWidgetPollScreen >> description [
	^ 'A simple poll widget.'
]

{ #category : #accessing }
MDLWidgetPollScreen >> icon [
	^ #comppollPng
]

{ #category : #code }
MDLWidgetPollScreen >> renderPollOn: html [
	html
		render:
			(MDLCardWidget new
				class: 'mdl-card-poll-demo';
				title: 'Poll widget';
				shadow: 2;
				addTextContainer: [ html render: MDLPollWidget new ];
				yourself)
]

{ #category : #rendering }
MDLWidgetPollScreen >> renderScreenContentOn: html [
	self render: (OrderedDictionary with: 'Poll Widget' -> #renderPollOn:) withCardSizeOf: 4 on: html
]

{ #category : #accessing }
MDLWidgetPollScreen >> title [
	^ 'Poll'
]
