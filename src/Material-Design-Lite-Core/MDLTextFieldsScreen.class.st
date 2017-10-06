"
I am representing text field screen.
"
Class {
	#name : #MDLTextFieldsScreen,
	#superclass : #MDLDemoScreen,
	#category : 'Material-Design-Lite-Core-Example-Components'
}

{ #category : #accessing }
MDLTextFieldsScreen >> description [
	^ 'Textual input components.'
]

{ #category : #code }
MDLTextFieldsScreen >> expandableTextFieldCode [
	^ 'html mdlTextFieldContainer expandable; with: [ 
	html mdlButton asLabel;icon; for: ''expandable-textfield''; with: [ html mdlIcon: ''search'' ].
	html mdlTextFieldExpandableHolder: [ 
		html mdlTextFieldInput id: ''expandable-textfield''; type: ''text''.
		html mdlTextFieldLabel for: ''expandable-textfield''; with: ''Expandable Input'' ] ]'
]

{ #category : #code }
MDLTextFieldsScreen >> floatingNumericTextFieldCode [ 
		^ 'html mdlTextFieldContainer floatingLabel; with: [ 
	html mdlTextFieldLabel for: ''floating-numeric''; with: ''Number...''.
	html mdlTextFieldInput id: ''floating-numeric''; type: ''text''; pattern: ''-?[0-9]*(\.[0-9]+)?''.
	html mdlTextFieldError: ''Input is not a number !'''
]

{ #category : #code }
MDLTextFieldsScreen >> floatingTextFieldCode [ 
		^ 'html mdlTextFieldContainer floatingLabel; with: [ 
	html mdlTextFieldLabel for: ''floating-text''; with: ''Text...''.
	html mdlTextFieldInput id: ''floating-text''; type: ''text'''
]

{ #category : #accessing }
MDLTextFieldsScreen >> icon [
	^'comptextfieldsPng'
]

{ #category : #code }
MDLTextFieldsScreen >> multiLinesTextFieldCode [
	^ 'html mdlTextFieldContainer: [ 
	html mdlTextFieldLabel for: ''multiline-text''; with: ''Text lines...''.
	html mdlTextArea id: ''multiline-text''; type: ''text''; rows: 3  ]'
]

{ #category : #rendering }
MDLTextFieldsScreen >> renderComplexTextFielOn: html [
	html mdlGrid class: 'examples'; with: [ 
		html mdlLayoutSpacer.
		html mdlCell: [ 
			html mdlTextFieldContainer: [ 
				html mdlTextFieldLabel for: 'multiline-text'; with: 'Text lines...'.
				html mdlTextArea id: 'multiline-text'; type: 'text'; rows: 3  ] ] size: 2.
		html mdlLayoutSpacer.
		html mdlCell: [ 
			html mdlTextFieldContainer expandable; with: [ 
				html mdlButton asLabel;icon; for: 'expandable-textfield'; with: [ html mdlIcon: 'search' ].
				html mdlTextFieldExpandableHolder: [ 
					html mdlTextFieldInput id: 'expandable-textfield'; type: 'text'.
					html mdlTextFieldLabel for: 'expandable-textfield'; with: 'Expandable Input'
					 ] ] ] size: 2.
		html mdlLayoutSpacer ].
	html mdlGrid: [ 
		html mdlLayoutSpacer.
		html mdlCell: 'Text with floating label' size: 2.
		html mdlLayoutSpacer.
		html mdlCell: 'Number with floating label' size: 2.
		html mdlLayoutSpacer ].
	html preformatted: [ html code class: 'smalltalk'; with: self multiLinesTextFieldCode ].
	html preformatted: [ html code class: 'smalltalk'; with: self expandableTextFieldCode ]
]

{ #category : #rendering }
MDLTextFieldsScreen >> renderFloatingLabelTextFieldOn: html [
	html mdlGrid class: 'examples'; with: [ 
		html mdlLayoutSpacer.
		html mdlCell: [ 
			html mdlTextFieldContainer floatingLabel; with: [ 
				html mdlTextFieldLabel for: 'floating-text'; with: 'Text...'.
				html mdlTextFieldInput id: 'floating-text'; type: 'text'  ] ] size: 2.
		html mdlLayoutSpacer.
		html mdlCell: [ 
			html mdlTextFieldContainer floatingLabel; with: [ 
				html mdlTextFieldLabel for: 'floating-numeric'; with: 'Number...'.
				html mdlTextFieldInput id: 'floating-numeric'; type: 'text'; pattern: '-?[0-9]*(\.[0-9]+)?'.
				html mdlTextFieldError: 'Input is not a number !' ] ] size: 2.
		html mdlLayoutSpacer ].
	html mdlGrid: [ 
		html mdlLayoutSpacer.
		html mdlCell: 'Text with floating label' size: 2.
		html mdlLayoutSpacer.
		html mdlCell: 'Number with floating label' size: 2.
		html mdlLayoutSpacer ].
	html preformatted: [ html code class: 'smalltalk'; with: self floatingTextFieldCode ].
	html preformatted: [ html code class: 'smalltalk'; with: self floatingNumericTextFieldCode ]
]

{ #category : #rendering }
MDLTextFieldsScreen >> renderScreenContentOn: html [
	self renderSimpleTextFieldOn: html.
	self renderFloatingLabelTextFieldOn: html.
	self renderComplexTextFielOn: html
]

{ #category : #rendering }
MDLTextFieldsScreen >> renderSimpleTextFieldOn: html [
	html mdlGrid
		class: 'examples';
		with: [ 
					html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlTextFieldContainer
								with: [ 
									html mdlTextFieldLabel
										for: 'input_text';
										with: 'Text...'.
									html mdlTextFieldInput
										id: 'input_text';
										type: 'text' ] ]
						size: 2.
					html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlTextFieldContainer
								with: [ 
									html mdlTextFieldLabel
										for: 'input_text2';
										with: 'Number...'.
									html mdlTextFieldInput
										id: 'input_text2';
										pattern: '-?[0-9]*(\.[0-9]+)?';
										type: 'text'.
									html mdlTextFieldError: 'Input is not a number !' ] ]
						size: 2.
					html mdlLayoutSpacer ].
	html
		mdlGrid: [ 
			html mdlLayoutSpacer.
			html mdlCell: 'Text' size: 2.
			html mdlLayoutSpacer.
			html mdlCell: 'Numeric' size: 2.
			html mdlLayoutSpacer ].
	html preformatted
		with: [ 
			html code
				class: 'smalltalk';
				with: self simpleTextFieldCode ].
	html preformatted
		with: [ 
			html code
				class: 'smalltalk';
				with: self simpleNumericTextFieldCode ]
]

{ #category : #code }
MDLTextFieldsScreen >> simpleNumericTextFieldCode [ 
		^ 'html mdlTextFieldContainer with: [ 
	html mdlTextFieldLabel for: ''input_text2''; with: ''Number...''.
	html mdlTextFieldInput id: ''input_text2''; pattern: ''-?[0-9]*(\.[0-9]+)?''; type: ''text''.
	html mdlTextFieldError: ''Input is not a number!'' ]'
]

{ #category : #code }
MDLTextFieldsScreen >> simpleTextFieldCode [ 
		^ 'html mdlTextFieldContainer with: [ 
	html mdlTextFieldLabel for: ''input_text''; with: ''Text...''.
	html mdlTextFieldInput id: ''input_text''; type: ''text'' ]'
]

{ #category : #accessing }
MDLTextFieldsScreen >> title [
	^ 'Text Fields'
]
