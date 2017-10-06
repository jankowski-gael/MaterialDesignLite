"
I'm a mdl header
"
Class {
	#name : #MDLLayoutHeader,
	#superclass : #WATagBrush,
	#category : 'Material-Design-Lite-Components-Layout'
}

{ #category : #initialization }
MDLLayoutHeader >> initialize [
	super initialize.
	self class: 'mdl-layout__header'
]

{ #category : #options }
MDLLayoutHeader >> scroll [
	"Makes the header scroll with the content"

	self class: 'mdl-layout__header--scroll'
]

{ #category : #options }
MDLLayoutHeader >> seamed [
	"Uses a header without a shadow"

	self class: 'mdl-layout__header--seamed'
]

{ #category : #accessing }
MDLLayoutHeader >> tag [
	^ 'header'
]

{ #category : #options }
MDLLayoutHeader >> transparent [
	self class: 'mdl-layout__header--transparent'
]

{ #category : #options }
MDLLayoutHeader >> waterfall [
	"Allows a 'waterfall' effect with multiple header lines"

	self class: 'mdl-layout__header--waterfall'
]

{ #category : #options }
MDLLayoutHeader >> waterfallHideTop [
	"Hides the top rather than the bottom rows on a waterfall header"

	self class: 'mdl-layout__header--waterfall-hide-top'
]
