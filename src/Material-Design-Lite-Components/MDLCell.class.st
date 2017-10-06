"
I'm a MDL Column
Use me into grid
"
Class {
	#name : #MDLCell,
	#superclass : #MDLDivTag,
	#category : 'Material-Design-Lite-Components-Layout'
}

{ #category : #positionning }
MDLCell >> bottom [
	self class: 'mdl-cell--bottom'
]

{ #category : #sizes }
MDLCell >> desktopSize: aNumber [
	self class: 'mdl-cell--', aNumber asString, '-col-desktop'
]

{ #category : #hiding }
MDLCell >> hideDesktop [
	self class: 'mdl-cell--hide-desktop'
]

{ #category : #hiding }
MDLCell >> hidePhone [
	self class: 'mdl-cell--hide-phone'
]

{ #category : #hiding }
MDLCell >> hideTablet [
	self class: 'mdl-cell--hide-tablet'
]

{ #category : #initialization }
MDLCell >> initialize [
	super initialize.
	self class: 'mdl-cell'
]

{ #category : #positionning }
MDLCell >> middle [
	self class: 'mdl-cell--middle'
]

{ #category : #sizes }
MDLCell >> phoneSize: aNumber [
	self class: 'mdl-cell--', aNumber asString, '-col-phone'
]

{ #category : #sizes }
MDLCell >> size: aNumber [
	self class: 'mdl-cell--', aNumber asString, '-col'
]

{ #category : #positionning }
MDLCell >> stretch [
	self class: 'mdl-cell--stretch'
]

{ #category : #sizes }
MDLCell >> tabletSize: aNumber [
	self class: 'mdl-cell--', aNumber asString, '-col-tablet'
]

{ #category : #positionning }
MDLCell >> top [
	self class: 'mdl-cell--top'
]
