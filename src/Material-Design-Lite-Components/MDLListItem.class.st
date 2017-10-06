Class {
	#name : #MDLListItem,
	#superclass : #WATagBrush,
	#category : 'Material-Design-Lite-Components-List'
}

{ #category : #initialization }
MDLListItem >> initialize [
	super initialize.
	self class: 'mdl-list__item'
]

{ #category : #accessing }
MDLListItem >> tag [
	^ 'li'
]

{ #category : #accessing }
MDLListItem >> threeLine [
	self class: 'mdl-list__item--three-line'
]

{ #category : #accessing }
MDLListItem >> twoLine [
	self class: 'mdl-list__item--two-line'
]
