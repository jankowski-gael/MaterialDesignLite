"
I'm a Button
"
Class {
	#name : #MDLButton,
	#superclass : #WAButtonTag,
	#instVars : [
		'tag'
	],
	#category : 'Material-Design-Lite-Components-Buttons'
}

{ #category : #options }
MDLButton >> accentColor [
	self class: 'mdl-button--accent'
]

{ #category : #converting }
MDLButton >> asLabel [
	tag := 'label'
]

{ #category : #options }
MDLButton >> colored [
	self class: 'mdl-button--colored'
]

{ #category : #options }
MDLButton >> fab [
	self class: 'mdl-button--fab'
]

{ #category : #attributes }
MDLButton >> for: anId [
	self attributeAt: 'for' put: anId
]

{ #category : #options }
MDLButton >> icon [
	self class: 'mdl-button--icon'
]

{ #category : #options }
MDLButton >> icon: aString [
	self
		icon;
		with: [ canvas mdlIcon: aString ]
]

{ #category : #initialization }
MDLButton >> initialize [
	super initialize.
	self class: 'mdl-button'.
	self class: 'mdl-js-button'.
	tag := super tag
]

{ #category : #options }
MDLButton >> miniFab [
	self class: 'mdl-button--mini-fab'
]

{ #category : #options }
MDLButton >> primaryColor [
	self class: 'mdl-button--primary'
]

{ #category : #options }
MDLButton >> raised [
	self class: 'mdl-button--raised'
]

{ #category : #options }
MDLButton >> rippleEffect [
	self class: 'mdl-js-ripple-effect'
]

{ #category : #accessing }
MDLButton >> tag [
	^ tag
]
