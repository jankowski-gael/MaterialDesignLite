"
I'm representing the tables.
"
Class {
	#name : #MDLTablesScreen,
	#superclass : #MDLDemoScreen,
	#category : 'Material-Design-Lite-Core-Example-Components'
}

{ #category : #accessing }
MDLTablesScreen >> description [
	^ 'Organize data.'
]

{ #category : #accessing }
MDLTablesScreen >> icon [
	^ 'comptablesPng'
]

{ #category : #rendering }
MDLTablesScreen >> renderScreenContentOn: html [
	self renderSimpleTableOn: html
]

{ #category : #rendering }
MDLTablesScreen >> renderSimpleTableOn: html [
	html div
		class: 'centered-content';
		class: 'examples';
		with:
			[ html mdlTable shadow: 2; selectable;
				with:
					[ html
						tableHead:
							[ html
								tableRow:
									[ html mdlTableHeading: 'Material'.
									html tableHeading: 'Quantity'.
									html tableHeading: 'Price' ] ].
					html
						tableBody:
							[ html tableRow: [ 
								html mdlTableCell: 'Acrylic (Transparent)'.
								html tableData: '25'.
								html tableData: '$2.90' ].
							html tableRow: [ 
								html mdlTableCell: 'Plywood (Birch)'.
								html tableData: '50'.
								html tableData: '$1.25' ].
							html tableRow: [ 
								html mdlTableCell: 'Laminate (Gold on Blue)'.
								html tableData: '10'.
								html tableData: '$2.35' ] ] ] ].
			html break.
			html paragraph class: 'centered-content'; with: 'Data table'.
		html
		preformatted:
			[ html code
				class: 'smalltalk';
				with: self tableCode ]
]

{ #category : #rendering }
MDLTablesScreen >> tableCode [
	^ 'html mdlTable shadow: 2; selectable; with: [ 
	html tableHead: [ 
		html tableRow: [ 
			html mdlTableHeading: ''Material''.
			html tableHeading: ''Quantity''.
			html tableHeading: ''Price'' ] ].
	html tableBody: [ 
		html tableRow: [ 
			html mdlTableCell: ''Acrylic (Transparent)''.
			html tableData: ''25''.
			html tableData: ''$2.90'' ].
		html tableRow: [ 
			html mdlTableCell: ''Plywood (Birch)''.
			html tableData: ''50''.
			html tableData: ''$1.25'' ].
		html tableRow: [ 
			html mdlTableCell: ''Laminate (Gold on Blue)''.
			html tableData: ''10''.
			html tableData: ''$2.35'' ] ] ]'
]

{ #category : #accessing }
MDLTablesScreen >> title [
	^ 'Tables'
]
