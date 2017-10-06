"
I'm a Card title text
"
Class {
	#name : #MDLCardTitleText,
	#superclass : #MDLCardInnerDiv,
	#instVars : [
		'level'
	],
	#category : 'Material-Design-Lite-Components-Cards'
}

{ #category : #initialization }
MDLCardTitleText >> initialize [
	super initialize.
	self level1.
	self class: 'mdl-card__title-text'
]

{ #category : #accessing }
MDLCardTitleText >> level [
	^ level
]

{ #category : #convenience }
MDLCardTitleText >> level1 [
	level := 1
]

{ #category : #convenience }
MDLCardTitleText >> level2 [
	level := 2
]

{ #category : #convenience }
MDLCardTitleText >> level3 [
	level := 3
]

{ #category : #convenience }
MDLCardTitleText >> level4 [
	level := 4
]

{ #category : #convenience }
MDLCardTitleText >> level5 [
	level := 5
]

{ #category : #convenience }
MDLCardTitleText >> level6 [
	level := 6
]

{ #category : #accessing }
MDLCardTitleText >> level: anInteger [
	level := (anInteger max: 1) min: 6
]

{ #category : #accessing }
MDLCardTitleText >> tag [
	^ 'h' , self level asString
]
