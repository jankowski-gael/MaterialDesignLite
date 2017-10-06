"
Dropdown menu
"
Class {
	#name : #MDLMenu,
	#superclass : #WAUnorderedListTag,
	#category : 'Material-Design-Lite-Components-Buttons'
}

{ #category : #options }
MDLMenu >> bottomLeft [
	self class: 'mdl-menu--bottom-left'
]

{ #category : #options }
MDLMenu >> bottomRight [
	self class: 'mdl-menu--bottom-right'
]

{ #category : #options }
MDLMenu >> for: anId [
	self attributeAt: 'for' put: anId
]

{ #category : #initialization }
MDLMenu >> initialize [
	super initialize.
	self class: 'mdl-menu'.
	self class: 'mdl-js-menu'
]

{ #category : #options }
MDLMenu >> rippleEffect [
	self class: 'mdl-js-ripple-effect'
]

{ #category : #options }
MDLMenu >> topLeft [
	self class: 'mdl-menu--top-left'
]

{ #category : #options }
MDLMenu >> topRight [
	self class: 'mdl-menu--top-right'
]
