"
Demo screen for the MDLMenuButtonWidget
"
Class {
	#name : #MDLWidgetMenuButtonScreen,
	#superclass : #MDLDemoScreen,
	#category : 'Material-Design-Lite-Core-Example-Components'
}

{ #category : #accessing }
MDLWidgetMenuButtonScreen >> description [
	^ 'A widget to create a button that expand to show a menu when clicked'
]

{ #category : #accessing }
MDLWidgetMenuButtonScreen >> icon [
	^ #compmenusPng
]

{ #category : #code }
MDLWidgetMenuButtonScreen >> renderMenuButtonOn: html [
	html
		render:
			((MDLMenuButtonWidget
				possibilities: #('Guillaume' 'Kévin' 'Anne' 'Cyril' 'Olivier' 'Yann')
				label: #asString
				action: [ :o | Transcript crShow: o ]
				choosingText: 'Select an user'
				description: 'Choose a user to log into the Transcript')
				sortBlock: [ :a :b | a < b ];
				yourself)
]

{ #category : #rendering }
MDLWidgetMenuButtonScreen >> renderScreenContentOn: html [
	self render: (OrderedDictionary with: 'Menu Button' -> #renderMenuButtonOn:) withCardSizeOf: 4 on: html
]

{ #category : #accessing }
MDLWidgetMenuButtonScreen >> title [
	^ 'Menu Button'
]
