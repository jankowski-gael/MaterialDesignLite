"
checkbox
"
Class {
	#name : #MDLCheckbox,
	#superclass : #WACheckboxTag,
	#category : 'Material-Design-Lite-Components-Forms'
}

{ #category : #initialization }
MDLCheckbox >> initialize [
	super initialize.
	self class: 'mdl-checkbox__input'
]
