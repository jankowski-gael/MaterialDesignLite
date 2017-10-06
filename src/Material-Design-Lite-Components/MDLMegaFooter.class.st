"
I'm a footer
"
Class {
	#name : #MDLMegaFooter,
	#superclass : #WATagBrush,
	#category : 'Material-Design-Lite-Components-Footer'
}

{ #category : #'as yet unclassified' }
MDLMegaFooter >> initialize [
	super initialize.
	self class: 'mdl-mega-footer'
]

{ #category : #'as yet unclassified' }
MDLMegaFooter >> tag [
	^ 'footer'
]
