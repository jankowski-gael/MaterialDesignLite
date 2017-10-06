Class {
	#name : #MDLApplication,
	#superclass : #WAComponent,
	#instVars : [
		'applicationName',
		'screens',
		'colors'
	],
	#category : 'Material-Design-Lite-Core-Applications'
}

{ #category : #'as yet unclassified' }
MDLApplication class >> canBeRoot [
	^ true
]

{ #category : #'instance creation' }
MDLApplication class >> registerToDeployment: aName [
	| app |
	WAAdmin applicationDefaults removeParent: WADevelopmentConfiguration instance.
	app := WAAdmin register: self asApplicationAt: aName.
	app
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: MDLLibrary.
	^ app
]

{ #category : #'instance creation' }
MDLApplication class >> registerToDevelopment: aName [
	| app |
	WAAdmin applicationDefaults
		addParent: WADevelopmentConfiguration instance.
	app := WAAdmin register: self asApplicationAt: aName.
	app
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: MDLLibrary.
	^ app
]

{ #category : #adding }
MDLApplication >> addScreen: aScreen [
	^ self screens add: aScreen 
]

{ #category : #accessing }
MDLApplication >> applicationName [
	^ applicationName
]

{ #category : #accessing }
MDLApplication >> applicationName: aName [
	applicationName := aName
]

{ #category : #accessing }
MDLApplication >> colors [
	^ colors
]

{ #category : #accessing }
MDLApplication >> colors: anObject [
	colors := anObject
]

{ #category : #initialization }
MDLApplication >> initialize [
	super initialize.
	screens := OrderedCollection new.
	colors := 'indigo-pink'
]

{ #category : #accessing }
MDLApplication >> primaryColor: anMDLColor secondaryColor: anotherMDLColor [
	^ self colors: anMDLColor tint, '-', anotherMDLColor tint
]

{ #category : #'as yet unclassified' }
MDLApplication >> removeScreen: aScreen [
	^ self screens remove: aScreen 
]

{ #category : #rendering }
MDLApplication >> renderContentOn: html [
	html heading level3; with: 'Put your content in screens and render them'
]

{ #category : #accessing }
MDLApplication >> screens [
	^ screens
]

{ #category : #accessing }
MDLApplication >> screens: anObject [
	screens := anObject
]

{ #category : #accessing }
MDLApplication >> style [
	^ '
html > body {
	font-family: "Roboto" , "Helvetica" , "Arial" , "sans-serif" ;
}

.mdl-layout__container {
		position: static;
	}
'
]

{ #category : #updating }
MDLApplication >> updateRoot: anHtmlRoot [
	super updateRoot: anHtmlRoot.
	anHtmlRoot beHtml5.
	anHtmlRoot stylesheet url: (WAUrl absolute: 'https://storage.googleapis.com/code.getmdl.io/1.3.0/material.', self colors,'.min.css').
]
