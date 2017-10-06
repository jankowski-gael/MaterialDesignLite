"
A MDLCalendarTest is a test class for testing the behavior of MDLCalendar
"
Class {
	#name : #MDLCalendarTest,
	#superclass : #TestCase,
	#instVars : [
		'calendar'
	],
	#category : 'Material-Design-Lite-Widgets-Tests'
}

{ #category : #running }
MDLCalendarTest >> setUp [
	calendar := MDLCalendar new
]

{ #category : #'second week' }
MDLCalendarTest >> testDaysForWeek2Casual [
	calendar currentDate: (Date year: 2016 month: 04 day: 10).
	self assert: (calendar daysForWeek: 2) equals: (3 to: 9) asArray
]

{ #category : #international }
MDLCalendarTest >> testDaysForWeek2CasualFrenchFormat [
	calendar currentDate: (Date year: 2016 month: 04 day: 10).
	calendar firstDayOfWeekIndex: 2. "Monday"
	self assert: (calendar daysForWeek: 2) equals: (4 to: 10) asArray
]

{ #category : #'second week' }
MDLCalendarTest >> testDaysForWeek2WithFirstDayBeingASaturday [
	calendar currentDate: (Date year: 2016 month: 05 day: 10).
	self assert: (calendar daysForWeek: 2) equals: (1 to: 7) asArray
]

{ #category : #international }
MDLCalendarTest >> testDaysForWeekWithFirstDayBeingAMondayFrenchFormat [
	calendar currentDate: (Date year: 2016 month: 08 day: 10).
	calendar firstDayOfWeekIndex: 2.
	self assert: (calendar daysForWeek: 1) equals: (25 to: 31) asArray
]

{ #category : #'first week' }
MDLCalendarTest >> testDaysForWeekWithFirstDayBeingASaturday [
	calendar currentDate: (Date year: 2016 month: 05 day: 10).
	self assert: (calendar daysForWeek: 1) equals: #(24 25 26 27 28 29 30)
]

{ #category : #'first week' }
MDLCalendarTest >> testDaysForWeekWithFirstDayBeingAWeekday [
	calendar currentDate: (Date year: 2016 month: 04 day: 10).
	self assert: (calendar daysForWeek: 1) equals: #(27 28 29 30 31 1 2)
]

{ #category : #tests }
MDLCalendarTest >> testIntervalAtInitialization [
	self assert: calendar yearsInterval first equals: (Date today addMonths: -4 * 12) year.
	self assert: calendar yearsInterval last equals: (Date today addMonths: 4 * 12) year
]

{ #category : #tests }
MDLCalendarTest >> testIntervalSetCurrentDateModifyInterval [
	calendar currentDate: Date tomorrow.
	self assert: calendar yearsInterval first equals: calendar currentDate year - 4.
	self assert: calendar yearsInterval last equals: calendar currentDate year + 4
]
