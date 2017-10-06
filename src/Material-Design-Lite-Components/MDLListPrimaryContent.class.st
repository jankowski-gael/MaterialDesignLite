Class {
	#name : #MDLListPrimaryContent,
	#superclass : #WATagBrush,
	#category : 'Material-Design-Lite-Components-List'
}

{ #category : #initialization }
MDLListPrimaryContent >> initialize [
	super initialize.
	self class: 'mdl-list__item-primary-content'
]

{ #category : #accessing }
MDLListPrimaryContent >> tag [
	^ 'span'
]
