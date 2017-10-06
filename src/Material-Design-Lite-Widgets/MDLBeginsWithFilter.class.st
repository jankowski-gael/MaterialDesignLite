"
I am a nested list filter keeping only elements whose name begins with the pattern passed by the user.
"
Class {
	#name : #MDLBeginsWithFilter,
	#superclass : #MDLAbstractFilter,
	#category : 'Material-Design-Lite-Widgets-List'
}

{ #category : #accessing }
MDLBeginsWithFilter class >> selectMatchingFrom: aCollection format: aFormatBlock with: aPattern [
	^ aCollection select: [ :each | (aFormatBlock value: each) beginsWith: aPattern ]
]
