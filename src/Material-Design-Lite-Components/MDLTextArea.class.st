"
I represent a textarea tag for mdl
"
Class {
	#name : #MDLTextArea,
	#superclass : #WATextAreaTag,
	#category : 'Material-Design-Lite-Components-Forms'
}

{ #category : #initialization }
MDLTextArea >> initialize [
	super initialize.
	self class: 'mdl-textfield__input'
]
