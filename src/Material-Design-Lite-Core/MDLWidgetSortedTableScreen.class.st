"
Screen to render MDLSortedTable examples
"
Class {
	#name : #MDLWidgetSortedTableScreen,
	#superclass : #MDLDemoScreen,
	#category : 'Material-Design-Lite-Core-Example-Components'
}

{ #category : #accessing }
MDLWidgetSortedTableScreen >> description [
	^ 'A widget to get a paginated table with a sort function.'
]

{ #category : #accessing }
MDLWidgetSortedTableScreen >> icon [
	^ #comptablesPng
]

{ #category : #rendering }
MDLWidgetSortedTableScreen >> renderScreenContentOn: html [
	self render: (OrderedDictionary with: 'Sorted Table Widget' -> #renderSortedTableOn:) withCardSizeOf: 8 on: html
]

{ #category : #code }
MDLWidgetSortedTableScreen >> renderSortedTableOn: html [
	html div
		style: 'text-align: left';
		with: [ html
				render:
					(MDLSortableTable new
						header: {'Class' . 'SuperClass' . 'Number of subclasses'};
						rows: [ WAObject allSubclasses
								collect: [ :class | 
									{class printString.
									class superclass printString.
									class subclasses size} ] ];
						rowsPerPagePossibilities: #(10 50 100 200)) ]

]

{ #category : #accessing }
MDLWidgetSortedTableScreen >> title [
	^ 'Sorted Table'
]
