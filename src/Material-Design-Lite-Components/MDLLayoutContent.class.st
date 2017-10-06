"
I'm the content of a Layout
"
Class {
	#name : #MDLLayoutContent,
	#superclass : #WATagBrush,
	#category : 'Material-Design-Lite-Components-Layout'
}

{ #category : #initialization }
MDLLayoutContent >> initialize [
	super initialize.
	self class: 'mdl-layout__content'
]

{ #category : #initialization }
MDLLayoutContent >> tag [
	^ 'main'
]
