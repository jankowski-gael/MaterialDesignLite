"
I'm the screen representing the buttons.
"
Class {
	#name : #MDLButtonsScreen,
	#superclass : #MDLDemoScreen,
	#category : 'Material-Design-Lite-Core-Example-Components'
}

{ #category : #accessing }
MDLButtonsScreen >> coloredButtons [
	^ OrderedDictionary new
		add: 'Colored button' -> #renderColoredButtonCodeOn:;
		add: 'Accent colored' -> #renderColoredAccentButtonCodeOn:;
		add: 'With Ripples' -> #renderColoredAccentRippleEffectButtonCodeOn:;
		yourself
]

{ #category : #accessing }
MDLButtonsScreen >> description [
	^ 'Variations on Material Design buttons.'
]

{ #category : #accessing }
MDLButtonsScreen >> fabButtons [
	^ OrderedDictionary new
		add: 'Plain FAB' -> #renderFabButtonCodeOn:;
		add: 'With ripple' -> #renderFabRippleEffectButtonCodeOn:;
		add: 'Disabled' -> #renderFabDisabledButtonCodeOn:;
		yourself
]

{ #category : #accessing }
MDLButtonsScreen >> fabColoredButtons [
	^ OrderedDictionary new
		add: 'Colored FAB' -> #renderColoredFabButtonCodeOn:;
		add: 'With ripple' -> #renderColoredFabRippleEffectButton2CodeOn:;
		yourself
]

{ #category : #accessing }
MDLButtonsScreen >> flatButtons [
	^ OrderedDictionary new
		add: 'Flat button' -> #renderFlatButtonCodeOn:;
		add: 'With ripple' -> #renderFlatRippleEffectButtonCodeOn:;
		add: 'Disabled' -> #renderFlatDisabledButtonCodeOn:;
		yourself
]

{ #category : #accessing }
MDLButtonsScreen >> icon [
	^ 'compbuttonsPng'
]

{ #category : #accessing }
MDLButtonsScreen >> iconButtons [
	^ OrderedDictionary new
		add: 'Icon button' -> #renderIconButtonCodeOn:;
		add: 'Colored' -> #renderIconColoredButtonCodeOn:;
		yourself
]

{ #category : #accessing }
MDLButtonsScreen >> miniFabButtons [
	^ OrderedDictionary new
		add: 'Mini FAB' -> #renderMiniFabButtonCodeOn:;
		add: 'Colored' -> #renderMiniFabColoredButtonCodeOn:;
		yourself
]

{ #category : #accessing }
MDLButtonsScreen >> raisedButtons [
	^ OrderedDictionary new
		add: 'Plain raised' -> #renderRaisedButtonCodeOn:;
		add: 'With ripple' -> #renderRaisedRippleEffectButtonCodeOn:;
		add: 'Disabled' -> #renderRaisedDisabledButtonCodeOn:;
		yourself
]

{ #category : #code }
MDLButtonsScreen >> renderColoredAccentButtonCodeOn: html [
	html mdlButton
		raised;
		accentColor;
		with: 'Button'
]

{ #category : #code }
MDLButtonsScreen >> renderColoredAccentRippleEffectButtonCodeOn: html [
	html mdlButton
		raised;
		accentColor;
		rippleEffect;
		with: 'Button'
]

{ #category : #code }
MDLButtonsScreen >> renderColoredButtonCodeOn: html [
	html mdlButton
		raised;
		primaryColor;
		with: 'Button'
]

{ #category : #code }
MDLButtonsScreen >> renderColoredFabButtonCodeOn: html [
	html mdlButton
		fab;
		colored;
		with: '+'
]

{ #category : #code }
MDLButtonsScreen >> renderColoredFabRippleEffectButton2CodeOn: html [
	html mdlButton
		fab;
		colored;
		rippleEffect;
		with: '+'
]

{ #category : #code }
MDLButtonsScreen >> renderFabButtonCodeOn: html [
	html mdlButton
		fab;
		with: '+'
]

{ #category : #code }
MDLButtonsScreen >> renderFabDisabledButtonCodeOn: html [
	html mdlButton
		fab;
		disabled;
		with: '+'
]

{ #category : #code }
MDLButtonsScreen >> renderFabRippleEffectButtonCodeOn: html [
	html mdlButton
		fab;
		rippleEffect;
		with: '+'
]

{ #category : #code }
MDLButtonsScreen >> renderFlatButtonCodeOn: html [
	html mdlButton: 'Button'
]

{ #category : #code }
MDLButtonsScreen >> renderFlatDisabledButtonCodeOn: html [
	html mdlButton
		disabled;
		with: 'Button'
]

{ #category : #code }
MDLButtonsScreen >> renderFlatRippleEffectButtonCodeOn: html [
	html mdlButton
		rippleEffect;
		with: 'Button'
]

{ #category : #code }
MDLButtonsScreen >> renderIconButtonCodeOn: html [
	"We could also use the #icon: method"

	html mdlButton
		icon;
		with: [ html mdlIcon: 'mood' ]
]

{ #category : #code }
MDLButtonsScreen >> renderIconColoredButtonCodeOn: html [
	html mdlButton
		primaryColor;
		icon: 'mood'
]

{ #category : #code }
MDLButtonsScreen >> renderMiniFabButtonCodeOn: html [
	html mdlButton
		fab;
		miniFab;
		with: '+'
]

{ #category : #code }
MDLButtonsScreen >> renderMiniFabColoredButtonCodeOn: html [
	html mdlButton
		fab;
		colored;
		miniFab;
		with: '+'
]

{ #category : #code }
MDLButtonsScreen >> renderRaisedButtonCodeOn: html [
	html mdlButton
		raised;
		with: 'Button'
]

{ #category : #code }
MDLButtonsScreen >> renderRaisedDisabledButtonCodeOn: html [
	html mdlButton
		raised;
		disabled;
		with: 'Button'
]

{ #category : #code }
MDLButtonsScreen >> renderRaisedRippleEffectButtonCodeOn: html [
	html mdlButton
		raised;
		rippleEffect;
		with: 'Button'
]

{ #category : #rendering }
MDLButtonsScreen >> renderScreenContentOn: html [
	self render: self fabColoredButtons withCardSizeOf: 2 on: html.
	self render: self fabButtons withCardSizeOf: 2 on: html.
	self render: self raisedButtons withCardSizeOf: 2 on: html.
	self render: self coloredButtons withCardSizeOf: 2 on: html.
	self render: self flatButtons withCardSizeOf: 2 on: html.
	self render: self iconButtons withCardSizeOf: 2 on: html.
	self render: self miniFabButtons withCardSizeOf: 2 on: html
]

{ #category : #accessing }
MDLButtonsScreen >> title [
	^ 'Buttons'
]
