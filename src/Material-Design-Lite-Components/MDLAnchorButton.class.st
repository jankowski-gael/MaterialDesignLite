Class {
	#name : #MDLAnchorButton,
	#superclass : #WAAnchorTag,
	#category : 'Material-Design-Lite-Components-Buttons'
}

{ #category : #options }
MDLAnchorButton >> accentColor [
	self class: 'mdl-button--accent'
]

{ #category : #options }
MDLAnchorButton >> colored [
	self class: 'mdl-button--colored'
]

{ #category : #options }
MDLAnchorButton >> fab [
	self class: 'mdl-button--fab'
]

{ #category : #options }
MDLAnchorButton >> icon [
	self class: 'mdl-button--icon'
]

{ #category : #initialization }
MDLAnchorButton >> initialize [
	super initialize.
	self class: 'mdl-button'.
	self class: 'mdl-js-button'.
	
]

{ #category : #options }
MDLAnchorButton >> miniFab [
	self class: 'mdl-button--mini-fab'
]

{ #category : #options }
MDLAnchorButton >> primaryColor [
	self class: 'mdl-button--primary'
]

{ #category : #options }
MDLAnchorButton >> raised [
	self class: 'mdl-button--raised'
]

{ #category : #options }
MDLAnchorButton >> rippleEffect [
	self class: 'mdl-js-ripple-effect'
]
