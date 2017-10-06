"
An icon-toggle consists of a user defined icon that indicates, by visual highlighting, a binary condition that will be set or unset when the user clicks or touches it. Like checkboxes, icon-toggles may appear individually or in groups, and can be selected and deselected individually.
"
Class {
	#name : #MDLIconToggle,
	#superclass : #WACheckboxTag,
	#category : 'Material-Design-Lite-Components-IconToggle'
}

{ #category : #'as yet unclassified' }
MDLIconToggle >> initialize [
	super initialize.
	self class: 'mdl-icon-toggle__input'
]
