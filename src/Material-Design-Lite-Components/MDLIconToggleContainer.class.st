Class {
	#name : #MDLIconToggleContainer,
	#superclass : #WALabelTag,
	#category : 'Material-Design-Lite-Components-IconToggle'
}

{ #category : #initialize-release }
MDLIconToggleContainer >> initialize [
	super initialize.
	self class: 'mdl-icon-toggle'.
	self class: 'mdl-js-icon-toggle'
]

{ #category : #options }
MDLIconToggleContainer >> rippleEffect [
	self class: 'mdl-js-ripple-effect'
]
