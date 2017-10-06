"
I'm a Panel
"
Class {
	#name : #MDLLayoutTabPanel,
	#superclass : #MDLDivTag,
	#category : 'Material-Design-Lite-Components-Layout'
}

{ #category : #initialization }
MDLLayoutTabPanel >> initialize [
	super initialize.
	self class: 'mdl-layout__tab-panel'
]

{ #category : #options }
MDLLayoutTabPanel >> isActive [
	self class: 'is-active'
]
