"
TextField label
"
Class {
	#name : #MDLTextFieldLabel,
	#superclass : #WALabelTag,
	#category : 'Material-Design-Lite-Components-Forms'
}

{ #category : #initialization }
MDLTextFieldLabel >> initialize [
	super initialize.
	self class: 'mdl-textfield__label'
]
