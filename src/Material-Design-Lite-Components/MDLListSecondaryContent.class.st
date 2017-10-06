Class {
	#name : #MDLListSecondaryContent,
	#superclass : #WATagBrush,
	#category : 'Material-Design-Lite-Components-List'
}

{ #category : #initialization }
MDLListSecondaryContent >> initialize [
	super initialize.
	self class: 'mdl-list__item-secondary-content'
]

{ #category : #accessing }
MDLListSecondaryContent >> tag [
	^ 'span'
]
