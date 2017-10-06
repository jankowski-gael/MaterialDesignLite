"
Screen to render MDLTabWidget examples
"
Class {
	#name : #MDLWidgetTabScreen,
	#superclass : #MDLDemoScreen,
	#category : 'Material-Design-Lite-Core-Example-Components'
}

{ #category : #accessing }
MDLWidgetTabScreen >> description [
	^ 'A tab widget.'
]

{ #category : #accessing }
MDLWidgetTabScreen >> icon [
	^ #complayoutPng
]

{ #category : #rendering }
MDLWidgetTabScreen >> renderScreenContentOn: html [
	self render: (OrderedDictionary with: 'Tab Widget' -> #renderTabsOn:) withCardSizeOf: 6 on: html
]

{ #category : #code }
MDLWidgetTabScreen >> renderTabsOn: html [
	html
		render:
			(MDLTabWidget new
				addTabNamed: 'Tab 1' content: 'First tab';
				addTabNamed: 'Tab 2' content: 'Second tab';
				yourself)
]

{ #category : #accessing }
MDLWidgetTabScreen >> title [
	^ 'Tabs'
]
