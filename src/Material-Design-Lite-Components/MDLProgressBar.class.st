"
Indicate loading and progress states.
"
Class {
	#name : #MDLProgressBar,
	#superclass : #MDLDivTag,
	#category : 'Material-Design-Lite-Components-Loading'
}

{ #category : #options }
MDLProgressBar >> indeterminate [
	self class: 'mdl-progress__indeterminate'
]

{ #category : #initialize-release }
MDLProgressBar >> initialize [
	super initialize.
	self class: 'mdl-progress'.
	self class: 'mdl-js-progress'.
]
