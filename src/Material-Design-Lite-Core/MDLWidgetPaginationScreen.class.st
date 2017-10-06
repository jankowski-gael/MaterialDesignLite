"
Screen to render MDLPaginationWidget examples
"
Class {
	#name : #MDLWidgetPaginationScreen,
	#superclass : #MDLDemoScreen,
	#category : 'Material-Design-Lite-Core-Example-Components'
}

{ #category : #accessing }
MDLWidgetPaginationScreen >> description [
	^ 'A simple pagination widget.'
]

{ #category : #accessing }
MDLWidgetPaginationScreen >> icon [
	^ #comptablesPng
]

{ #category : #private-accessing }
MDLWidgetPaginationScreen >> items [
	^ {(MDLExamplePaginationItem new
		firstName: 'Pepito';
		lastName: 'Pokitos';
		yourself).
	(MDLExamplePaginationItem new
		firstName: 'Ali';
		lastName: 'Baba';
		yourself)} asOrderedCollection
]

{ #category : #code }
MDLWidgetPaginationScreen >> renderPaginationOn: html [
	html div
		style: 'text-align: left';
		with: [ html
				render:
					((MDLPaginationWidget newWithItems: self items)
						addHeading: 'First name';
						addHeading: 'Last name';
						pageSize: 1;
						yourself) ]
]

{ #category : #rendering }
MDLWidgetPaginationScreen >> renderScreenContentOn: html [
	self render: (OrderedDictionary with: 'Pagination Widget' -> #renderPaginationOn:) withCardSizeOf: 4 on: html
]

{ #category : #accessing }
MDLWidgetPaginationScreen >> title [
	^ 'Pagination'
]
