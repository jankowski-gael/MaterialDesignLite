"
Radio container
"
Class {
	#name : #MDLRadioContainer,
	#superclass : #WALabelTag,
	#category : 'Material-Design-Lite-Components-Forms'
}

{ #category : #initialization }
MDLRadioContainer >> initialize [
	super initialize.
	self class: 'mdl-radio'.
	self class: 'mdl-js-radio'
]

{ #category : #options }
MDLRadioContainer >> rippleEffect [
	self class: 'mdl-js-ripple-effect'
]
