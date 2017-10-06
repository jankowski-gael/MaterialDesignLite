"
I'm a mini footer
"
Class {
	#name : #MDLMiniFooter,
	#superclass : #WATagBrush,
	#category : 'Material-Design-Lite-Components-Footer'
}

{ #category : #initialization }
MDLMiniFooter >> initialize [
	super initialize.
	self class: 'mdl-mini-footer'
]

{ #category : #accessing }
MDLMiniFooter >> tag [
	^ 'footer'
]
