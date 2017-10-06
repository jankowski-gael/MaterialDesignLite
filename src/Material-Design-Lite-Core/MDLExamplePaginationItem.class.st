"
I represent an object that implement #tableItems
"
Class {
	#name : #MDLExamplePaginationItem,
	#superclass : #GRObject,
	#instVars : [
		'firstName',
		'lastName'
	],
	#category : 'Material-Design-Lite-Core-Example-Components'
}

{ #category : #accessing }
MDLExamplePaginationItem >> firstName: aString [ 
	firstName := aString
]

{ #category : #accessing }
MDLExamplePaginationItem >> lastName: aString [ 
	lastName := aString
]

{ #category : #accessing }
MDLExamplePaginationItem >> tableItems [
	^ {firstName.
	lastName}
]
