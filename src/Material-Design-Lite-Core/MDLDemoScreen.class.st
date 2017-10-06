"
I represent an Abstract screen for the demo application.

I have an iconUrl to help displaying it in the drawer.

Title and Icon must be implemented in subclasses.
"
Class {
	#name : #MDLDemoScreen,
	#superclass : #MDLScreen,
	#category : 'Material-Design-Lite-Core-Example-Components'
}

{ #category : #accessing }
MDLDemoScreen >> codeOf: aSymbol [
	"I take a method selector I contains and return his source code without the declaration."

	^ String streamContents: [:stream |
		(self class sourceCodeAt: aSymbol) lines allButFirst
			do: [:ea | stream nextPutAll: ea]
			separatedBy: [stream nextPutAll: GRPlatform current newline]]

]

{ #category : #accessing }
MDLDemoScreen >> description [
	"I should return a String that is the global description of the component."

	^ self subclassResponsibility
]

{ #category : #accessing }
MDLDemoScreen >> icon [
	self subclassResponsibility 
]

{ #category : #accessing }
MDLDemoScreen >> iconUrl [
	^ MDLDemoLibrary urlOf: self icon
]

{ #category : #rendering }
MDLDemoScreen >> render: componentsMap withCardSizeOf: anInteger on: html [
	html mdlGrid
		class: 'examples';
		with: [ 
					componentsMap
						valuesDo: [ :symbol | 
							html mdlLayoutSpacer.
							html mdlCell
								size: anInteger;
								with: [ self perform: symbol with: html ] ].
					html mdlLayoutSpacer ].
	html
		mdlGrid: [ 
			componentsMap
				keysDo: [ :title | 
					html mdlLayoutSpacer.
					html mdlCell
						size: anInteger;
						with: title ].
			html mdlLayoutSpacer ].
	componentsMap
		valuesDo: [ :symbol | 
			html
				preformatted: [ 
					html code
						class: 'smalltalk';
						with: (self codeOf: symbol) ] ]
]

{ #category : #rendering }
MDLDemoScreen >> renderContentOn: html [
	html div
		class: #'screen-content';
		with: [ 
					html heading level5
						class: #'section-title';
						with: self title.
					html paragraph: self description.
					self renderScreenContentOn: html ]
]

{ #category : #rendering }
MDLDemoScreen >> renderScreenContentOn: html [
	self subclassResponsibility
]

{ #category : #accessing }
MDLDemoScreen >> title [
	"I should return the title of the component screen."

	^ self subclassResponsibility
]
