"
I'm a Panel that can be used as a Tab
"
Class {
	#name : #MDLTabsPanel,
	#superclass : #MDLDivTag,
	#category : 'Material-Design-Lite-Components-Nav'
}

{ #category : #initialization }
MDLTabsPanel >> initialize [
	super initialize.
	self class: 'mdl-tabs__panel'
]

{ #category : #options }
MDLTabsPanel >> isActive [
	self class: 'is-active'
]

{ #category : #options }
MDLTabsPanel >> isActiveIf: aBoolean [
	self class: 'is-active' if: aBoolean
]
