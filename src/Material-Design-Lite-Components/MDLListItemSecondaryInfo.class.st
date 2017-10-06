Class {
	#name : #MDLListItemSecondaryInfo,
	#superclass : #WATagBrush,
	#category : 'Material-Design-Lite-Components-List'
}

{ #category : #initialization }
MDLListItemSecondaryInfo >> initialize [
	super initialize.
	self class: 'mdl-list__item-secondary-info'
]

{ #category : #accessing }
MDLListItemSecondaryInfo >> tag [
	^'span'
]
