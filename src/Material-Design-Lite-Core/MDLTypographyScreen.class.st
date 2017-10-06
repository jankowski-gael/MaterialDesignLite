"
I am a demo screen to show how to use Typography elements
"
Class {
	#name : #MDLTypographyScreen,
	#superclass : #MDLDemoScreen,
	#category : 'Material-Design-Lite-Core-Example-Components'
}

{ #category : #accessing }
MDLTypographyScreen >> backgroundColorOptions [
	^ OrderedDictionary with: 'Background color options' -> #renderBackgroundColorOptionsOn:
]

{ #category : #accessing }
MDLTypographyScreen >> description [
	^ 'Predefined typographies'
]

{ #category : #accessing }
MDLTypographyScreen >> fontOptions [
	^ OrderedDictionary with: 'Font options' -> #renderFontOptionsOn:
]

{ #category : #accessing }
MDLTypographyScreen >> icon [
	^'comptextfieldsPng'
]

{ #category : #code }
MDLTypographyScreen >> renderBackgroundColorOptionsOn: html [
	html div
		mdlTypographyTextJustify;
		style: 'color: white';
		with:
				[ #('primary' 'primary-Dark' 'accent')
				do: [ :each | 
					| selector |
					selector := ('mdlBackgroundColor' , (each capitalized copyReplaceAll: '-' with: '' )) asSymbol.	"For example `#mdlBackgroundColorPrimaryDark`"
					html div
						style: 'margin: 10px 0;';
						perform: selector;
						with: each asLowercase capitalized ] ]
]

{ #category : #code }
MDLTypographyScreen >> renderFontOptionsOn: html [
	html div
		mdlTypographyTextJustify;
		mdlTypographyBody2;
		with: [ #('thin' 'light' 'regular' 'medium' 'bold' 'black')
				do: [ :each | 
					| selector |
					selector := ('mdlTypographyFont' , each capitalized) asSymbol.	"For example `#mdlTypographyFontThin`"
					html div
						perform: selector;
						with: 'This is am example with the font option: ' , each ] ]
]

{ #category : #rendering }
MDLTypographyScreen >> renderScreenContentOn: html [
	self render: self typographies withCardSizeOf: 4 on: html.
	self render: self fontOptions withCardSizeOf: 4 on: html.
	self render: self textOptions withCardSizeOf: 4 on: html.
	self render: self backgroundColorOptions withCardSizeOf: 4 on: html.
	self render: self textColorOptions withCardSizeOf: 4 on: html
]

{ #category : #code }
MDLTypographyScreen >> renderTextColorOptionsOn: html [
	html div
		mdlTypographyTextJustify;
		with:
				[ #('primary' 'primary-Dark' 'accent')
				do: [ :each | 
					| selector |
					selector := ('mdlTextColor' , (each capitalized copyReplaceAll: '-' with: '' )) asSymbol.	"For example `#mdlTextColorPrimaryDark`"
					html div
						style: 'margin: 10px 0;';
						perform: selector;
						with: each asLowercase capitalized ] ]
]

{ #category : #code }
MDLTypographyScreen >> renderTextOptionsOn: html [
	html div
		mdlTypographyTextJustify;
		mdlTypographyBody1;
		with: [ #('left' 'right' 'center' 'justify' 'nowrap' 'lowercase' 'uppercase' 'capitalize')
				do: [ :each | 
					| selector |
					selector := ('mdlTypographyText' , each capitalized) asSymbol.	"For example `#mdlTypographyTextLeft`"
					html div
						perform: selector;
						with: 'This is am example with the text option: ' , each ] ]
]

{ #category : #code }
MDLTypographyScreen >> renderTypographiesOn: html [
	html div
		mdlTypographyTextJustify;
		with:
				[ #('display-4' 'display-3' 'display-2' 'display-1' 'headline' 'title' 'subhead' 'body-2' 'body-1' 'body-2-Force-Preferred-Font' 'body-1-Force-Preferred-Font' 'caption' 'caption-Force-Preferred-Font' 'menu' 'button')
				do: [ :each | 
					| selector |
					selector := ('mdlTypography' , (each capitalized copyReplaceAll: '-' with: '' )) asSymbol.	"For example `#mdlTypographyCaptionForcePreferredFont`"
					html div
						style: 'margin: 10px 0;';
						perform: selector;
						with: each asLowercase capitalized ] ]
]

{ #category : #code }
MDLTypographyScreen >> renderTypographiesWithContrastOn: html [
	html div
		mdlTypographyTextJustify;
		with:
				[ #('display-4' 'display-3' 'display-2' 'display-1' 'headline' 'title' 'subhead' 'body-2' 'body-1' 'body-2-Force-Preferred-Font' 'body-1-Force-Preferred-Font' 'caption' 'caption-Force-Preferred-Font' 'menu' 'button')
				do: [ :each | 
					| selector |
					selector := ('mdlTypography' , (each capitalized copyReplaceAll: '-' with: '' ), 'ColorContrast') asSymbol.	"For example `#mdlTypographyCaptionForcePreferredFontColorContrast`"
					html div
						style: 'margin: 10px 0;';
						perform: selector;
						with: each asLowercase capitalized ] ]
]

{ #category : #accessing }
MDLTypographyScreen >> textColorOptions [
	^ OrderedDictionary with: 'Text color options' -> #renderTextColorOptionsOn:
]

{ #category : #accessing }
MDLTypographyScreen >> textOptions [
	^ OrderedDictionary with: 'Text options' -> #renderTextOptionsOn:
]

{ #category : #accessing }
MDLTypographyScreen >> title [
	^ 'Typography'
]

{ #category : #accessing }
MDLTypographyScreen >> typographies [
	^ OrderedDictionary with: 'Typographies' -> #renderTypographiesOn: with: 'Color contrast' -> #renderTypographiesWithContrastOn:
]
