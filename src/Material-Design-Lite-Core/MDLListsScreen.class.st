"
I'm representing list screen
"
Class {
	#name : #MDLListsScreen,
	#superclass : #MDLDemoScreen,
	#category : 'Material-Design-Lite-Core-Example-Components'
}

{ #category : #code }
MDLListsScreen >> avatarActionsListCode [ 
	^ 'html mdlList: [ 
	#(''Bryan Cranston'' ''Aaron Paul'' ''Bob Odenkirk'') do: [ :name | 
		html mdlListItem: [ 
			html mdlListPrimaryContent: [
				html mdlIcon	listItemAvatar; with: #person.
				html text: name ].
			html mdlListItemSecondaryAction url: ''#''; with: [ 
				html mdlIcon: #star ] ] ] ]'
]

{ #category : #code }
MDLListsScreen >> avatardControlsListCode [
	^ 'html mdlList
	style: ''width: 300px'';
	with: [
		html mdlListItem: [
			html mdlListPrimaryContent: [
				html mdlIcon listItemAvatar; with: #person.
				html text: ''Bryan Cranston'' ].
			html mdlListItemSecondaryAction: [
				html mdlCheckboxContainer
					for: ''checkbox1'';
					with: [ html mdlCheckbox id: ''checkbox1''; value: true ] ] ].
		html mdlListItem: [ 
			html mdlListPrimaryContent: [ 
				html mdlIcon listItemAvatar; with: #person.
				html text: ''Aaron Paul'' ].
			html mdlListItemSecondaryAction: [ 
				html mdlRadioContainer
					style: ''display: inline;'';
					for: ''radio1'';
					rippleEffect;
					with: [ html mdlRadioButton id: ''radio1''; value: ''1''; name: ''options'' ] ] ].
		html mdlListItem: [
			html mdlListPrimaryContent: [
				html mdlIcon listItemAvatar; with: #person.
				html text: ''Bob Odenkirk'' ].
			html mdlListItemSecondaryAction: [ 
				html mdlSwitchContainer
					for: ''switch'';
					with: [ 
						html mdlSwitch id: ''switch''; value: ''1''.
						html mdlSwitchLabel ] ] ] ]'
]

{ #category : #accessing }
MDLListsScreen >> description [
	^ 'Customizable scrollable lists.'
]

{ #category : #accessing }
MDLListsScreen >> icon [
		^ 'complistsPng'
]

{ #category : #code }
MDLListsScreen >> iconsListCode [
	^ 'html mdlList: [ 
	#(''Bryan Cranston'' ''Aaron Paul'' ''Bob Odenkirk'') do: [ :name | 
		html mdlListItem: [ 
			html mdlListPrimaryContent: [
				html mdlIcon
					listItemIcon;
					with: #person.
				html text: name ] ] ] ]'
]

{ #category : #rendering }
MDLListsScreen >> renderAvatarActionsListOn: html [
	html div
		class: 'centered-content';
		class: 'examples';
		with: [ html
				mdlList
					style: 'width: 300px';
					with: [ #('Bryan Cranston' 'Aaron Paul' 'Bob Odenkirk')
						do: [ :name | 
							html
								mdlListItem: [ html
										mdlListPrimaryContent: [ html mdlIcon
												listItemAvatar;
												with: #person.
											html text: name ].
										html mdlListItemSecondaryAction
											url: '#';
											with: [ html mdlIcon: #star ] ] ] ].
			html paragraph: 'List with Avatars and Actions' ].
	html preformatted: [ html code class: 'smalltalk';
				with: self avatarActionsListCode ]
]

{ #category : #rendering }
MDLListsScreen >> renderAvatarControlsListOn: html [
	html div
		class: 'centered-content';
		class: 'examples';
		with: [ html mdlList
				style: 'width: 300px';
				with: [ html
						mdlListItem: [ html
								mdlListPrimaryContent: [ html mdlIcon
										listItemAvatar;
										with: #person.
									html text: 'Bryan Cranston' ].
							html mdlListItemSecondaryAction
								with: [ html mdlCheckboxContainer
										for: 'checkbox1';
										with: [ html mdlCheckbox
												id: 'checkbox1';
												value: true ] ] ].
					html
						mdlListItem: [ html
								mdlListPrimaryContent: [ html mdlIcon
										listItemAvatar;
										with: #person.
									html text: 'Aaron Paul' ].
							html mdlListItemSecondaryAction
								with: [ html mdlRadioContainer
										style: 'display: inline;';
										for: 'radio1';
										rippleEffect;
										with: [ html mdlRadioButton
												id: 'radio1';
												value: '1';
												name: 'options' ] ] ].
					html
						mdlListItem: [ html
								mdlListPrimaryContent: [ html mdlIcon
										listItemAvatar;
										with: #person.
									html text: 'Bob Odenkirk' ].
							html mdlListItemSecondaryAction
								with: [ html mdlSwitchContainer
										for: 'switch';
										with: [ html mdlSwitch
												id: 'switch';
												value: '1'.
											html mdlSwitchLabel ] ] ] ].
			html paragraph: 'List with Avatars and Controls' ].
	html preformatted: [ html code class: 'smalltalk';
				with: self avatardControlsListCode ]
]

{ #category : #rendering }
MDLListsScreen >> renderIconsListOn: html [
	html div
		class: 'centered-content';
		class: 'examples';
		with: [ html
				mdlList: [ #('Bryan Cranston' 'Aaron Paul' 'Bob Odenkirk')
						do: [ :name | 
							html
								mdlListItem: [ html
										mdlListPrimaryContent: [ html mdlIcon
												listItemIcon;
												with: #person.
											html text: name ] ] ] ].
			html paragraph: 'List with Icons' ].
	html preformatted: [ html code class: 'smalltalk';
				with: self iconsListCode ]
]

{ #category : #rendering }
MDLListsScreen >> renderScreenContentOn: html [
	self renderSimpleListOn: html.
	self renderIconsListOn: html.
	self renderAvatarActionsListOn: html.
	self renderAvatarControlsListOn: html.
	self renderTwoLineListOn: html.
	self renderThreeLineListOn: html
]

{ #category : #rendering }
MDLListsScreen >> renderSimpleListOn: html [
	html div
		class: 'centered-content';
		class: 'examples';
		with: [ 
					html
						mdlList: [ #('Bryan Cranston' 'Aaron Paul' 'Bob Odenkirk') do: [ :name | html mdlListItem: [ html mdlListPrimaryContent: name ] ] ].
					html paragraph: 'Simple List' ].
	html
		preformatted: [ 
			html code
				class: 'smalltalk';
				with:
						self simpleListCode ]
]

{ #category : #rendering }
MDLListsScreen >> renderThreeLineListOn: html [
	html div
		class: 'centered-content examples';
		with: [ 
					html mdlList
						style: 'width: 460px';
						with: [ 
									html mdlListItem
										threeLine;
										with: [ 
													html
														mdlListPrimaryContent: [ 
															html mdlIcon
																listItemAvatar;
																with: #person.
															html text: 'Bryan Cranston'.
															html
																mdlListItemTextBody:
																	'Bryan Cranston played the role of Walter in Breaking Bad.
He is also known for playing Hal in Malcom in the Middle.' ] ] ].
					html paragraph
						class: 'mdl-typography--text-center';
						with: 'List with content on three line' ].
	html
		preformatted: [ 
			html code
				class: 'smalltalk';
				with:
						self threeLinesListCode ]
]

{ #category : #rendering }
MDLListsScreen >> renderTwoLineListOn: html [
	html div
		class: 'centered-content examples';
		with: [ 
					html mdlList
						style: 'width: 300px';
						with: [ 
									html mdlListItem
										twoLine;
										with: [ 
													html
														mdlListPrimaryContent: [ 
															html mdlIcon
																listItemAvatar;
																with: #person.
															html text: 'Bryan Cranston'.
															html mdlListItemSubTitle: 'Appears in 62 Episodes' ] ] ].
					html paragraph
						class: 'mdl-typography--text-center';
						with: 'List with content on two line' ].
	html
		preformatted: [ 
			html code
				class: 'smalltalk';
				with:
						self twoLinesListCode ]
]

{ #category : #code }
MDLListsScreen >> simpleListCode [
	^ 'html mdlList: [ 
	#(''Bryan Cranston'' ''Aaron Paul'' ''Bob Odenkirk'') do: 
		[ :name | html mdlListItem: [ html mdlListPrimaryContent: name ] ] ]'
]

{ #category : #code }
MDLListsScreen >> threeLinesListCode [
	^ 'html mdlList
	style: ''width: 460px'';
	with: [ 
		html mdlListItem
			threeLine;
			with: [
				html mdlListPrimaryContent: [ 
					html mdlIcon
						listItemAvatar;
						with: #person.
					html text: ''Bryan Cranston''.
					html mdlListItemTextBody:
						''Bryan Cranston played the role of Walter in Breaking Bad. He is also known for playing Hal in Malcom in the Middle.'' ] ] ]'
]

{ #category : #accessing }
MDLListsScreen >> title [
	^ 'Lists'
]

{ #category : #code }
MDLListsScreen >> twoLinesListCode [ 
	^ 'html mdlList
	style: ''width: 300px'';
	with: [ 
		html mdlListItem
			twoLine;
			with: [
				html mdlListPrimaryContent: [ 
					html mdlIcon
						listItemAvatar;
						with: #person.
					html text: ''Bryan Cranston''.
					html mdlListItemSubTitle: ''Appears in 62 Episodes'' ] ] ]'
]
