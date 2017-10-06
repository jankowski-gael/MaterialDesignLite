"
Widget to basically display a calendar with MDL style
"
Class {
	#name : #MDLCalendarWidget,
	#superclass : #MDLHighLevelWidget,
	#instVars : [
		'daysList',
		'calendar',
		'calendarId',
		'callback'
	],
	#category : 'Material-Design-Lite-Widgets-Calendar'
}

{ #category : #accessing }
MDLCalendarWidget >> calendar: anObject [
	calendar := anObject
]

{ #category : #private }
MDLCalendarWidget >> calendarCurrentDateString [
	^ (WriteStream with: calendar currentDate asDateAndTime dayOfWeekAbbreviation)
		nextPutAll: ', ';
		nextPutAll: calendar currentDate monthAbbreviation;
		nextPutAll: ' ';
		nextPutAll: calendar currentDate dayOfMonth asString;
		contents
]

{ #category : #accessing }
MDLCalendarWidget >> calendarFullDateComponent [
	^ MDLCardTitle new
		title: self calendarCurrentDateString;
		level: 2;
		yourself
]

{ #category : #accessing }
MDLCalendarWidget >> callback: aOneArgBlock [
	aOneArgBlock argumentCount ~= 1
		ifTrue: [ ^ self error: '1 argument expected' ].
	callback := aOneArgBlock
]

{ #category : #accessing }
MDLCalendarWidget >> currentDate: aDate [
	calendar currentDate: aDate
]

{ #category : #accessing }
MDLCalendarWidget >> daysList [
	^ daysList
]

{ #category : #private-rendering }
MDLCalendarWidget >> displayDate: aDate on: html [
	html mdlButton
		class:
			((aDate = Date today and: [ aDate ~= calendar currentDate ])
				ifTrue: [ 'mdl-color-text--primary' ]);
		class:
			(aDate = calendar currentDate
				ifTrue: [ 'mdl-color-text--primary-contrast mdl-color--primary' ]);
		class:
			(aDate month = calendar currentDate month
				ifFalse: [ 'disabled' ]);
		rippleEffect;
		icon;
		onClick: (self scriptUpdateDate: aDate on: html);
		with: aDate dayOfMonth greaseString
]

{ #category : #private }
MDLCalendarWidget >> goToNextMonth [
	calendar nextMonth
]

{ #category : #private }
MDLCalendarWidget >> goToNextYears [
	calendar nextYears
]

{ #category : #private }
MDLCalendarWidget >> goToPreviousMonth [
	calendar previousMonth
]

{ #category : #private }
MDLCalendarWidget >> goToPreviousYears [
	calendar previousYears
]

{ #category : #initialization }
MDLCalendarWidget >> initialize [
	super initialize.
	daysList := {'S' . 'M' . 'T' . 'W' . 'T' . 'F' . 'S'}.
	self class: 'mdl-calendar-widget'.
	calendar := MDLCalendar new
]

{ #category : #private }
MDLCalendarWidget >> monthesNames [
	^ Date monthNames
]

{ #category : #private-rendering }
MDLCalendarWidget >> renderButtonNamed: aString renderingMethod: aSymbol on: html [
	html mdlButton
		rippleEffect;
		onClick:
			(((html jQuery id: calendarId) find: '.mdl-card__supporting-text') load
				html: [ :ajaxHtml | self perform: aSymbol with: ajaxHtml ]);
		with: aString
]

{ #category : #private-rendering }
MDLCalendarWidget >> renderButtonWithIcon: anIcon action: aSymbol on: html [
	html
		mdlCellDesktop: 2
		tablet: 1
		phone: 1
		with: [ html mdlButton
				onClick:
					(html jQuery ajax
						callback: [ self perform: aSymbol ];
						onComplete:
							((html jQuery id: calendarId) load
								html: [ :ajaxHtml | self renderCalendarOn: ajaxHtml ]));
				icon;
				rippleEffect;
				style: 'color: rgba(0,0,0,0.7)';
				with: [ html mdlIcon: anIcon ] ]
]

{ #category : #rendering }
MDLCalendarWidget >> renderCalendarBodyOn: html [
	html table
		class: 'mdl-textfield--full-width';
		with: [ self renderDaysOn: html.
			self renderWeeksOn: html ]
]

{ #category : #rendering }
MDLCalendarWidget >> renderCalendarContentOn: html [
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

{ #category : #rendering }
MDLCalendarWidget >> renderCalendarHeaderOn: html [
	self renderButtonWithIcon: 'navigate_before' action: #goToPreviousMonth on: html.
	self renderCurrentMonthOn: html.
	self renderButtonWithIcon: 'navigate_next' action: #goToNextMonth on: html
]

{ #category : #rendering }
MDLCalendarWidget >> renderCalendarOn: html [
	self renderCalendarTitleOn: html.
	self renderCalendarContentOn: html
]

{ #category : #rendering }
MDLCalendarWidget >> renderCalendarTitleOn: html [
	html div
		mdlBackgroundColorPrimary;
		class: 'mdl-calendar__title mdl-color-text--primary-contrast';
		with: [ html heading
				level3;
				with: self calendarCurrentDateString ]
]

{ #category : #rendering }
MDLCalendarWidget >> renderContentOn: html [
	html div
		id: (calendarId := html nextId);
		class: 'mdl-calendar';
		with: [ self renderCalendarOn: html ].
	callback ifNotNil: [ html hiddenInput callback: [ callback value: calendar currentDate ] ]
]

{ #category : #rendering }
MDLCalendarWidget >> renderCurrentMonthOn: html [
	html
		mdlCellDesktop: 8
		tablet: 6
		phone: 2
		with: [ self
				renderButtonNamed: calendar currentDate monthName
				renderingMethod: #renderMonthesOn:
				on: html.
			html space.
			self
				renderButtonNamed: calendar currentDate year greaseString
				renderingMethod: #renderYearsOn:
				on: html ]
]

{ #category : #private-rendering }
MDLCalendarWidget >> renderDate: aDate on: html [
	html tableData with: [ self displayDate: aDate on: html ]
]

{ #category : #private-rendering }
MDLCalendarWidget >> renderDaysOn: html [
	html tableColumnGroup: [ 1 to: 7 do: [ :i | html tableColumn width: '14,3%' ] ].
	html
		tableHead: [ html
				tableRow: [ self daysList
						do: [ :day | 
							html tableHeading
								class: 'mdl-calendar__mini-day';
								with: day ] ] ]
]

{ #category : #private-rendering }
MDLCalendarWidget >> renderMonthesOn: html [
	html mdlGrid
		style: 'text-align: center';
		with: [ self monthesNames
				do: [ :aString | 
					html mdlCell
						class: 'month-cell';
						class:
							(aString = calendar currentDate monthName
								ifTrue: [ 'active' ]);
						onClick:
							(html jQuery ajax
								callback: [ calendar goToMonth: (Month indexOfMonth: aString) ];
								onComplete:
									((html jQuery id: calendarId) load
										html: [ :ajaxHtml | self renderCalendarOn: ajaxHtml ]));
						desktopSize: 4;
						with: aString ] ]
]

{ #category : #private-rendering }
MDLCalendarWidget >> renderWeek: aWeek on: html [
	aWeek dates do: [ :aDate | self renderDate: aDate on: html ]
]

{ #category : #private-rendering }
MDLCalendarWidget >> renderWeeksOn: html [
	calendar currentDate month weeks
		do: [ :aWeek | html tableRow: [ self renderWeek: aWeek on: html ] ]
]

{ #category : #private-rendering }
MDLCalendarWidget >> renderYearsHeaderOn: html [
	self
		renderYearsIntervalButtonWithIcon: 'navigate_before'
		action: #goToPreviousYears
		on: html.
	html
		mdlCellDesktop: 8
		tablet: 6
		phone: 2
		with:
			(String
				streamContents: [ :aStream | 
					aStream
						nextPutAll: calendar yearsInterval first greaseString;
						nextPutAll: ' - ';
						nextPutAll: calendar yearsInterval last greaseString ]).
	self
		renderYearsIntervalButtonWithIcon: 'navigate_next'
		action: #goToNextYears
		on: html
]

{ #category : #private-rendering }
MDLCalendarWidget >> renderYearsIntervalButtonWithIcon: anIcon action: aSymbol on: html [
	html
		mdlCellDesktop: 2
		tablet: 1
		phone: 1
		with: [ html mdlButton
				onClick:
					(html jQuery ajax
						callback: [ self perform: aSymbol ];
						onComplete:
							(((html jQuery id: calendarId) find: '.mdl-card__supporting-text') load
								html: [ :ajaxHtml | self renderYearsOn: ajaxHtml ]));
				icon;
				rippleEffect;
				style: 'color: rgba(0,0,0,0.7)';
				with: [ html mdlIcon: anIcon ] ]
]

{ #category : #private-rendering }
MDLCalendarWidget >> renderYearsOn: html [
	html mdlGrid
		style: 'text-align: center';
		with: [ self renderYearsHeaderOn: html.
			calendar yearsInterval
				do: [ :aYear | 
					html mdlCell
						class: 'year-cell';
						class:
							(aYear = calendar currentDate year
								ifTrue: [ 'active' ]);
						onClick:
							(html jQuery ajax
								callback: [ calendar goToYear: aYear ];
								onComplete:
									((html jQuery id: calendarId) load
										html: [ :ajaxHtml | self renderCalendarOn: ajaxHtml ]));
						desktopSize: 4;
						with: aYear greaseString ] ]
]

{ #category : #private-rendering }
MDLCalendarWidget >> renderYersIntervalButtonWithIcon: anIcon action: aSymbol on: html [
	html
		mdlCellDesktop: 2
		tablet: 1
		phone: 1
		with: [ html mdlButton
				onClick:
					(html jQuery ajax
						callback: [ self perform: aSymbol ];
						onComplete:
							(((html jQuery id: calendarId) find: '.mdl-supporting__text') load
								html: [ :ajaxHtml | self renderYearsOn: ajaxHtml ]));
				icon;
				rippleEffect;
				style: 'color: rgba(0,0,0,0.7)';
				with: [ html mdlIcon: anIcon ] ]
]

{ #category : #private-rendering }
MDLCalendarWidget >> scriptUpdateDate: aDate on: html [
	^ html jQuery ajax
		callback: [ self updateCalendarDayWith: aDate ];
		onComplete:
			((html jQuery id: calendarId) load html: [ :ajaxHtml | self renderCalendarOn: ajaxHtml ])
]

{ #category : #private }
MDLCalendarWidget >> updateCalendarDayWith: aDate [
	calendar currentDate: aDate
]
