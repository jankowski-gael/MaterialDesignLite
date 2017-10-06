Class {
	#name : #MDLDialogTitle,
	#superclass : #WAHeadingTag,
	#category : 'Material-Design-Lite-Components-Dialog'
}

{ #category : #initialization }
MDLDialogTitle >> initialize [
	super initialize.
	self level: 4.
	self class: 'mdl-dialog__title'
]
