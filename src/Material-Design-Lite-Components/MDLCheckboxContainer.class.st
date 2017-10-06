"
Checkbox container
"
Class {
	#name : #MDLCheckboxContainer,
	#superclass : #WALabelTag,
	#category : 'Material-Design-Lite-Components-Forms'
}

{ #category : #initialization }
MDLCheckboxContainer >> initialize [
	super initialize.
	self class: 'mdl-checkbox'.
	self class: 'mdl-js-checkbox'
]

{ #category : #options }
MDLCheckboxContainer >> rippleEffect [
	self class: 'mdl-js-ripple-effect'
]

{ #category : #options }
MDLCheckboxContainer >> rippleEffectIf: aBoolean [
	aBoolean
		ifTrue: [ self rippleEffect ]
]
