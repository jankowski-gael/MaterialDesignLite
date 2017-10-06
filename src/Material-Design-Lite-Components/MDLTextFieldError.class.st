"
text field error
"
Class {
	#name : #MDLTextFieldError,
	#superclass : #WATagBrush,
	#category : 'Material-Design-Lite-Components-Forms'
}

{ #category : #initialization }
MDLTextFieldError >> initialize [
	super initialize.
	self class: 'mdl-textfield__error'
]

{ #category : #accessing }
MDLTextFieldError >> tag [
	^ 'span'
]
