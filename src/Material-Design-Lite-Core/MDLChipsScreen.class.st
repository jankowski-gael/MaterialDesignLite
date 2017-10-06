"
I am the screen representing chips.
"
Class {
	#name : #MDLChipsScreen,
	#superclass : #MDLDemoScreen,
	#category : 'Material-Design-Lite-Core-Example-Components'
}

{ #category : #accessing }
MDLChipsScreen >> description [
	^ 'Chips represent complex entities in small blocks, such as a contact.'
]

{ #category : #accessing }
MDLChipsScreen >> icon [
	^ 'compchipsPng'
]

{ #category : #accessing }
MDLChipsScreen >> imageChips [
	^ OrderedDictionary new
		add: 'Iconned Chip' -> #renderMdlIconChipOn:;
		add: 'Image Chip' -> #renderImageChipOn:;
		add: 'Contact Chip' -> #renderContactChipOn:;
		add: 'Contact with Color Chip' -> #renderContactColorChipOn:;
		yourself
]

{ #category : #code }
MDLChipsScreen >> renderAjaxRemovableChipOn: html [
	html mdlChip
		ajaxDeleteCallback: [ 'Component deleted' crLog ] successHook: 'alert("Deleted")'; "successHook is optional."
		with: [ html mdlChipText: 'Example Chip' ]
]

{ #category : #code }
MDLChipsScreen >> renderContactChipOn: html [
	html mdlChip
		deleteCallback: [ 'Component deleted' crLog ];
		with: [ 
					html mdlChipContact
						hexColor: '009587';
						with: 'C'.
					html mdlChipText: 'Example Chip' ]
]

{ #category : #code }
MDLChipsScreen >> renderContactColorChipOn: html [
	html mdlChip
		deleteCallback: [ 'Component deleted' crLog ];
		with: [ 
					html mdlChipContact
						color: (MDLColor tint: #red code: '200');
						with: 'CF'.
					html mdlChipText: 'Example Chip' ]
]

{ #category : #code }
MDLChipsScreen >> renderImageChipOn: html [
	html mdlChip
		deleteCallback: [ 'Component deleted' crLog ];
		with: [ 
					html mdlChipImage
						url: (MDLDemoLibrary urlOf: 'chipImageJpg');
						altText: 'Profile image'.
					html mdlChipText: 'Example Chip' ]
]

{ #category : #code }
MDLChipsScreen >> renderMdlIconChipOn: html [
	html mdlChip
		deleteCallback: [ 'Component deleted' crLog ];
		with: [ 
					html mdlIcon
						chipIcon;
						with: #accessibility.
					html mdlChipText: 'Example Chip' ]
]

{ #category : #code }
MDLChipsScreen >> renderRemovableChipOn: html [
	html mdlChip
		deleteCallback: [ 'Component deleted' crLog ];
		with: [ html mdlChipText: 'Example Chip' ]
]

{ #category : #rendering }
MDLChipsScreen >> renderScreenContentOn: html [
	self render: self simpleChips withCardSizeOf: 2 on: html.
	self render: self imageChips withCardSizeOf: 2 on: html
]

{ #category : #code }
MDLChipsScreen >> renderSimpleChipOn: html [
	html mdlChip: [ html mdlChipText: 'Example Chip' ]
]

{ #category : #accessing }
MDLChipsScreen >> simpleChips [
	^ OrderedDictionary new
		add: 'Simple Chip' -> #renderSimpleChipOn:;
		add: 'Deletable Chip' -> #renderRemovableChipOn:;
		add: 'Deletable Ajax Chip' -> #renderAjaxRemovableChipOn:;
		yourself
]

{ #category : #accessing }
MDLChipsScreen >> title [
	^ 'Chips'
]
