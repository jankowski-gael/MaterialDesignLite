Class {
	#name : #MDLSortableTableHeader,
	#superclass : #Object,
	#instVars : [
		'element',
		'currentState',
		'unsortedState'
	],
	#category : 'Material-Design-Lite-Widgets-Table'
}

{ #category : #'instance creation' }
MDLSortableTableHeader class >> for: element [
	^ self new element: element
]

{ #category : #converting }
MDLSortableTableHeader >> asMDLSortableTableHeader [
	^ self
]

{ #category : #accessing }
MDLSortableTableHeader >> currentState [
	^ currentState ifNil: [
		self unsortedState: MDLSortableTableHeaderElementUnsorted new.
		self currentState: self unsortedState.
		currentState ]
]

{ #category : #accessing }
MDLSortableTableHeader >> currentState: anObject [
	currentState := anObject
]

{ #category : #'state handling' }
MDLSortableTableHeader >> defaultState [
	^ MDLSortableTableHeaderElementUnsorted
]

{ #category : #accessing }
MDLSortableTableHeader >> element [
	^ element
]

{ #category : #accessing }
MDLSortableTableHeader >> element: anObject [
	element := anObject
]

{ #category : #'state handling' }
MDLSortableTableHeader >> goToNextState [
	self currentState: self currentState nextState
]

{ #category : #rendering }
MDLSortableTableHeader >> headingCellOn: html [
	^ html mdlTableHeading
		style: 'cursor: pointer;';
		yourself
]

{ #category : #rendering }
MDLSortableTableHeader >> renderContentOn: aRenderer forTable: table columnIndex: i [
	self currentState 
		renderContentOn: aRenderer 
		forTable: table 
		columnIndex: i 
		header: self
]

{ #category : #rendering }
MDLSortableTableHeader >> tableCellOn: html [
	^ html mdlTableCell
]

{ #category : #sorting }
MDLSortableTableHeader >> unsort [
	self currentState: self unsortedState
]

{ #category : #accessing }
MDLSortableTableHeader >> unsortedState [
	^ unsortedState
]

{ #category : #accessing }
MDLSortableTableHeader >> unsortedState: anObject [
	unsortedState := anObject
]
