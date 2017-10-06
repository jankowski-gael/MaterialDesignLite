"
I'm a navigation link
"
Class {
	#name : #MDLNavigationLink,
	#superclass : #WAAnchorTag,
	#category : 'Material-Design-Lite-Components-Nav'
}

{ #category : #options }
MDLNavigationLink >> beCurrent [
    self class: 'mdl-navigation__link--current'
]

{ #category : #options }
MDLNavigationLink >> beCurrentIf: aBlockOrBoolean [
	aBlockOrBoolean value
		ifTrue: [ self beCurrent ]
]

{ #category : #initialization }
MDLNavigationLink >> initialize [
	super initialize.
	self class: 'mdl-navigation__link'
]
