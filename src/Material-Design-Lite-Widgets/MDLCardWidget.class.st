"
High level widget to render a card
"
Class {
	#name : #MDLCardWidget,
	#superclass : #MDLHighLevelWidget,
	#instVars : [
		'componentOrBlocks',
		'cardActions'
	],
	#category : 'Material-Design-Lite-Widgets-Cards'
}

{ #category : #options }
MDLCardWidget >> actionsBordered [
	self cardActions beBordered
]

{ #category : #adding }
MDLCardWidget >> addAction: aComponentOrBlock [
	self cardActions addComponentOrBlock: aComponentOrBlock
]

{ #category : #adding }
MDLCardWidget >> addComponentOrBlock: aComponentOrBlock [
	componentOrBlocks add: aComponentOrBlock
]

{ #category : #adding }
MDLCardWidget >> addMedia: aBlock [
	self addComponentOrBlock: (MDLCardMediaWidget newWith: aBlock)
]

{ #category : #adding }
MDLCardWidget >> addTextContainer: aString [
	self addComponentOrBlock: (MDLCardTextContainerWidget newWithContent: aString)
]

{ #category : #adding }
MDLCardWidget >> addTextContainer: anObject class: cssClasses [
	self
		addComponentOrBlock: (MDLCardTextContainerWidget newWithContent: anObject class: cssClasses)
]

{ #category : #adding }
MDLCardWidget >> addTitle: aString level: aNumber [
	self deprecated: 'Use #title:level: instead'.
	self title: aString level: aNumber
]

{ #category : #adding }
MDLCardWidget >> addTitle: aString level: aNumber class: cssClasses [
	self deprecated: 'Use #title:level:class: instead'.
	self title: aString level: aNumber class: cssClasses
]

{ #category : #accessing }
MDLCardWidget >> cardActions [
	^ cardActions
		ifNil: [ cardActions := MDLCardActionsWidget new.
			self addComponentOrBlock: cardActions.
			^ cardActions ]
]

{ #category : #initialization }
MDLCardWidget >> initialize [
	super initialize.
	componentOrBlocks := OrderedCollection new.
	self class: 'mdl-card-widget'
]

{ #category : #rendering }
MDLCardWidget >> renderContentOn: html [
	| card |
	card := html mdlCard.
	self addPropertiesToBrush: card.
	card with: [ self renderInnerWidgetsOn: html ]
]

{ #category : #rendering }
MDLCardWidget >> renderInnerWidgetsOn: html [
	componentOrBlocks
		do: [ :aComponentOrBlock | 
			aComponentOrBlock isBlock
				ifTrue: [ aComponentOrBlock cull: html ]
				ifFalse: [ html render: aComponentOrBlock ] ]
]

{ #category : #accessing }
MDLCardWidget >> shadow: aNumber [
	"aNumber must be between 2 and 24"

	properties at: #shadow: put: aNumber
]

{ #category : #adding }
MDLCardWidget >> title: aString [
	self addComponentOrBlock: (MDLCardTitle newWithTitle: aString level: 2)
]

{ #category : #adding }
MDLCardWidget >> title: aString class: cssClasses [
	self addComponentOrBlock: (MDLCardTitle newWithTitle: aString level: 2 class: cssClasses)
]

{ #category : #adding }
MDLCardWidget >> title: aString level: aNumber [
	self addComponentOrBlock: (MDLCardTitle newWithTitle: aString level: aNumber)
]

{ #category : #adding }
MDLCardWidget >> title: aString level: aNumber class: cssClasses [
	self
		addComponentOrBlock: (MDLCardTitle newWithTitle: aString level: aNumber class: cssClasses)
]
