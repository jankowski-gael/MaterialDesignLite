"
Small status descriptors for UI elements.
"
Class {
	#name : #MDLBadge,
	#superclass : #MDLDivTag,
	#category : 'Material-Design-Lite-Components-Badge'
}

{ #category : #options }
MDLBadge >> dataBadge: aString [
	self attributeAt: 'data-badge' put: aString 
]

{ #category : #initialize-release }
MDLBadge >> initialize [
	super initialize.
	self class: 'mdl-badge'
]

{ #category : #options }
MDLBadge >> noBackground [
	self class: 'mdl-badge--no-background'
]

{ #category : #options }
MDLBadge >> overlap [
	self class: 'mdl-badge--overlap'
]

{ #category : #accessing }
MDLBadge >> tag [
	^ 'span'
]
