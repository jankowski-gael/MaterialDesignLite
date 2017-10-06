Class {
	#name : #MDLClickableIconContainer,
	#superclass : #WALabelTag,
	#category : 'Material-Design-Lite-Components'
}

{ #category : #options }
MDLClickableIconContainer >> fab [
	self class: 'mdl-button--fab'
]

{ #category : #initialization }
MDLClickableIconContainer >> initialize [
	super initialize.
	self class: 'mdl-button'.
	self class: 'mdl-js-button'.
	self class: 'mdl-button--icon'
]

{ #category : #options }
MDLClickableIconContainer >> miniFab [
	self class: 'mdl-button--mini-fab'
]
