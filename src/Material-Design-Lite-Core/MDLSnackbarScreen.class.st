"
I'm representing snackbar component screen
"
Class {
	#name : #MDLSnackbarScreen,
	#superclass : #MDLDemoScreen,
	#category : 'Material-Design-Lite-Core-Example-Components'
}

{ #category : #accessing }
MDLSnackbarScreen >> description [
	^ 'Transient popup notifications.'
]

{ #category : #accessing }
MDLSnackbarScreen >> icon [
	^ 'compsnackbarPng'
]

{ #category : #rendering }
MDLSnackbarScreen >> renderScreenContentOn: html [
	self renderSnackbarOn: html.
	self renderToastOn: html
]

{ #category : #rendering }
MDLSnackbarScreen >> renderSnackbarOn: html [
	html div
		class: 'centered-content';
		class: 'examples';
		with: [ 
					| snackbar |
					snackbar := (html mdlSnackbarWithId: 'mdl-demo-snackbar')
						message: 'Color of the button changed';
						actionText: 'undo';
						action: 'document.querySelector(''#snackbar-button'').style.backgroundColor = ''''';
						timeout: 2000;
						yourself.
					(html mdlSnackbarButtonFor: snackbar)
						raised;
						rippleEffect;
						id: 'snackbar-button';
						onClick:
								'document.querySelector(''#snackbar-button'').style.backgroundColor = ''#'' + Math.floor(Math.random() * 0xFFFFFF).toString(16)';
						with: 'Show snackbar'.
					html paragraph: 'Snackbar' ].
	html
		preformatted: [ 
			html code
				class: 'smalltalk';
				with: self snackbarCode ]
]

{ #category : #rendering }
MDLSnackbarScreen >> renderToastOn: html [
	html div
		class: 'centered-content';
		class: 'examples';
		with: [ 
					| snackbar |
					snackbar := html mdlSnackbar
						message: 'Action finished.';
						timeout: 3000;
						yourself.
					(html mdlSnackbarButtonFor: snackbar)
						raised;
						rippleEffect;
						with: 'Show toast'.
					html paragraph: 'Toast' ].
	html
		preformatted: [ 
			html code
				class: 'smalltalk';
				with: self toastCode ]
]

{ #category : #code }
MDLSnackbarScreen >> snackbarCode [ 
	^ '| snackbar |
snackbar := (html mdlSnackbarWithId: ''mdl-demo-snackbar'')
	message: ''Color of the button changed'';
	actionText: ''undo'';
	action: ''document.querySelector(''''#snackbar-button'''').style.backgroundColor = '''''''''';
	timeout: 2000;
	yourself.
	
(html mdlSnackbarButtonFor: snackbar)
	raised;
	rippleEffect;
	id: ''snackbar-button'';
	onClick: ''document.querySelector(''''#snackbar-button'''').style.backgroundColor = ''''#'''' + Math.floor(Math.random() * 0xFFFFFF).toString(16)'';
	with: ''Show snackbar'''
]

{ #category : #accessing }
MDLSnackbarScreen >> title [
	^ 'Snackbar'
]

{ #category : #code }
MDLSnackbarScreen >> toastCode [
	^ '| snackbar |
snackbar := html mdlSnackbar
	message: ''Action finished.'';
	timeout: 3000;
	yourself.
(html mdlSnackbarButtonFor: snackbar)
	raised;
	rippleEffect;
	with: ''Show toast''' 
]
