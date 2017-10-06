"
I am a nested list filter keeping only elements whose name includes the pattern of the user. BUT! If the pattern contains a ""*"" or a ""#"", I uses a regex fiter.
"
Class {
	#name : #MDLPseudoRegexFilter,
	#superclass : #MDLAbstractFilter,
	#category : 'Material-Design-Lite-Widgets-List'
}

{ #category : #accessing }
MDLPseudoRegexFilter class >> adaptPattern: aPattern [
	^ String
		streamContents: [ :s | 
			(aPattern includes: $*)
				ifFalse: [ s << '.*' ].
			s << ('.*' join: ($* split: aPattern)).
			(aPattern includes: $*)
				ifFalse: [ s << '.*' ] ]
]

{ #category : #accessing }
MDLPseudoRegexFilter class >> selectMatchingFrom: aCollection format: aFormatBlock with: aPattern [
	| regex |
	regex := (self adaptPattern: aPattern) asRegexIgnoringCase.
	^ aCollection select: [ :each | regex matches: (aFormatBlock value: each) ]
]
