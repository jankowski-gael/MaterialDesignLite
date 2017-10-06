Class {
	#name : #MDLSortableTableHeaderState,
	#superclass : #Object,
	#instVars : [
		'nextState'
	],
	#category : 'Material-Design-Lite-Widgets-Table'
}

{ #category : #'instance creation' }
MDLSortableTableHeaderState class >> for: element [
	^ self new element: element
]

{ #category : #initialization }
MDLSortableTableHeaderState >> initializeNextState [
	self subclassResponsibility
]

{ #category : #accessing }
MDLSortableTableHeaderState >> nextState [
	nextState ifNil: [ self initializeNextState ].
	^ nextState
]

{ #category : #accessing }
MDLSortableTableHeaderState >> nextState: anObject [
	nextState := anObject
]

{ #category : #rendering }
MDLSortableTableHeaderState >> renderContentOn: html forTable: table columnIndex: i header: header [
	self subclassResponsibility 
]
