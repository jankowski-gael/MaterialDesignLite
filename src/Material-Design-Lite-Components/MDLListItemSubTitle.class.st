Class {
	#name : #MDLListItemSubTitle,
	#superclass : #WATagBrush,
	#category : 'Material-Design-Lite-Components-List'
}

{ #category : #initialization }
MDLListItemSubTitle >> initialize [
	super initialize.
	self class: 'mdl-list__item-sub-title'
]

{ #category : #accessing }
MDLListItemSubTitle >> tag [
	^'span'
]
