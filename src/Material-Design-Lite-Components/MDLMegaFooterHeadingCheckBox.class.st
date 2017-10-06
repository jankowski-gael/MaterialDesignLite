"
Checkbox for collapsible footers
"
Class {
	#name : #MDLMegaFooterHeadingCheckBox,
	#superclass : #WACheckboxTag,
	#category : 'Material-Design-Lite-Components-Footer'
}

{ #category : #initialization }
MDLMegaFooterHeadingCheckBox >> initialize [
	super initialize.
	self class: 'mdl-mega-footer__heading-checkbox'.
	self value: true
]
