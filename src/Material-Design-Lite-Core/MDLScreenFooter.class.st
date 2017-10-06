Class {
	#name : #MDLScreenFooter,
	#superclass : #WADecoration,
	#instVars : [
		'footer'
	],
	#category : 'Material-Design-Lite-Core-Applications'
}

{ #category : #'instance creation' }
MDLScreenFooter class >> newWithFooter: aFooter [
	^ self new
		footer: aFooter;
		yourself
]

{ #category : #accessing }
MDLScreenFooter >> footer [
	^ footer
]

{ #category : #accessing }
MDLScreenFooter >> footer: anObject [
	footer := anObject
]

{ #category : #rendering }
MDLScreenFooter >> renderContentOn: html [
	self renderNextOn: html.
	html render: footer
]
