"
I am a nested list filter keeping only elements whose name begins with the pattern passed by the user in an insensitive way.
"
Class {
	#name : #MDLInsensitiveBeginsWithFilter,
	#superclass : #MDLAbstractFilter,
	#category : 'Material-Design-Lite-Widgets-List'
}

{ #category : #accessing }
MDLInsensitiveBeginsWithFilter class >> selectMatchingFrom: aCollection format: aFormatBlock with: aPattern [
	^ aCollection select: [ :each | (aFormatBlock value: each) asLowercase beginsWith: aPattern asLowercase ]
]
