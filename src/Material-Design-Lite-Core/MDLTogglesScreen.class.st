"
I'm representing Toggles screen
"
Class {
	#name : #MDLTogglesScreen,
	#superclass : #MDLDemoScreen,
	#category : 'Material-Design-Lite-Core-Example-Components'
}

{ #category : #code }
MDLTogglesScreen >> checkbox1Code [ 
	^ 'html mdlCheckboxContainer rippleEffect; for: ''checkbox-1''; with: [ 
	html mdlCheckbox value: true; id: ''checkbox-1''.
	html mdlCheckboxLabel: ''Checkbox'' ]'
]

{ #category : #code }
MDLTogglesScreen >> checkbox2Code [ 
	^ 'html mdlCheckboxContainer rippleEffect; for: ''checkbox-1''; with: [ 
	html mdlCheckbox value: false; id: ''checkbox-1''.
	html mdlCheckboxLabel: ''Checkbox'' ]'
]

{ #category : #accessing }
MDLTogglesScreen >> description [
	^ 'Choose between states.'
]

{ #category : #accessing }
MDLTogglesScreen >> icon [
	^ 'comptogglesPng'
]

{ #category : #code }
MDLTogglesScreen >> iconToggle1Code [ 
	^ 'html mdlIconToggleContainer rippleEffect; for: ''icon-toggle-1''; with: [ 
	html mdlIconToggle value: true;  id: ''icon-toggle-1''.
	html mdlIconToggleLabel: ''format_bold'' ]'
]

{ #category : #code }
MDLTogglesScreen >> iconToggle2Code [ 
	^ 'html mdlIconToggleContainer rippleEffect; for: ''icon-toggle-2''; with: [ 
	html mdlIconToggle id: ''icon-toggle-2''.
	html mdlIconToggleLabel: ''format_italic'' ]'
]

{ #category : #code }
MDLTogglesScreen >> radioButtonCode [
	^ 
'html mdlRadioContainer rippleEffect; for: ''option-1''; with: [ 
	html mdlRadioButton beChecked; value: ''1''; attributeAt: ''name'' put: ''options''; id: ''option-1''.
	html mdlRadioLabel: ''First'' ].
html mdlRadioContainer rippleEffect; for: ''option-2''; with: [ 
	html mdlRadioButton value: ''2''; attributeAt: ''name'' put: ''options''; id: ''option-2''.
	html mdlRadioLabel: ''Second'' ]'
]

{ #category : #rendering }
MDLTogglesScreen >> renderCheckboxOn: html [
	html heading
		level5;
		class: 'section-title';
		with: 'CHECKBOX'.
	html mdlGrid
		class: 'examples';
		with: [ 
					html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlCheckboxContainer
								rippleEffect;
								for: 'checkbox-1';
								with: [ 
											html mdlCheckbox
												value: true;
												id: 'checkbox-1'.
											html mdlCheckboxLabel: 'Checkbox' ] ]
						size: 1.
						html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlCheckboxContainer
								rippleEffect;
								for: 'checkbox-2';
								with: [ 
											html mdlCheckbox
												value: false;
												id: 'checkbox-2'.
											html mdlCheckboxLabel: 'Checkbox' ] ]
						size: 1.
					html mdlLayoutSpacer ].
	html
		mdlGrid: [ 
			html mdlLayoutSpacer.
			html mdlCell: 'Check on' size: 1.
			html mdlLayoutSpacer.
			html mdlCell: 'Check off' size: 1.
			html mdlLayoutSpacer ].
	html preformatted
		with: [ 
			html code
				class: 'smalltalk';
				with: self checkbox1Code ].
	html preformatted
		with: [ 
			html code
				class: 'smalltalk';
				with: self checkbox2Code ]
]

{ #category : #rendering }
MDLTogglesScreen >> renderIconToggleOn: html [
	html heading level5; class: 'section-title'; with: 'Icon toggle'.
	html mdlGrid
		class: 'examples';
		with: [ 
					html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlIconToggleContainer rippleEffect; for: 'icon-toggle-1'; with: [ 
								html mdlIconToggle value: true;  id: 'icon-toggle-1'.
								html mdlIconToggleLabel: 'format_bold' ] ] size: 1.
						html mdlLayoutSpacer .
					html
						mdlCell: [ 
							html mdlIconToggleContainer rippleEffect; for: 'icon-toggle-2'; with: [ 
								html mdlIconToggle id: 'icon-toggle-2'.
								html mdlIconToggleLabel: 'format_italic' ] ] size: 1.
					html mdlLayoutSpacer ].
	html mdlGrid: [ 
		html mdlLayoutSpacer.
		html mdlCell: 'Icon on' size: 1.
		html mdlLayoutSpacer.
		html mdlCell: 'Icon off' size: 1.
		html mdlLayoutSpacer ].
	html preformatted with: [ html code class: 'smalltalk'; with: self iconToggle1Code ].
	html preformatted with: [ html code class: 'smalltalk'; with: self iconToggle2Code ]
]

{ #category : #rendering }
MDLTogglesScreen >> renderRadioButtonOn: html [
	html heading level5; class: 'section-title'; with: 'Radio button'.
	html mdlGrid
		class: 'examples';
		with: [ 
					html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlRadioContainer rippleEffect; for: 'option-1'; with: [ 
								html mdlRadioButton beChecked; value: '1'; attributeAt: 'name' put: 'options'; id: 'option-1'.
								html mdlRadioLabel: 'First' ] ] size: 1.
						html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlRadioContainer rippleEffect; for: 'option-2'; with: [ 
								html mdlRadioButton value: '2'; attributeAt: 'name' put: 'options'; id: 'option-2'.
								html mdlRadioLabel: 'Second' ] ] size: 1.
					html mdlLayoutSpacer ].
				html mdlGrid: [ 
					html mdlLayoutSpacer.
					html mdlCell: 'Radio on' size: 1.
					html mdlLayoutSpacer.
					html mdlCell: 'Radio off' size: 1.
					html mdlLayoutSpacer ].
	html preformatted with: [ html code class: 'smalltalk'; with: self radioButtonCode ]
]

