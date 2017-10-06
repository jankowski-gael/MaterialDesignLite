"
I'm a Layout drawer
"
Class {
	#name : #MDLLayoutDrawer,
	#superclass : #MDLDivTag,
	#category : 'Material-Design-Lite-Components-Layout'
}

{ #category : #initialization }
MDLLayoutDrawer >> initialize [
	super initialize.
	self class: 'mdl-layout__drawer'
]
