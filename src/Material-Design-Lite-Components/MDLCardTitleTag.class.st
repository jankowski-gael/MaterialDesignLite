"
I'm a card title div
"
Class {
	#name : #MDLCardTitleTag,
	#superclass : #MDLCardInnerDiv,
	#category : 'Material-Design-Lite-Components-Cards'
}

{ #category : #initialization }
MDLCardTitleTag >> initialize [
	super initialize.
	self class: 'mdl-card__title'
]
