"
I am a simple tag to display an initial on a mdl chip.

Examples:

	""A Chip with an initial and an hard coded color""
	html mdlChip
		deleteCallback: [ self deleteSelectedComponent ];
		with: [ 
					html mdlChipInitial
						hexColor: '009587';
						with: 'C'.
					html text: 'Example Chip' ].
		
	""A Chip with an initial and a color""
	html mdlChip
		deleteCallback: [ self deleteSelectedComponent ];
		with: [ 
					html mdlChipInitial
						color: (MDLColor tint: #red code: '200');
						with: 'CF'.
					html text: 'Example Chip' ]
 
"
Class {
	#name : #MDLChipInitial,
	#superclass : #WATagBrush,
	#category : 'Material-Design-Lite-Components-Chips'
}

{ #category : #accessing }
MDLChipInitial >> color: aColor [
	| hexColor |
	self flag: #clean.	"This is bad. Really really really bad :( but I don't have time :( In Pharo 4 we have Color>>printHTMLString. In Pharo 5 we have Color>>asHexString. When Pharo 4 will not be suported by MDL anymore we can use #asHexString. Or if someone fave the courage we can create a Material-Design-Lite-Pharo4 package that will have #asHexString as a Color extension and load this package only in Pharo 4. "
	hexColor := '000000' copy.
	hexColor at: 1 put: (Character digitValue: ((aColor privateRGB bitShift: -6 - 20) bitAnd: 15)).
	hexColor at: 2 put: (Character digitValue: ((aColor privateRGB bitShift: -2 - 20) bitAnd: 15)).
	hexColor at: 3 put: (Character digitValue: ((aColor privateRGB bitShift: -6 - 10) bitAnd: 15)).
	hexColor at: 4 put: (Character digitValue: ((aColor privateRGB bitShift: -2 - 10) bitAnd: 15)).
	hexColor at: 5 put: (Character digitValue: ((aColor privateRGB bitShift: -6 - 0) bitAnd: 15)).
	hexColor at: 6 put: (Character digitValue: ((aColor privateRGB bitShift: -2 - 0) bitAnd: 15)).
	self hexColor: hexColor
]

{ #category : #accessing }
MDLChipInitial >> hexColor: aString [
	self
		style:
			(String
				streamContents: [ :s | 
					s << 'background-color: '.
					(aString first = $#)
						ifFalse: [ s << $# ].
					s << aString ])
]

{ #category : #initialization }
MDLChipInitial >> initialize [
	super initialize.
	self class: #'mdl-chip__contact mdl-color-text--white'
]

{ #category : #accessing }
MDLChipInitial >> tag [
	^ #span
]
