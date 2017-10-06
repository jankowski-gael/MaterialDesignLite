"
I'm a text container for cards
"
Class {
	#name : #MDLCardTextContainer,
	#superclass : #MDLCardInnerDiv,
	#category : 'Material-Design-Lite-Components-Cards'
}

{ #category : #initialization }
MDLCardTextContainer >> initialize [
	super initialize.
	self class: 'mdl-card__supporting-text'
]
