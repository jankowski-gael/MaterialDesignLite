"
Transient popup notifications.

actionText is the text of the button in the snackbar, it could be something like an 'undo' button
action is the action to execute when the actionText button is pressed
"
Class {
	#name : #MDLSnackbar,
	#superclass : #MDLDivTag,
	#instVars : [
		'message',
		'timeout',
		'actionText',
		'action'
	],
	#category : 'Material-Design-Lite-Components-Snackbar'
}

{ #category : #accessing }
MDLSnackbar >> action [
	^ action
]

{ #category : #accessing }
MDLSnackbar >> action: anObject [
	action := anObject
]

{ #category : #accessing }
MDLSnackbar >> actionText [
	^ actionText
]

{ #category : #accessing }
MDLSnackbar >> actionText: anObject [
	actionText := anObject
]

{ #category : #running }
MDLSnackbar >> defaultTimeout [
	^'2000'
]

{ #category : #'javascript generation' }
MDLSnackbar >> getJsShowingSnackbar [
	^ String
		streamContents: [ :s | 
			s
				<< 'var snackbarContainer=document.querySelector(''#';
				<< self id;
				<< ''');var data={};';
				<< 'data.message=''';
				<< message;
				<< ''';data.timeout=';
				<< timeout asString;
				<< $;.
			(actionText notNil and: [ action notNil ])
				ifTrue: [ 
					s
						<< 'data.actionText=''';
						<< actionText;
						<< ''';var handler=function(event){';
						<< action;
						<< '};data.actionHandler=handler;' ].
			s << 'snackbarContainer.MaterialSnackbar.showSnackbar(data);' ]
]

{ #category : #initialization }
MDLSnackbar >> initialize [
	super initialize.
	self class: 'mdl-js-snackbar'.
	self class: 'mdl-snackbar'.
	action := ''.
   timeout := self defaultTimeout
]

{ #category : #accessing }
MDLSnackbar >> message [
	^ message
]

{ #category : #accessing }
MDLSnackbar >> message: anObject [
	message := anObject
]

{ #category : #accessing }
MDLSnackbar >> timeout [
	^ timeout
]

{ #category : #accessing }
MDLSnackbar >> timeout: anObject [
	timeout := anObject
]
