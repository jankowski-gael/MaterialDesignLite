Class {
	#name : #MDLSortableTableHeaderElementSortedDescending,
	#superclass : #MDLSortableTableHeaderState,
	#category : 'Material-Design-Lite-Widgets-Table'
}

{ #category : #initialization }
MDLSortableTableHeaderElementSortedDescending >> initializeNextState [
	self
		nextState:
			(MDLSortableTableHeaderElementUnsorted new nextState: (MDLSortableTableHeaderElementSortedAscending new nextState: self))
]

{ #category : #rendering }
MDLSortableTableHeaderElementSortedDescending >> renderContentOn: html forTable: table columnIndex: i header: header [
	(header headingCellOn: html)
		sortedDescending;
		onClick:
				(html jQuery ajax
						callback: [ 
									table unsort.
									header goToNextState ];
						onSuccess: (table ajaxUpdateScriptFrom: html));
		with: header element
]
