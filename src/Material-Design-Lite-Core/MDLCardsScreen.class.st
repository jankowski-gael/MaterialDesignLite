"
I am the screen representing cards.
"
Class {
	#name : #MDLCardsScreen,
	#superclass : #MDLDemoScreen,
	#category : 'Material-Design-Lite-Core-Example-Components'
}

{ #category : #accessing }
MDLCardsScreen >> description [
	^ 'Self-contained pieces of paper with data'
]

{ #category : #accessing }
MDLCardsScreen >> icon [
		^ 'compcardsPng'
]

{ #category : #accessing }
MDLCardsScreen >> imageCards [
	^ OrderedDictionary with: 'Image' -> #renderImageCardOn: with: 'Event' -> #renderDateCardOn:
]

{ #category : #code }
MDLCardsScreen >> renderDateCardOn: html [
	html mdlCard
		shadow: 2;
		mdlTypographyTextLeft;
		style: 'margin: auto; width: 256px; height: 256px;  background: #3E4EB8;';
		with: [ 
			html mdlCardTitle
				style: 'align-items: flex-start; color: #fff';
				expand;
				with: [ html mdlCardTitleText
						style: 'margin-top: 0; align-self: flex-start';
						level: 4;
						with: [ html text: 'Featured event:'.
							html break.
							html text: 'May 25, 2016'.
							html break.
							html text: '7-11pm' ] ].
			html mdlCardActions
				border;
				style:
					'border-color: rgba(255, 255, 255, 0.2);
								display: flex;
  								box-sizing:border-box;
  								align-items: center;
								color: #fff';
				with: [ html mdlButton
						colored;
						rippleEffect;
						mdlTypographyFontBold;
						style: 'color: #fff';
						with: 'Add to calendar'.
					html mdlLayoutSpacer.
					html mdlIcon
						style: 'padding-right: 10px';
						with: 'event' ] ]
]

{ #category : #code }
MDLCardsScreen >> renderImageCardOn: html [
	html mdlCard
		shadow: 2;
		mdlTypographyTextLeft;
		style: 'margin: auto; width: 256px; height: 256px;  background: url(''' , (MDLDemoLibrary urlOf: #imagecardJpg) asString , ''') center / cover';
		with: [ html mdlCardTitle expand.
			html mdlCardActions
				style: 'height: 52px; padding: 16px; background: rgba(0,0,0,0.2)';
				with: [ html span
						mdlTypographyFontBold;
						style: 'color: #fff;  font-size: 14px';
						with: 'Image.jpg' ] ]
]

{ #category : #rendering }
MDLCardsScreen >> renderScreenContentOn: html [
	self render: self wideCards withCardSizeOf: 5 on: html.
	self render: self squareCards withCardSizeOf: 3 on: html.
	self render: self imageCards withCardSizeOf: 3 on: html
]

{ #category : #code }
MDLCardsScreen >> renderSquareCardOn: html [
	html mdlCard
		shadow: 2;
		mdlTypographyTextLeft;
		style: 'margin: 20px auto; width: 320px; height: 320px';
		with: [ html mdlCardTitle
				expand;
				style: 'color: #fff;background: url(''' , (MDLDemoLibrary urlOf: #dogPng) asString , ''') bottom right 15% no-repeat #46B6AC;';
				with: [ html mdlCardTitleText: 'Update' level: 2 ].
			html mdlCardTextContainer: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenan convallis.'.
			html mdlCardActions
				border;
				with: [ html mdlButton
						mdlTypographyFontBold;
						colored;
						rippleEffect;
						with: 'View Updates' ] ]
]

{ #category : #code }
MDLCardsScreen >> renderWideCardOn: html [
	html mdlCard
		shadow: 2;
		mdlTypographyTextLeft;
		style: 'margin: 20px auto; width: 512px';
		with: [ 
			
			html mdlCardTitle
				style: 'height: 176px; background: url(''' , (MDLDemoLibrary urlOf: #welcomecardJpg) asString , ''') center / cover; color: #fff';
				with: [ html mdlCardTitleText: 'Welcome' ].
				
			html mdlCardTextContainer:
					'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sagittis pellentesque lacus eleifend lacinia...'.
					
			html mdlCardActions
				border;
				with: [ html mdlButton
						colored;
						rippleEffect;
						mdlTypographyFontBold;
						with: 'Get Started' ].
					
			html mdlCardMenu
				style: 'color: #fff';
				with: [ html mdlButton
						icon;
						rippleEffect;
						with: [ html mdlIcon: 'share' ] ] ]
]

{ #category : #accessing }
MDLCardsScreen >> squareCards [
	^ OrderedDictionary with: 'Square' -> #renderSquareCardOn:
]

{ #category : #accessing }
MDLCardsScreen >> title [
	^ 'Cards'
]

{ #category : #accessing }
MDLCardsScreen >> wideCards [
	^ OrderedDictionary with: 'Wide' -> #renderWideCardOn:
]
