"
A MDLThumbsPollTest is a test class for testing the behavior of MDLThumbsPoll
"
Class {
	#name : #MDLThumbsPollTest,
	#superclass : #TestCase,
	#instVars : [
		'thumbsPoll'
	],
	#category : 'Material-Design-Lite-Widgets-Tests'
}

{ #category : #running }
MDLThumbsPollTest >> setUp [
	super setUp.
	thumbsPoll := MDLThumbsPoll new
]

{ #category : #tests }
MDLThumbsPollTest >> testNegativelyVotedIncreaseNegativeCount [
	| object oldNegativeCount |
	object := Object new.
	oldNegativeCount := thumbsPoll negativeCount.
	thumbsPoll negativelyVotedBy: object.
	self assert: thumbsPoll negativeCount equals: oldNegativeCount + 1
]

{ #category : #tests }
MDLThumbsPollTest >> testPositivelyVotedIncreasePositiveCount [
	| object oldPositiveCount |
	object := Object new.
	oldPositiveCount := thumbsPoll positiveCount.
	thumbsPoll positivelyVotedBy: object.
	self assert: thumbsPoll positiveCount equals: oldPositiveCount + 1
]

{ #category : #tests }
MDLThumbsPollTest >> testRateNegativelyByObjectThenRatePositively [
	| object oldPositiveCount oldNegativeCount |
	object := Object new.
	oldPositiveCount := thumbsPoll positiveCount.
	oldNegativeCount := thumbsPoll negativeCount.
	thumbsPoll negativelyVotedBy: object.
	thumbsPoll positivelyVotedBy: object.
	self assert: thumbsPoll negativeCount equals: oldNegativeCount.
	self assert: thumbsPoll positiveCount equals: oldPositiveCount + 1
]

{ #category : #tests }
MDLThumbsPollTest >> testRatePositivelyThenRateNegatively [
	| object oldPositiveCount oldNegativeCount |
	object := Object new.
	oldPositiveCount := thumbsPoll positiveCount.
	oldNegativeCount := thumbsPoll negativeCount.
	thumbsPoll positivelyVotedBy: object.
	thumbsPoll negativelyVotedBy: object.
	self assert: thumbsPoll positiveCount equals: oldPositiveCount.
	self assert: thumbsPoll negativeCount equals: oldNegativeCount + 1
]
