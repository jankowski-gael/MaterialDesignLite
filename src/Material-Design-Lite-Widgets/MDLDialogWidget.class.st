"
I represent a dialog widget
"
Class {
	#name : #MDLDialogWidget,
	#superclass : #MDLWidget,
	#instVars : [
		'title',
		'content',
		'actions',
		'buttonName',
		'closeButtonName',
		'buttonBrush',
		'dialogBrush'
	],
	#category : 'Material-Design-Lite-Widgets-Dialog'
}

{ #category : #'instance creation' }
MDLDialogWidget class >> content: aBlock actions: aSecondBlock buttonName: aString [
	^ (self content: aBlock buttonName: aString)
		actions: aSecondBlock;
		yourself
]

{ #category : #'instance creation' }
MDLDialogWidget class >> content: aBlock actions: aSecondBlock buttonName: aString closeButtonName: aSecondString [
	^ (self new content: aBlock actions: aSecondBlock buttonName: aString) 
		closeButtonName: aSecondString;
		yourself
]

{ #category : #'instance creation' }
MDLDialogWidget class >> content: aBlock actions: aSecondBlock closeButtonName: aString [ 
	^ (self content: aBlock buttonName: aString)
		closeButtonName: aSecondBlock;
		yourself
]

{ #category : #'instance creation' }
MDLDialogWidget class >> content: aBlock buttonName: aString [
	^ self new
		content: aBlock;
		buttonName: aString;
		yourself
]

{ #category : #'instance creation' }
MDLDialogWidget class >> title: aString content: aBlock actions: aSecondBlock buttonName: aSecondString [
	^ (self content: aBlock actions: aSecondBlock buttonName: aSecondString)
		title: aString;
		yourself
]

{ #category : #'instance creation' }
MDLDialogWidget class >> title: aString content: aBlock actions: aSecondBlock buttonName: aSecondString closeButtonName: aThirdString [
	^ (self title: aString content: aBlock actions: aSecondBlock buttonName: aSecondString)
		closeButtonName: aThirdString;
		yourself
]

{ #category : #'instance creation' }
MDLDialogWidget class >> title: aString content: aBlock buttonName: aSecondString [
	^ (self content: aBlock buttonName: aSecondString)
		title: aString;
		yourself
]

{ #category : #'instance creation' }
MDLDialogWidget class >> title: aString content: aBlock buttonName: aSecondString closeButtonName: aThirdString [
	^ (self title: aString content: aBlock buttonName: aSecondString)
		closeButtonName: aThirdString;
		yourself
]

{ #category : #accessing }
MDLDialogWidget >> actions [
	^ actions
]

{ #category : #accessing }
MDLDialogWidget >> actions: anObject [
	actions := anObject
]

{ #category : #accessing }
MDLDialogWidget >> buttonBrush [
	^ buttonBrush
]

{ #category : #accessing }
MDLDialogWidget >> buttonBrush: anObject [
	buttonBrush := anObject
]

{ #category : #accessing }
MDLDialogWidget >> buttonName [
	^ buttonName
]

{ #category : #accessing }
MDLDialogWidget >> buttonName: anObject [
	buttonName := anObject
]

{ #category : #accessing }
MDLDialogWidget >> closeButtonName [
	^ closeButtonName
]

{ #category : #accessing }
MDLDialogWidget >> closeButtonName: anObject [
	closeButtonName := anObject
]

{ #category : #accessing }
MDLDialogWidget >> content [
	^ content
]

{ #category : #accessing }
MDLDialogWidget >> content: anObject [
	content := anObject
]

{ #category : #accessing }
MDLDialogWidget >> dialogBrush [
	^ dialogBrush
]

{ #category : #accessing }
MDLDialogWidget >> dialogBrush: anObject [
	dialogBrush := anObject
]

{ #category : #initialization }
MDLDialogWidget >> initialize [
	super initialize.
	closeButtonName := 'Close'.
	buttonBrush := MDLButton new.
	dialogBrush := MDLDialog new
]

{ #category : #rendering }
MDLDialogWidget >> renderContentOn: html [
	| openButtonId closeButtonId |
	closeButtonId := html nextId.
	(html brush: buttonBrush)
		id: (openButtonId := html nextId);
		raised;
		rippleEffect;
		with: buttonName.
	(html brush: dialogBrush)
		id: html nextId;
		openButtonId: openButtonId;
		closeButtonId: closeButtonId;
		with: [ 
					title ifNotNil: [ html mdlDialogTitle: title ].
					html mdlDialogContent: content.
					html
						mdlDialogActions: [ 
							actions ifNotNil: [ html render: actions ].
							html mdlButton
								id: closeButtonId;
								with: closeButtonName ] ]
]

{ #category : #accessing }
MDLDialogWidget >> title [
	^ title
]

{ #category : #accessing }
MDLDialogWidget >> title: anObject [
	title := anObject
]
