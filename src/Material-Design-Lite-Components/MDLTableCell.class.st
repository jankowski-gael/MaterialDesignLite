Class {
	#name : #MDLTableCell,
	#superclass : #WATableDataTag,
	#category : 'Material-Design-Lite-Components-Tables'
}

{ #category : #initialization }
MDLTableCell >> initialize [
	super initialize.
	self class: 'mdl-data-table__cell--non-numeric'
]
