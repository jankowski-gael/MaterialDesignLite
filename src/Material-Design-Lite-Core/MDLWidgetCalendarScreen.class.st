"
Screen to render MDLCalendarWidget examples
"
Class {
	#name : #MDLWidgetCalendarScreen,
	#superclass : #MDLDemoScreen,
	#category : 'Material-Design-Lite-Core-Example-Components'
}

{ #category : #accessing }
MDLWidgetCalendarScreen >> description [
	^ 'A calendar in Material Design style'
]

{ #category : #accessing }
MDLWidgetCalendarScreen >> icon [
	^ #compcalendarPng
]

{ #category : #code }
MDLWidgetCalendarScreen >> renderCalendarOn: html [
	html
		render:
			(MDLCalendarWidget new
				class: 'mdl-widget-demo-calendar';
				yourself)
]

{ #category : #rendering }
MDLWidgetCalendarScreen >> renderScreenContentOn: html [
	self render: (OrderedDictionary with: 'Calendar' -> #renderCalendarOn:) withCardSizeOf: 6 on: html
]

{ #category : #accessing }
MDLWidgetCalendarScreen >> title [
	^ 'Calendar'
]
