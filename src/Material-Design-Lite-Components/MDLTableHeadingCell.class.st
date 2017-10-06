"
Table heading
"
Class {
	#name : #MDLTableHeadingCell,
	#superclass : #WATableHeadingTag,
	#category : 'Material-Design-Lite-Components-Tables'
}

{ #category : #initialization }
MDLTableHeadingCell >> initialize [
	super initialize.
	self class: 'mdl-data-table__cell--non-numeric'
]
