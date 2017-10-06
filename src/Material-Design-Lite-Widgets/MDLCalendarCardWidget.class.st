"
Calendar widget in a card
"
Class {
	#name : #MDLCalendarCardWidget,
	#superclass : #MDLCalendarWidget,
	#category : 'Material-Design-Lite-Widgets-Calendar'
}

{ #category : #private }
MDLCalendarCardWidget >> calendarCurrentDateString [
	^ (WriteStream with: calendar currentDate asDateAndTime dayOfWeekAbbreviation)
		nextPutAll: ', ';
		nextPutAll: calendar currentDate monthAbbreviation;
		nextPutAll: ' ';
		nextPutAll: calendar currentDate dayOfMonth asString;
		contents
]

{ #category : #accessing }
MDLCalendarCardWidget >> calendarFullDateComponent [
	^ MDLCardTitle new
		title: self calendarCurrentDateString;
		level: 2;
		yourself
]

{ #category : #accessing }
MDLCalendarCardWidget >> daysList [
	^ daysList
]

{ #category : #private-rendering }
MDLCalendarCardWidget >> displayDate: aDate on: html [
	html mdlButton
		class:
			(aDate = calendar currentDate
				ifTrue: [ 'active' ]);
		class:
			(aDate month = calendar currentDate month
				ifFalse: [ 'disabled' ]);
		rippleEffect;
		icon;
		onClick: (self scriptUpdateDate: aDate on: html);
		with: aDate dayOfMonth greaseString
]

{ #category : #private }
MDLCalendarCardWidget >> goToMonth: anObject [
	calendar goToMonth: anObject
]

{ #category : #private }
MDLCalendarCardWidget >> goToNextMonth [
	calendar nextMonth
]

{ #category : #private }
MDLCalendarCardWidget >> goToNextYears [
	calendar nextYears
]

{ #category : #private }
MDLCalendarCardWidget >> goToPreviousMonth [
	calendar previousMonth
]

{ #category : #private }
MDLCalendarCardWidget >> goToPreviousYears [
	calendar previousYears
]

{ #category : #private }
MDLCalendarCardWidget >> monthesNames [
	^ Date monthNames
]

{ #category : #private }
MDLCalendarCardWidget >> onCompleteScriptOn: html [
	^ JSScript new
		add: ((html jQuery id: calendarId) load html: [ :ajaxHtml | self renderCalendarOn: ajaxHtml ]);
		yourself
]

{ #category : #private-rendering }
MDLCalendarCardWidget >> renderButtonNamed: aString renderingMethod: aSymbol on: html [
	html mdlButton
		rippleEffect;
		onClick:
			(((html jQuery id: calendarId) find: '.mdl-card__supporting-text') load
				html: [ :ajaxHtml | self perform: aSymbol with: ajaxHtml ]);
		with: aString
]

{ #category : #private-rendering }
MDLCalendarCardWidget >> renderButtonWithIcon: anIcon action: aSymbol on: html [
	html
		mdlCellDesktop: 2
		tablet: 1
		phone: 1
		with: [ html mdlButton
				onClick:
					(html jQuery ajax
						callback: [ self perform: aSymbol ];
						onComplete: (self onCompleteScriptOn: html));
				icon;
				rippleEffect;
				style: 'color: rgba(0,0,0,0.7)';
				with: [ html mdlIcon: anIcon ] ]
]

{ #category : #private-rendering }
MDLCalendarCardWidget >> renderCalendarBodyOn: html [
	html table
		class: 'mdl-textfield--full-width';
		with: [ self renderDaysOn: html.
			self renderWeeksOn: html ]
]

{ #category : #private-rendering }
MDLCalendarCardWidget >> renderCalendarContentOn: html [
	html mdlGrid
		style: 'text-align: center; font-size: 14px; line-height:2; color: rgba(0,0,0,1);';
		with: [ 
			self renderCalendarHeaderOn: html.
			html
				mdlCellDesktop: 12
				tablet: 8
				phone: 4
				with: [ self renderCalendarBodyOn: html ] ]
]

{ #category : #private-rendering }
MDLCalendarCardWidget >> renderCalendarHeaderOn: html [
	self renderButtonWithIcon: 'navigate_before' action: #goToPreviousMonth on: html.
	self renderDateOn: html.
	self renderButtonWithIcon: 'navigate_next' action: #goToNextMonth on: html
]

{ #category : #rendering }
MDLCalendarCardWidget >> renderCalendarOn: html [
	html
		render:
			(MDLCardWidget new
				shadow: 2;
				addProperties: properties;
				addComponentOrBlock: self calendarFullDateComponent;
				addTextContainer: [ self renderCalendarContentOn: html ])
]

{ #category : #rendering }
MDLCalendarCardWidget >> renderContentOn: html [
	html div
		id: (calendarId := html nextId);
		with: [ self renderCalendarOn: html ]
]

{ #category : #private-rendering }
MDLCalendarCardWidget >> renderDate: aDate on: html [
	html tableData with: [ self displayDate: aDate on: html ]
]

{ #category : #private-rendering }
MDLCalendarCardWidget >> renderDateOn: html [
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
MDLCalendarCardWidget >> renderDaysOn: html [
	html tableColumnGroup: [ 1 to: 7 do: [ :i | html tableColumn width: '14,3%' ] ].
	html
		tableHead: [ html
				tableRow: [ self daysList
						do: [ :day | 
							html tableHeading
								style: 'color: rgba(0,0,0,0.5)';
								with: day ] ] ]
]

{ #category : #private-rendering }
MDLCalendarCardWidget >> renderMonthesOn: html [
	html mdlGrid
		style: 'text-align: center';
		with: [ self monthesNames
				do: [ :aString | 
					html mdlCell
						class: 'month-cell';
						class:
							(aString = calendar currentDate monthName
								ifTrue: [ 'active' ]);
						onClick: (self scriptGoToMonth: (Month indexOfMonth: aString) on: html);
						desktopSize: 4;
						with: aString ] ]
]

{ #category : #private-rendering }
MDLCalendarCardWidget >> renderWeek: aWeek on: html [
	aWeek dates do: [ :aDate | self renderDate: aDate on: html ]
]

{ #category : #private-rendering }
MDLCalendarCardWidget >> renderWeeksOn: html [
	calendar currentDate month weeks
		do: [ :aWeek | html tableRow: [ self renderWeek: aWeek on: html ] ]
]

{ #category : #private-rendering }
MDLCalendarCardWidget >> renderYearsHeaderOn: html [
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
MDLCalendarCardWidget >> renderYearsIntervalButtonWithIcon: anIcon action: aSymbol on: html [
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
MDLCalendarCardWidget >> renderYearsOn: html [
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
								onComplete: (self onCompleteScriptOn: html));
						desktopSize: 4;
						with: aYear greaseString ] ]
]

{ #category : #private-rendering }
MDLCalendarCardWidget >> renderYersIntervalButtonWithIcon: anIcon action: aSymbol on: html [
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
MDLCalendarCardWidget >> scriptGoToMonth: aMonth on: html [
	^ html jQuery ajax
		callback: [ self goToMonth: aMonth ];
		onComplete: (self onCompleteScriptOn: html)
]

{ #category : #private-rendering }
MDLCalendarCardWidget >> scriptUpdateDate: aDate on: html [
	^ html jQuery ajax
		callback: [ self updateCalendarDayWith: aDate ];
		onComplete: (self onCompleteScriptOn: html)
]

{ #category : #private }
MDLCalendarCardWidget >> updateCalendarDayWith: aDate [
	calendar currentDate: aDate
]
