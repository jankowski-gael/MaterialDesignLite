"
Screen to render MDLSelectWidget examples
"
Class {
	#name : #MDLWidgetSelectScreen,
	#superclass : #MDLDemoScreen,
	#category : 'Material-Design-Lite-Core-Example-Components'
}

{ #category : #accessing }
MDLWidgetSelectScreen >> description [
	^ 'A widget to emulate a select input in MDL style.'
]

{ #category : #accessing }
MDLWidgetSelectScreen >> icon [
	^ #compmenusPng
]

{ #category : #rendering }
MDLWidgetSelectScreen >> renderScreenContentOn: html [
	self render: (OrderedDictionary with: 'Select Widget' -> #renderSelectOn:) withCardSizeOf: 4 on: html
]

{ #category : #code }
MDLWidgetSelectScreen >> renderSelectOn: html [
	html
		form: [ 
			html
				render:
					((MDLSelectWidget
						possibilities: #(1 2 3 4 5 5)
						inputLabel: 'Select Your Number'
						labelBlock: [ :number | 
							number = 5
								ifTrue: [ '0' ]
								ifFalse: [ (number - 1) greaseString ] ]
						callback: [ :input | 
							Transcript
								<< input;
								cr ]
						selectedObject: 3
						tooltip: 'description'
						sortBlock: [ :a :b | a <= b ])
						entryTooltip: [ :number | 'Choose number: ' , number asString ];
						yourself).
			html break.
			html mdlButton
				accentColor;
				raised;
				beSubmit;
				with: 'Submit' ]
]

{ #category : #accessing }
MDLWidgetSelectScreen >> title [
	^ 'Select'
]
