"
I am the model for MDLPollWidget
"
Class {
	#name : #MDLPoll,
	#superclass : #GRObject,
	#instVars : [
		'positiveCount',
		'negativeCount'
	],
	#category : 'Material-Design-Lite-Widgets-Poll'
}

{ #category : #accessing }
MDLPoll >> decreaseNegativeCount [
	negativeCount := negativeCount - 1
]

{ #category : #accessing }
MDLPoll >> decreasePositiveCount [
	positiveCount := positiveCount - 1
]

{ #category : #accessing }
MDLPoll >> increaseNegativeCount [
	negativeCount := negativeCount + 1
]

{ #category : #accessing }
MDLPoll >> increasePositiveCount [
	positiveCount := positiveCount + 1
]

{ #category : #initialization }
MDLPoll >> initialize [
	super initialize.
	positiveCount := 0.
	negativeCount := 0
]

{ #category : #accessing }
MDLPoll >> negativeCount [
	^ negativeCount
]

{ #category : #hooks }
MDLPoll >> negativelyVotedBy: anObject [
	self subclassResponsibility
]

{ #category : #accessing }
MDLPoll >> positiveCount [
	^ positiveCount
]

{ #category : #hooks }
MDLPoll >> positivelyVotedBy: anObject [
	self subclassResponsibility
]
