"
Small status descriptors for UI elements with a icon.
"
Class {
	#name : #MDLIconBadge,
	#superclass : #MDLBadge,
	#category : 'Material-Design-Lite-Components-Badge'
}

{ #category : #initialize-release }
MDLIconBadge >> initialize [
	super initialize.
	self class: 'material-icons'
]

{ #category : #'as yet unclassified' }
MDLIconBadge >> tag [
	^ 'div'
]
