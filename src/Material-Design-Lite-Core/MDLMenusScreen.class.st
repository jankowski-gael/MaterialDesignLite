"
I'm representing the menu components screen
"
Class {
	#name : #MDLMenusScreen,
	#superclass : #MDLDemoScreen,
	#category : 'Material-Design-Lite-Core-Example-Components'
}

{ #category : #accessing }
MDLMenusScreen >> description [
	^ 'Lists of clickable actions.'
]

{ #category : #accessing }
MDLMenusScreen >> icon [
		^'compmenusPng'
]

{ #category : #code }
MDLMenusScreen >> menuBottomLeftCode [ 
	^ 'html mdlButton icon
	id: #bottomLeftButton;
	with: [ html mdlIcon: #more_vert ].
html mdlMenu
	bottomLeft;
	for: #bottomLeftButton;
	with: [ html mdlMenuItem: ''Unicorn''.
		html mdlMenuItem: ''Mandragore''.
		html mdlMenuItem: ''Nyan'' ]'
]

{ #category : #code }
MDLMenusScreen >> menuBottomRightCode [ 
	^ 'html mdlButton icon
	id: #bottomRightButton;
	with: [ html mdlIcon: #more_vert ].
html mdlMenu
	bottomRight;
	for: #bottomRightButton;
	with: [ 
		html mdlMenuItem: ''Some Action''.
		html mdlMenuItem fullBleedDivider; with: ''Another Action''.
		html mdlMenuItem disabled; with: ''Disabled Action''.
		html mdlMenuItem: ''Yet Another Action''  ]'
]

{ #category : #code }
MDLMenusScreen >> menuTopLeftCode [ 
	^ 'html mdlButton icon
	id: #topLeftButton;
	with: [ html mdlIcon: #more_vert ].
html mdlMenu
	topLeft;
	for: #topLeftButton;
	with: [ 
		html mdlMenuItem: ''Some Action''.
		html mdlMenuItem fullBleedDivider; with: ''Another Action''.
		html mdlMenuItem disabled; with: ''Disabled Action''.
		html mdlMenuItem: ''Yet Another Action''  ]'
]

{ #category : #code }
MDLMenusScreen >> menuTopRightCode [ 
	^ 'html mdlButton icon
	id: #topRightButton;
	with: [ html mdlIcon: #more_vert ].
html mdlMenu
	topRight;
	for: #topRightButton;
	with: [ 
		html mdlMenuItem: ''Some Action''.
		html mdlMenuItem fullBleedDivider; with: ''Another Action''.
		html mdlMenuItem disabled; with: ''Disabled Action''.
		html mdlMenuItem: ''Yet Another Action''  ]'
]

{ #category : #rendering }
MDLMenusScreen >> renderBottomMenusOn: html [
	html mdlGrid class: 'examples'; with: [ 
		html mdlLayoutSpacer.
		html mdlCell class: 'menu-container mdl-shadow--2dp'; size: 2; with: [ 
			html div class: 'menu-bar mdl-color--primary mdl-color-text--primary-contrast'; style: 'text-align: left;'; with: [ 
				html mdlButton icon
					id: #bottomLeftButton;
					with: [ html mdlIcon: #more_vert ].
				html mdlMenu
					bottomLeft;
					for: #bottomLeftButton;
					with: [ 
						html mdlMenuItem: 'Some Action'.
						html mdlMenuItem fullBleedDivider; with: 'Another Action'.
						html mdlMenuItem disabled; with: 'Disabled Action'.
						html mdlMenuItem: 'Yet Another Action' ] ].
			html div class: 'menu-background' ].
		html mdlCell class: 'menu-container mdl-shadow--2dp'; size: 2; with: [ 
			html div class: 'menu-bar mdl-color--primary mdl-color-text--primary-contrast'; style: 'text-align: right;'; with: [ 
				html mdlButton icon
					id: #bottomRightButton;
					with: [ html mdlIcon: #more_vert ].
				html mdlMenu
					bottomRight;
					for: #bottomRightButton;
					with: [ 
						html mdlMenuItem: 'Some Action'.
						html mdlMenuItem fullBleedDivider; with: 'Another Action'.
						html mdlMenuItem disabled; with: 'Disabled Action'.
						html mdlMenuItem: 'Yet Another Action' ] ].
			html div class: 'menu-background' ].
		html mdlLayoutSpacer ].
			
	html preformatted: [ html code class: 'smalltalk'; with: self menuBottomLeftCode ]
]

{ #category : #rendering }
MDLMenusScreen >> renderScreenContentOn: html [
	html paragraph: self description.
	html
		paragraph: [ 
			html
				emphasis:
					'Note: The menu requires a non-static positioned parent element. Positioning options may not work properly if the menu is inside of a statically positioned node.' ].
	self renderBottomMenusOn: html.
	self renderTopMenusOn: html
]

{ #category : #rendering }
MDLMenusScreen >> renderTopMenusOn: html [
	html mdlGrid class: 'examples'; with: [ 
		html mdlLayoutSpacer.
		html mdlCell class: 'menu-container mdl-shadow--2dp'; size: 2; with: [ 
			html div class: 'menu-background'.
			html div class: 'menu-bar mdl-color--primary mdl-color-text--primary-contrast'; style: 'text-align: left;'; with: [ 
				html mdlButton icon
					id: #topLeftButton;
					with: [ html mdlIcon: #more_vert ].
				html mdlMenu
					topLeft;
					for: #topLeftButton;
					with: [ 
						html mdlMenuItem: 'Some Action'.
						html mdlMenuItem fullBleedDivider; with: 'Another Action'.
						html mdlMenuItem disabled; with: 'Disabled Action'.
						html mdlMenuItem: 'Yet Another Action' ] ] ].
			html mdlLayoutSpacer.
		html mdlCell class: 'menu-container mdl-shadow--2dp'; size: 2; with: [ 
			html div class: 'menu-background'.
			html div class: 'menu-bar mdl-color--primary mdl-color-text--primary-contrast'; style: 'text-align: right;'; with: [ 
				html mdlButton icon
					id: #topRightButton;
					with: [ html mdlIcon: #more_vert ].
				html mdlMenu
					topRight;
					for: #topRightButton;
					with: [ 
						html mdlMenuItem: 'Some Action'.
						html mdlMenuItem fullBleedDivider; with: 'Another Action'.
						html mdlMenuItem disabled; with: 'Disabled Action'.
						html mdlMenuItem: 'Yet Another Action' ] ] ].
		html mdlLayoutSpacer ].
	html mdlGrid: [ 
		html mdlLayoutSpacer.
		html mdlCell: 'Top Left' size: 2.
		html mdlLayoutSpacer.
		html mdlCell: 'Top Right' size: 2.
		html mdlLayoutSpacer ].
	html preformatted: [ html code class: 'smalltalk'; with: self menuTopLeftCode ].
	html preformatted: [ html code class: 'smalltalk'; with: self menuTopRightCode ]
]

{ #category : #accessing }
MDLMenusScreen >> title [
	^ 'Menus'
]
