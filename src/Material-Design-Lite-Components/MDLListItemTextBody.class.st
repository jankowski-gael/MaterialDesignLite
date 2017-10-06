Class {
	#name : #MDLListItemTextBody,
	#superclass : #WATagBrush,
	#category : 'Material-Design-Lite-Components-List'
}

{ #category : #'as yet unclassified' }
MDLListItemTextBody >> initialize [
	super initialize.
	self class: 'mdl-list__item-text-body'
]

{ #category : #'as yet unclassified' }
MDLListItemTextBody >> tag [
	^ 'span'
]
