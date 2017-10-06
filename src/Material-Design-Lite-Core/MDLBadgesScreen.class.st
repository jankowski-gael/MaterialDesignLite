"
I am the screen representing badges.

There are 2 different kinds of badges:  text or icon badges.

"
Class {
	#name : #MDLBadgesScreen,
	#superclass : #MDLDemoScreen,
	#category : 'Material-Design-Lite-Core-Example-Components'
}

{ #category : #accessing }
MDLBadgesScreen >> description [
	^ 'Small status descriptors for UI elements.'
]

{ #category : #accessing }
MDLBadgesScreen >> icon [
	^ 'compbadgesPng'
]

{ #category : #accessing }
MDLBadgesScreen >> iconBadges [
	^ OrderedDictionary new
		add: 'Number' -> #renderNumberBadgeOn:;
		add: 'Icon' -> #renderIconBadgeOn:;
		yourself
]

{ #category : #code }
MDLBadgesScreen >> renderIconBadgeOn: html [
	html mdlIconBadge
		dataBadge: (Character codePoint: 9829) asString;
		overlap;
		with: 'account_box'
]

{ #category : #code }
MDLBadgesScreen >> renderIconTextBadgeOn: html [
	html mdlBadge
		dataBadge: (Character codePoint: 9829) asString;
		with: 'Mood'
]

{ #category : #code }
MDLBadgesScreen >> renderNumberBadgeOn: html [
	html mdlIconBadge
		dataBadge: '1';
		overlap;
		with: 'account_box'
]

{ #category : #code }
MDLBadgesScreen >> renderNumberTextBadgeOn: html [
	html mdlBadge
		dataBadge: '4';
		with: 'Inbox'
]

{ #category : #rendering }
MDLBadgesScreen >> renderScreenContentOn: html [
	self render: self iconBadges withCardSizeOf: 1 on: html.
	self render: self textBadges withCardSizeOf: 1 on: html
]

{ #category : #accessing }
MDLBadgesScreen >> textBadges [
	^ OrderedDictionary new
		add: 'Number' -> #renderNumberTextBadgeOn:;
		add: 'Icon' -> #renderIconTextBadgeOn:;
		yourself
]

{ #category : #accessing }
MDLBadgesScreen >> title [
	^ 'Badges'
]
