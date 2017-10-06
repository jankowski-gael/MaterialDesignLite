"
I'm a nav
"
Class {
	#name : #MDLNavigation,
	#superclass : #WATagBrush,
	#category : 'Material-Design-Lite-Components-Nav'
}

{ #category : #initialization }
MDLNavigation >> initialize [
	super initialize.
	self class: 'mdl-navigation'
]

{ #category : #accessing }
MDLNavigation >> tag [
	^ 'nav'
]
