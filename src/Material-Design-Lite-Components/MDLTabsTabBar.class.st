"
I'm a tab bar
"
Class {
	#name : #MDLTabsTabBar,
	#superclass : #MDLDivTag,
	#category : 'Material-Design-Lite-Components-Nav'
}

{ #category : #initialization }
MDLTabsTabBar >> initialize [
	super initialize.
	self class: 'mdl-tabs__tab-bar'
]
