Class {
	#name : #MDLNestedListTest,
	#superclass : #TestCase,
	#instVars : [
		'list'
	],
	#category : 'Material-Design-Lite-Widgets-Tests'
}

{ #category : #'as yet unclassified' }
MDLNestedListTest >> setUp [
	list := MDLNestedList new
]

{ #category : #tests }
MDLNestedListTest >> testElementsDisplayListWithLastElementSelected [
	list elements: (1 to: list listMaxSize * 2 ).
	list selectedEntity: list listMaxSize * 2.
	self assert: list elementsDisplayList size equals: list listMaxSize
]

{ #category : #tests }
MDLNestedListTest >> testElementsDisplayListWithLessThanListSize [
	list elements: (1 to: list listMaxSize).
	self assert: list elementsDisplayList size equals: list listMaxSize
]

{ #category : #tests }
MDLNestedListTest >> testElementsDisplayListWithMoreThanListSize [
	list elements: (1 to: list listMaxSize * 2 ).
	self assert: list elementsDisplayList size equals: list listMaxSize
]
