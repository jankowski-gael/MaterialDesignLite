"
I represent a simple widget to use mdlTable
"
Class {
	#name : #MDLTabWidget,
	#superclass : #MDLHighLevelWidget,
	#instVars : [
		'tabs'
	],
	#category : 'Material-Design-Lite-Widgets-Tab'
}

{ #category : #adding }
MDLTabWidget >> addTabNamed: aString content: anObject [
	"Dictionary will be used to set id"

	tabs
		at: aString
		put:
			(Dictionary new
				at: #object put: anObject;
				yourself)
]

{ #category : #initialization }
MDLTabWidget >> initialize [
	super initialize.
	tabs := OrderedDictionary new
]

{ #category : #rendering }
MDLTabWidget >> renderContentOn: html [
	html
		mdlTabs: [ html
				mdlTabBar: [ tabs
						keysAndValuesDo: [ :aString :aDictionary | 
							aDictionary at: #id put: html nextId.
							html mdlTab
								url: '#' , (aDictionary at: #id);
								isActiveIf: (tabs indexOfKey: aString) = 1;
								with: aString ] ].
			tabs
				keysAndValuesDo: [ :aString :aDictionary | 
					html mdlTabsPanel
						id: (aDictionary at: #id);
						isActiveIf: (tabs indexOfKey: aString) = 1;
						with: (aDictionary at: #object) ] ]
]
