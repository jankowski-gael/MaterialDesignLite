Class {
	#name : #MDLSortableTableHeaderElementUnsorted,
	#superclass : #MDLSortableTableHeaderState,
	#category : 'Material-Design-Lite-Widgets-Table'
}

{ #category : #initialization }
MDLSortableTableHeaderElementUnsorted >> initializeNextState [
	self
		nextState:
			(MDLSortableTableHeaderElementSortedAscending new
				nextState: (MDLSortableTableHeaderElementSortedDescending new nextState: self))
]

{ #category : #rendering }
MDLSortableTableHeaderElementUnsorted >> renderContentOn: html forTable: table columnIndex: i header: header [
	(header headingCellOn: html)
		onClick:
				(html jQuery ajax
						callback: [ 
									table sortAscendingAtRow: i.
									header goToNextState ];
						onSuccess: (table ajaxUpdateScriptFrom: html));
		with: header element
]
