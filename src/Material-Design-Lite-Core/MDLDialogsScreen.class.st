"
I'm representing dialogs screen
"
Class {
	#name : #MDLDialogsScreen,
	#superclass : #MDLDemoScreen,
	#category : 'Material-Design-Lite-Core-Example-Components'
}

{ #category : #accessing }
MDLDialogsScreen >> complexDialog [
	^ OrderedDictionary with: 'Dialog with buttons' -> #renderComplexDialogOn:
]

{ #category : #accessing }
MDLDialogsScreen >> description [
	^ 'Modal windows for dedicated user input.'
]

{ #category : #accessing }
MDLDialogsScreen >> icon [
		^ 'compdialogPng'
]

{ #category : #code }
MDLDialogsScreen >> renderComplexDialogOn: html [
	| idButtonOpen idButtonClose |
	html mdlButton
		openDialogWithId: (idButtonOpen := 'mdl_demo_dialog_open'); "This will not generate an id on the button and allow you to have multiple buttons to open the same dialog."
		raised;
		rippleEffect;
		with: 'Show dialog'.
		
	html mdlDialog
		openButtonId: idButtonOpen;
		closeButtonId: (idButtonClose := 'mdl_demo_dialog_close');
		with: [ 
			html mdlDialogTitle: 'Good job !'.
			html mdlDialogContent: [ html paragraph: 'You have not managed to click the button' ].
			html mdlDialogActions: [
				html mdlButton: 'Agree'.
				html mdlButton
					id: idButtonClose;
					with: 'Disagree' ] ]
]

{ #category : #rendering }
MDLDialogsScreen >> renderScreenContentOn: html [
	self render: self simpleDialog withCardSizeOf: 4 on: html.
	self render: self complexDialog withCardSizeOf: 4 on: html
]

{ #category : #code }
MDLDialogsScreen >> renderSimpleDialogOn: html [
	| idButtonOpen2 |
	html mdlButton
		id: (idButtonOpen2 := 'mdl_demo_second_dialog_open');
		raised;
		rippleEffect;
		with: 'Show second dialog'.
		
	html mdlDialog
		openButtonId: idButtonOpen2;
		with: [ 
			html mdlDialogTitle: 'Good job !'.
			html mdlDialogContent: [ html paragraph: 'You managed to open the dialog' ] ]
]

{ #category : #accessing }
MDLDialogsScreen >> simpleDialog [
	^ OrderedDictionary with: 'Simple Dialog' -> #renderSimpleDialogOn:
]

{ #category : #accessing }
MDLDialogsScreen >> title [
	^ 'Dialog'
]
