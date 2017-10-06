"
Description
--------------------

I am a mdl button that expand a menu to choose an item. When an item is selected I will refresh the page.

Examples
--------------------

	 (MDLMenuButtonWidget
		possibilities: #('Guillaume' 'Kévin' 'Anne' 'Cyril' 'Olivier' 'Yann')
		label: #asString
		action: [ :o | Transcript crShow: o ]
		choosingText: 'Select an user'
		description: 'Choose a user to log into the Transcript')
		sortBlock: [ :a :b | a < b ];
		yourself
 
Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	action:					<aBlock> 		Callback taking the selected element as parameter
	choosingText:			<aString>		The of the button
	description:				<aString>		Tooltip to show on the button
	objectsPossibilities:		<aCollection>	Collection of object to select  from
	selectedObject:			<anObject>		Selected object by default
	sortBlock:				<aBlock>		A block to sort the elements of the menu
	textBlock:				<aBlock>		A block taking a possible object as parameter and returning a string to display on the menu

"
Class {
	#name : #MDLMenuButtonWidget,
	#superclass : #MDLWidget,
	#instVars : [
		'choosingText',
		'textBlock',
		'selectedObject',
		'objectsPossibilities',
		'description',
		'action',
		'sortBlock'
	],
	#category : 'Material-Design-Lite-Widgets'
}

{ #category : #'instance creation' }
MDLMenuButtonWidget class >> possibilities: aCollectionOfObjects label: aLabelBlock action: anAction choosingText: aText [
	^ self possibilities: aCollectionOfObjects label: aLabelBlock action: anAction choosingText: aText description: nil
]

{ #category : #'instance creation' }
MDLMenuButtonWidget class >> possibilities: aCollectionOfObjects label: aLabelBlock action: anAction choosingText: aText description: aDescriptionValuable [
	^ self
		possibilities: aCollectionOfObjects
		label: aLabelBlock
		action: anAction
		selectedObject: nil
		choosingText: aText
		description: aDescriptionValuable
]

{ #category : #'instance creation' }
MDLMenuButtonWidget class >> possibilities: aCollectionOfObjects label: aLabelBlock action: anAction selectedObject: anObjectOrNil choosingText: aText [
	^ self
		possibilities: aCollectionOfObjects
		label: aLabelBlock
		action: anAction
		selectedObject: anObjectOrNil
		choosingText: aText
		description: nil
]

{ #category : #'instance creation' }
MDLMenuButtonWidget class >> possibilities: aCollectionOfObjects label: aLabelBlock action: anAction selectedObject: anObjectOrNil choosingText: aText description: aDescriptionValuable [ 
	^ self new
		choosingText: aText;
		textBlock: aLabelBlock;
		selectedObject: anObjectOrNil;
		description: aDescriptionValuable;
		action: anAction;
		objectsPossibilities: aCollectionOfObjects;
		yourself
]

{ #category : #accessing }
MDLMenuButtonWidget >> action [
	^ action
]

{ #category : #accessing }
MDLMenuButtonWidget >> action: anObject [
	action := anObject
]

{ #category : #private }
MDLMenuButtonWidget >> actionWith: anObject [
	self action value: anObject
]

{ #category : #accessing }
MDLMenuButtonWidget >> choosingText [
	^ choosingText ifNil: [ 'choose' ]
]

{ #category : #accessing }
MDLMenuButtonWidget >> choosingText: anObject [
	choosingText := anObject
]

{ #category : #accessing }
MDLMenuButtonWidget >> description [
	^ description
]

{ #category : #accessing }
MDLMenuButtonWidget >> description: anObject [
	description := anObject
]

{ #category : #private }
MDLMenuButtonWidget >> labelFor: anObject [
	^ self textBlock ifNil: [ anObject asString ] ifNotNil: [ :tb | tb cull: anObject ]
]

{ #category : #accessing }
MDLMenuButtonWidget >> objectsPossibilities [
	^ objectsPossibilities
]

{ #category : #accessing }
MDLMenuButtonWidget >> objectsPossibilities: anObject [
	objectsPossibilities := anObject
]

{ #category : #accessing }
MDLMenuButtonWidget >> objectsPossibilitiesWithLabel [
	^ (self objectsPossibilities collect: [ :anObject | (self labelFor: anObject) -> anObject ]) sorted: self sortBlock
]

{ #category : #rendering }
MDLMenuButtonWidget >> renderButtonOn: html withId: buttonId [
	html div
		id: 'menuButton' , buttonId;
		class: 'menuButtonWidgetButton mdl-button mdl-js-button menuButtonWidgetButton';
		disabled: self objectsPossibilities isEmpty;
		with: [ html
				text:
					(self selectedObject
						ifNil: [ self choosingText ]
						ifNotNil: [ :anObject | self labelFor: anObject ]).
			html mdlIcon: 'arrow_drop_down' ]
]

{ #category : #rendering }
MDLMenuButtonWidget >> renderContentOn: html [
	| buttonId |
	buttonId := html nextId.
	self renderButtonOn: html withId: buttonId.
	self renderMenuOn: html withId: buttonId.
	self renderTooltipOn: html withId: buttonId.
]

{ #category : #rendering }
MDLMenuButtonWidget >> renderMenuItemOn: html withAssociation: anAssociation [
	html
		mdlMenuItem: [ 
			html anchor
				callback: [ self actionWith: anAssociation value ];
				style: 'display: block; text-decoration: none; color: inherit;';
				with: [ html text: anAssociation key ] ]
]

{ #category : #rendering }
MDLMenuButtonWidget >> renderMenuOn: html withId: buttonId [
	html mdlMenu
		bottomLeft;
		for: 'menuButton' , buttonId;
		class: 'menuButtonWidgetMenu';
		with: [ self objectsPossibilitiesWithLabel do: [ :anAssociation | self renderMenuItemOn: html withAssociation: anAssociation ] ]
]

{ #category : #rendering }
MDLMenuButtonWidget >> renderTooltipOn: html withId: buttonId [
	self description
		ifNotNil: [ :descr | 
			html mdlTooltip
				for: 'menuButton' , buttonId;
				large;
				with: [ html text: descr ] ]
]

{ #category : #accessing }
MDLMenuButtonWidget >> selectedObject [
	^ selectedObject value
]

{ #category : #accessing }
MDLMenuButtonWidget >> selectedObject: anObject [
	selectedObject := anObject
]

{ #category : #accessing }
MDLMenuButtonWidget >> sortBlock [
	^ sortBlock ifNil: [ sortBlock := [ :a :b | a <= b ] ]
]

{ #category : #accessing }
MDLMenuButtonWidget >> sortBlock: anObject [
	sortBlock := anObject
]

{ #category : #accessing }
MDLMenuButtonWidget >> textBlock [
	^ textBlock
]

{ #category : #accessing }
MDLMenuButtonWidget >> textBlock: anObject [
	textBlock := anObject
]
