"
This is the tabs container
"
Class {
	#name : #MDLTabsContainer,
	#superclass : #MDLDivTag,
	#category : 'Material-Design-Lite-Components-Nav'
}

{ #category : #initialization }
MDLTabsContainer >> initialize [
	super initialize.
	self class: 'mdl-tabs'.
	self class: 'mdl-js-tabs'
]

{ #category : #options }
MDLTabsContainer >> rippleEffect [
	self class: 'mdl-js-ripple-effect'
]
