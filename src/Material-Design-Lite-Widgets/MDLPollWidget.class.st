"
I represent a widget for polling with thumbs.

For you project, you must subclass me and override #negativePollBlock and #positivePollBlock 
"
Class {
	#name : #MDLPollWidget,
	#superclass : #MDLHighLevelWidget,
	#instVars : [
		'poll',
		'pollWidgetId'
	],
	#category : 'Material-Design-Lite-Widgets-Poll'
}

{ #category : #'instance creation' }
MDLPollWidget class >> newWithPoll: aMDLPoll [
	^ self new poll: aMDLPoll
]

{ #category : #initialization }
MDLPollWidget >> initialize [
	super initialize.
	self class: 'mdl-poll-widget'.
	poll := MDLPoll new
]

{ #category : #private }
MDLPollWidget >> negativePollBlock [
	^ [ poll increaseNegativeCount ]
]

{ #category : #accessing }
MDLPollWidget >> poll: anObject [
	poll := anObject
]

{ #category : #private }
MDLPollWidget >> positivePollBlock [
	^ [ poll increasePositiveCount ]
]

{ #category : #rendering }
MDLPollWidget >> renderContentOn: html [
	html div
		id: (pollWidgetId := html nextId);
		with:
				[ self renderPollButtonsOn: html ]
]

{ #category : #rendering }
MDLPollWidget >> renderNegativePollButtonOn: html [
	html mdlIconBadge
		overlap;
		dataBadge: poll negativeCount greaseString;
		with: [ html mdlButton
				rippleEffect;
				icon;
				onClick:
					(html jQuery ajax
						callback: [ self negativePollBlock value ];
						onComplete:
							((html jQuery id: pollWidgetId) load
								html: [ :ajaxHtml | self renderPollButtonsOn: ajaxHtml ]));
				with: [ html mdlIcon: 'thumb_down' ] ]
]

{ #category : #rendering }
MDLPollWidget >> renderPollButtonsOn: html [
	self renderPositivePollButtonOn: html.
	self renderNegativePollButtonOn: html
]

{ #category : #rendering }
MDLPollWidget >> renderPositivePollButtonOn: html [
	html mdlIconBadge
		overlap;
		dataBadge: poll positiveCount greaseString;
		with: [ html mdlButton
				rippleEffect;
				icon;
				onClick:
					(html jQuery ajax
						callback: [ self positivePollBlock value ];
						onComplete:
							((html jQuery id: pollWidgetId) load
								html: [ :ajaxHtml | self renderPollButtonsOn: ajaxHtml ]));
				with: [ html mdlIcon: 'thumb_up' ] ]
]
