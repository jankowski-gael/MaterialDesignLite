"
I represent a poll with thums up and thums down

When an object vote, it has only one point but you can remove or change your choice
"
Class {
	#name : #MDLThumbsPoll,
	#superclass : #MDLPoll,
	#instVars : [
		'votes'
	],
	#category : 'Material-Design-Lite-Widgets-Poll'
}

{ #category : #initialization }
MDLThumbsPoll >> initialize [
	super initialize.
	votes := Dictionary new
]

{ #category : #testing }
MDLThumbsPoll >> isPolledBy: anObject [
	^ votes includesKey: anObject
]

{ #category : #hooks }
MDLThumbsPoll >> negativelyVotedBy: anObject [
	(self isPolledBy: anObject)
		ifTrue: [ (votes at: anObject) = #positivePoll
				ifTrue: [ self decreasePositiveCount.
					self increaseNegativeCount.
					votes at: anObject put: #negativePoll ]
				ifFalse: [ self decreaseNegativeCount.
					votes removeKey: anObject ] ]
		ifFalse: [ votes at: anObject put: #negativePoll.
			self increaseNegativeCount ]
]

{ #category : #hooks }
MDLThumbsPoll >> positivelyVotedBy: anObject [
	(self isPolledBy: anObject)
		ifTrue: [ (votes at: anObject) = #positivePoll
				ifTrue: [ self decreasePositiveCount.
					votes removeKey: anObject ]
				ifFalse: [ self decreaseNegativeCount.
					self increasePositiveCount.
					votes at: anObject put: #positivePoll ] ]
		ifFalse: [ votes at: anObject put: #positivePoll.
			self increasePositiveCount ]
]
