"
I am representing tooltips screen
"
Class {
	#name : #MDLTooltipsScreen,
	#superclass : #MDLDemoScreen,
	#category : 'Material-Design-Lite-Core-Example-Components'
}

{ #category : #accessing }
MDLTooltipsScreen >> complexeTooltips [
	^ OrderedDictionary new
		add: 'Rich' -> #renderRichTooltipOn:;
		add: 'Multiple Lines' -> #renderMultilinesTooltipOn:;
		yourself
]

{ #category : #accessing }
MDLTooltipsScreen >> description [
	^ 'Useful informations on hover.'
]

{ #category : #accessing }
MDLTooltipsScreen >> icon [
	^ 'comptooltipsPng'
]

{ #category : #accessing }
MDLTooltipsScreen >> positionedTooltips [
	^ OrderedDictionary new
		add: 'Top' -> #renderTopTooltipOn:;
		add: 'Right' -> #renderRightTooltipOn:;
		add: 'Bottom' -> #renderBottomTooltipOn:;
		add: 'Left' -> #renderLeftTooltipOn:;
		yourself
]

{ #category : #code }
MDLTooltipsScreen >> renderBottomTooltipOn: html [
	html mdlIcon
		id: html nextId;
		with: 'print'.
	html mdlTooltip
		bottom;
		for: html lastId;
		with: 'Print'
]

{ #category : #code }
MDLTooltipsScreen >> renderLargeTooltipOn: html [
	html mdlIcon
		id: html nextId;
		with: 'print'.
	html mdlTooltip
		large;
		for: html lastId;
		with: 'Print'
]

{ #category : #code }
MDLTooltipsScreen >> renderLeftTooltipOn: html [
	html mdlIcon
		id: html nextId;
		with: 'print'.
	html mdlTooltip
		left;
		for: html lastId;
		with: 'Print'
]

{ #category : #code }
MDLTooltipsScreen >> renderMultilinesTooltipOn: html [
	html mdlIcon
		id: html nextId;
		with: 'share'.
	html mdlTooltip
		for: html lastId;
		with: [ html text: 'Share your content'.
			html break.
			html text: 'via social media' ]
]

{ #category : #code }
MDLTooltipsScreen >> renderRichTooltipOn: html [
	html mdlIcon
		id: html nextId;
		with: 'cloud_upload'.
	html mdlTooltip
		for: html lastId;
		with: [ html text: 'Upload '.
			html strong: 'file.zip' ]
]

{ #category : #code }
MDLTooltipsScreen >> renderRightTooltipOn: html [
	html mdlIcon
		id: html nextId;
		with: 'print'.
	html mdlTooltip
		right;
		for: html lastId;
		with: 'Print'
]

{ #category : #rendering }
MDLTooltipsScreen >> renderScreenContentOn: html [
	self render: self simpleTooltips withCardSizeOf: 2 on: html.
	self render: self complexeTooltips withCardSizeOf: 2 on: html.
	self render: self positionedTooltips withCardSizeOf: 2 on: html
]

{ #category : #code }
MDLTooltipsScreen >> renderSimpleTooltipOn: html [
	html mdlIcon
		id: html nextId;
		with: 'add'.
	html mdlTooltip
		for: html lastId;
		with: 'Follow'
]

{ #category : #code }
MDLTooltipsScreen >> renderTopTooltipOn: html [
	html mdlIcon
		id: html nextId;
		with: 'print'.
	html mdlTooltip
		top;
		for: html lastId;
		with: 'Print'
]

{ #category : #accessing }
MDLTooltipsScreen >> simpleTooltips [
	^ OrderedDictionary new
		add: 'Simple' -> #renderSimpleTooltipOn:;
		add: 'Large' -> #renderLargeTooltipOn:;
		yourself
]

{ #category : #accessing }
MDLTooltipsScreen >> title [
	^ 'Tooltips'
]
