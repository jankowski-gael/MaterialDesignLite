"
I'm a Card.
"
Class {
	#name : #MDLCardTag,
	#superclass : #MDLDivTag,
	#instVars : [
		'links',
		'title',
		'beCollapsible'
	],
	#category : 'Material-Design-Lite-Components-Cards'
}

{ #category : #initialization }
MDLCardTag >> initialize [
	super initialize.
	self class: 'mdl-card'
]
