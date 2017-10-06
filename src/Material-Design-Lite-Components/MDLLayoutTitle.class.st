"
I'm a title
"
Class {
	#name : #MDLLayoutTitle,
	#superclass : #WATagBrush,
	#category : 'Material-Design-Lite-Components-Layout'
}

{ #category : #initialization }
MDLLayoutTitle >> initialize [
	super initialize.
	self class: 'mdl-layout-title'
]

{ #category : #accessing }
MDLLayoutTitle >> tag [
	^'span'
]
