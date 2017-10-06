"
The Material Design Lite (MDL) switch component is an enhanced version of the standard HTML <input type=""checkbox""> element. A switch consists of a short horizontal ""track"" with a prominent circular state indicator and, typically, text that clearly communicates a binary condition that will be set or unset when the user clicks or touches it.
"
Class {
	#name : #MDLSwitchLabel,
	#superclass : #WATagBrush,
	#category : 'Material-Design-Lite-Components-Forms'
}

{ #category : #'as yet unclassified' }
MDLSwitchLabel >> initialize [
	super initialize.
	self class: 'mdl-switch__label'
]

{ #category : #'as yet unclassified' }
MDLSwitchLabel >> tag [
	^ 'span'
]
