"
I am nested list demonstration panel
"
Class {
	#name : #MDLWidgetNestedListScreen,
	#superclass : #MDLDemoScreen,
	#category : 'Material-Design-Lite-Core-Example-Components'
}

{ #category : #accessing }
MDLWidgetNestedListScreen >> description [
	^ 'A smart list that will dynamically load in Ajax'
]

{ #category : #accessing }
MDLWidgetNestedListScreen >> icon [
	^ 'complistsPng'
]

{ #category : #code }
MDLWidgetNestedListScreen >> renderNestedListOn: html [
	| divId |
	divId := html nextId.
	html div
		style: 'text-align: left; display:flex;height: 600px; background-color: #CFD8DC;';
		shadow: 2;
		with: [ 
					html
						render:
							((MDLNestedList
								elements: WAObject allSubclasses
								children: [ :classOrMethod | 
									classOrMethod isClass
										ifTrue: [ classOrMethod methods ]
										ifFalse: [ #() ] ])
								format: #name;
								helpBlock: #comment;
								withResearchField;
								onLoadHook: 'componentHandler.upgradeDom();console.log("test");';
								onClickJs: [ :entity | (html jQuery id: divId) load html: [ :ajaxHtml | self renderNestedListOn: ajaxHtml ] ]).
					html div id: divId ]
]

{ #category : #rendering }
MDLWidgetNestedListScreen >> renderScreenContentOn: html [
	self render: (OrderedDictionary with: 'Nested List' -> #renderNestedListOn:) withCardSizeOf: 6 on: html
]

{ #category : #accessing }
MDLWidgetNestedListScreen >> title [
	^ 'Nested list'
]
