"
radio label
"
Class {
	#name : #MDLRadioLabel,
	#superclass : #WATagBrush,
	#category : 'Material-Design-Lite-Components-Forms'
}

{ #category : #'as yet unclassified' }
MDLRadioLabel >> initialize [
	super initialize.
	self class: 'mdl-radio__label'
]

{ #category : #'as yet unclassified' }
MDLRadioLabel >> tag [
	^ 'span'
]
