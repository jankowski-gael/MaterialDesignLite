"
MDLtable
"
Class {
	#name : #MDLTable,
	#superclass : #WATableTag,
	#category : 'Material-Design-Lite-Components-Tables'
}

{ #category : #initialization }
MDLTable >> initialize [
	super initialize.
	self class: 'mdl-data-table mdl-js-data-table'
]

{ #category : #options }
MDLTable >> selectable [
	self class: 'mdl-data-table--selectable'
]
