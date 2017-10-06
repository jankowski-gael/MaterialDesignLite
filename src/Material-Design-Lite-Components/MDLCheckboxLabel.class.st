"
checkbox label
"
Class {
	#name : #MDLCheckboxLabel,
	#superclass : #WATagBrush,
	#category : 'Material-Design-Lite-Components-Forms'
}

{ #category : #initialization }
MDLCheckboxLabel >> initialize [
	super initialize.
	self class: 'mdl-checkbox__label'
]

{ #category : #accessing }
MDLCheckboxLabel >> tag [ 
	^ 'span'
]
