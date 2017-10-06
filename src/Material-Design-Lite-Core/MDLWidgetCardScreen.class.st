"
Screen to render MDLCardWidget examples
"
Class {
	#name : #MDLWidgetCardScreen,
	#superclass : #MDLDemoScreen,
	#category : 'Material-Design-Lite-Core-Example-Components'
}

{ #category : #accessing }
MDLWidgetCardScreen >> description [
	^ 'A Card widget to make easy the use of the cards.'
]

{ #category : #accessing }
MDLWidgetCardScreen >> icon [
	^ 'compcardsPng'
]

{ #category : #code }
MDLWidgetCardScreen >> renderCardOn: html [
	html div
		style: 'text-align: left';
		with: [ html
				render:
					(MDLCardWidget new
						class: 'mdl-widget-demo-card';
						shadow: 2;
						title: self title;
						addTextContainer: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sagittis pellentesque lacus eleifend lacinia...';
						addAction: [ html mdlButton
								colored;
								rippleEffect;
								with: 'Get started' ];
						actionsBordered;
						yourself) ]
]

{ #category : #rendering }
MDLWidgetCardScreen >> renderScreenContentOn: html [
	self render: (OrderedDictionary with: 'Card Widget' -> #renderCardOn:) withCardSizeOf: 4 on: html
]

{ #category : #accessing }
MDLWidgetCardScreen >> title [
	^ 'Cards'
]
