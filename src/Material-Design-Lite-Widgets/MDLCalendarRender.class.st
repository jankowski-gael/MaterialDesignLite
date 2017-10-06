"
I represent a calendar
"
Class {
	#name : #MDLCalendarRender,
	#superclass : #MDLWidget,
	#instVars : [
		'daysList',
		'calendar'
	],
	#category : 'Material-Design-Lite-Widgets-Calendar'
}

{ #category : #'as yet unclassified' }
MDLCalendarRender >> computeNumbers [
	| numbers length |
	numbers := OrderedCollection new.
	1 to: calendar currentDate month start dayOfWeek -1 do: [ :i | numbers add: 0 ].
	1 to: calendar currentDate month daysInMonth do: [ :i | numbers add: i ].
	length := numbers size.
	length to: 42 do: [ :i | numbers add: 0 ].
	^ numbers
]

{ #category : #accessing }
MDLCalendarRender >> daysList [
	^ daysList
]

{ #category : #initialization }
MDLCalendarRender >> initialize [
	super initialize.
	daysList := { 'S' . 'M' . 'T' . 'W' . 'T' . 'F' . 'S' }.
	calendar := MDLCalendar new
]

{ #category : #'as yet unclassified' }
MDLCalendarRender >> renderButtonOn: html withIcon: anIconBlock [
	html
		mdlCellDesktop: 2
		tablet: 1
		phone: 1
		with: [ 
			html mdlButton
				icon;
				rippleEffect;
				style: 'color: rgba(0,0,0,0.7)';
				with: [ anIconBlock value ] ]
]

{ #category : #rendering }
MDLCalendarRender >> renderButtonsOn: html [
	html mdlButton
		id: 'PickDate';
		primaryColor;
		with: 'Confirm'.
	html mdlButton
		primaryColor;
		with: 'Cancel'
]

{ #category : #'as yet unclassified' }
MDLCalendarRender >> renderCalendarBodyOn: html [
	html table"
		class: 'mdl-textfield--full-width';"
		with: [ self renderDaysOn: html.
			self renderNumbersOn: html ]
]

{ #category : #'as yet unclassified' }
MDLCalendarRender >> renderCalendarContentOn: html [
	html mdlGrid
		style: 'text-align: center; font-size: 14px; line-height:2; color: rgba(0,0,0,1)';
		with: [ 
			self renderCalendarHeaderOn: html.
			html
				mdlCellDesktop: 12
				tablet: 8
				phone: 4
				with: [ self renderCalendarBodyOn: html ] ]
]

{ #category : #'as yet unclassified' }
MDLCalendarRender >> renderCalendarCurrentDate [
	^ (WriteStream with: calendar currentDate asDateAndTime dayOfWeekAbbreviation)
		nextPutAll: ', ';
		nextPutAll: calendar currentDate monthAbbreviation;
		nextPutAll: ' ';
		nextPutAll: calendar currentDate dayOfMonth asString;
		contents
]

{ #category : #'as yet unclassified' }
MDLCalendarRender >> renderCalendarHeaderOn: html [
	self renderButtonOn: html withIcon: [ html mdlIcon: 'navigate_before' ].
	"self renderDateOn: html."
	self renderButtonOn: html withIcon: [ html mdlIcon: 'navigate_next' ]
]

{ #category : #rendering }
MDLCalendarRender >> renderContentOn: html [
	html mdlButton
		id: 'Calendar1';
		raised;
		rippleEffect;
		with: 'Pick a date'.
	html mdlDialog
		style: 'padding: 0px;';
		openButtonId: 'Calendar1';
		closeButtonId: 'PickDate';
		with: [ html mdlDialogTitle
				class: 'mdl-typography--text-center mdl-color--primary mdl-color-text--primary-contrast';
				style: 'padding : 24px';
				with: self renderCalendarCurrentDate.
			html mdlDialogContent
				style: 'padding : 0px';
				with: [ self renderCalendarContentOn: html ].
			html mdlDialogActions: [ self renderButtonsOn: html ] ]
]

{ #category : #'as yet unclassified' }
MDLCalendarRender >> renderDaysOn: html [
	html tableColumnGroup: [ 1 to: 7 do: [ :i | html tableColumn width: '14,3%' ] ].
	html tableHead: [ html tableRow: [ self daysList do: [ :day | html tableHeading style: 'color: rgba(0,0,0,0.5)';with: day ] ] ]
]

{ #category : #'as yet unclassified' }
MDLCalendarRender >> renderNumbersOn: html [
	| numbers index |
	numbers := self computeNumbers.
	index := 1.
	html
		tableBody: [ 
			1 to: 6 do: [ :i | 
				html
					tableRow: [ 
						1 to: 7 do: [ :j | 
							(numbers at: index) = 0
								ifTrue: [ html tableData: [  ] ]
								ifFalse: [ 
									html
										tableData: [ 
											html mdlButton rippleEffect icon
												class: 'number';
												style: 'font-size: 14px';
												with: (numbers at: index) asString ] ].
							index := index + 1 ] ] ] ]
]