{ #category : #rendering }
MDLTogglesScreen >> renderScreenContentOn: html [
	html unorderedList
		class: 'navigation';
		with: [ 
					html
						listItem: [ 
							html anchor
								url: '#checkbox-toggle';
								with: 'Checkbox' ].
					html
						listItem: [ 
							html anchor
								url: '#radiobutton-toggle';
								with: 'Radio button' ].
					html
						listItem: [ 
							html anchor
								url: '#icon-toggle';
								with: 'Icon toggle' ].
					html
						listItem: [ 
							html anchor
								url: '#switch-toggle';
								with: 'Switch' ] ].
	html anchor id: 'checkbox-toggle'.
	self renderCheckboxOn: html.
	html anchor id: 'radiobutton-toggle'.
	self renderRadioButtonOn: html.
	html anchor id: 'icon-toggle'.
	self renderIconToggleOn: html.
	html anchor id: 'switch-toggle'.
	self renderSwitchToggleOn: html
]

{ #category : #rendering }
MDLTogglesScreen >> renderSwitchToggleOn: html [
	html heading
		level5;
		class: 'section-title';
		with: 'Switch toggle'.
	html mdlGrid
		class: 'examples';
		with: [ 
					html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlSwitchContainer
								rippleEffect;
								for: 'switch-toggle-1';
								with: [ 
											html mdlSwitch
												value: true;
												id: 'switch-toggle-1'.
											html mdlSwitchLabel: 'On / Off' ] ]
						size: 1.
						html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlSwitchContainer
								rippleEffect;
								for: 'switch-toggle-2';
								with: [ 
											html mdlSwitch id: 'switch-toggle-2'.
											html mdlSwitchLabel: 'On / Off' ] ]
						size: 1.
					html mdlLayoutSpacer ].
	html
		mdlGrid: [ 
			html mdlLayoutSpacer.
			html mdlCell: 'Switch on' size: 1.
			html mdlLayoutSpacer.
			html mdlCell: 'Switch off' size: 1.
			html mdlLayoutSpacer ].
	html preformatted
		with: [ 
			html code
				class: 'smalltalk';
				with: self iconToggle1Code ].
	html preformatted
		with: [ 
			html code
				class: 'smalltalk';
				with: self iconToggle2Code ]
]

{ #category : #code }
MDLTogglesScreen >> switchToggle1Code [ 
	^ 'html mdlSwitchContainer rippleEffect; for: ''switch-toggle-1''; with: [ 
	html mdlSwitch value: true;  id: ''switch-toggle-1''.
	html mdlSwitchLabel: ''On / Off'' ]'
]

{ #category : #code }
MDLTogglesScreen >> switchToggle2Code [ 
	^ 'html mdlSwitchContainer rippleEffect; for: ''switch-toggle-2''; with: [ 
	html mdlSwitch id: ''switch-toggle-2''.
	html mdlSwitchLabel: ''On / Off'' ]'
]

{ #category : #accessing }
MDLTogglesScreen >> title [
	^ 'Toggles'
]
