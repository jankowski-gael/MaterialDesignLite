"
I'm a tab for layouts
"
Class {
	#name : #MDLLayoutTab,
	#superclass : #WAAnchorTag,
	#category : 'Material-Design-Lite-Components-Layout'
}

{ #category : #initialization }
MDLLayoutTab >> initialize [
	super initialize.
	self class: 'mdl-layout__tab'
]

{ #category : #options }
MDLLayoutTab >> isActive [
	self class: 'is-active'
]
