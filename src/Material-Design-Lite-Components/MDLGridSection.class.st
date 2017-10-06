Class {
	#name : #MDLGridSection,
	#superclass : #WATagBrush,
	#category : 'Material-Design-Lite-Components-Layout'
}

{ #category : #'as yet unclassified' }
MDLGridSection >> initialize [
	super initialize.
	self class: 'mdl-grid'
]

{ #category : #'as yet unclassified' }
MDLGridSection >> tag [
	^'section'
]
