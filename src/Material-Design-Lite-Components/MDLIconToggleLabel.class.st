Class {
	#name : #MDLIconToggleLabel,
	#superclass : #WATagBrush,
	#category : 'Material-Design-Lite-Components-IconToggle'
}

{ #category : #'as yet unclassified' }
MDLIconToggleLabel >> initialize [
	super initialize.
	self class: 'mdl-icon-toggle__label material-icons'
]

{ #category : #'as yet unclassified' }
MDLIconToggleLabel >> tag [
	^ 'span'
]
