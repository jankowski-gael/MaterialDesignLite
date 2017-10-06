"
I'm a tab
"
Class {
	#name : #MDLTabsTab,
	#superclass : #WAAnchorTag,
	#category : 'Material-Design-Lite-Components-Nav'
}

{ #category : #initialization }
MDLTabsTab >> initialize [
	super initialize.
	self class: 'mdl-tabs__tab'
]

{ #category : #options }
MDLTabsTab >> isActive [
	self class: 'is-active'
]

{ #category : #options }
MDLTabsTab >> isActiveIf: aBoolean [
	self class: 'is-active' if: aBoolean
]
