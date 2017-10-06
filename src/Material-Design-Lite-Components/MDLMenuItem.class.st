"
menu item
"
Class {
	#name : #MDLMenuItem,
	#superclass : #WATagBrush,
	#category : 'Material-Design-Lite-Components-Buttons'
}

{ #category : #'as yet unclassified' }
MDLMenuItem >> disable [
	self attributeAt: 'disabled' put: 'true'
]

{ #category : #'as yet unclassified' }
MDLMenuItem >> fullBleedDivider [
	self class: 'mdl-menu__item--full-bleed-divider'
]

{ #category : #'as yet unclassified' }
MDLMenuItem >> initialize [
	super initialize.
	self class: 'mdl-menu__item'
]

{ #category : #'as yet unclassified' }
MDLMenuItem >> tag [
	^ 'li'
]
