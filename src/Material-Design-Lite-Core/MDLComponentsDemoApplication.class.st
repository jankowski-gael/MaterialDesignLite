"
I am the main demo of this project.
Use me to see what components look like, and how to include it into your own project.

Low level components are described with associated smalltalk code.

High level widgets will be integrated to the demo soon.


This application is also a demo to show you how to subclass MDLApplication and how to use layout.
We've been creating a custom header section to compose our own layout widget.
"
Class {
	#name : #MDLComponentsDemoApplication,
	#superclass : #MDLApplication,
	#instVars : [
		'activeScreen'
	],
	#category : 'Material-Design-Lite-Core-Example-Components'
}

{ #category : #accessing }
MDLComponentsDemoApplication class >> componentScreenClasses [
	^ {MDLBadgesScreen.
	MDLButtonsScreen.
	MDLCardsScreen.
	MDLChipsScreen.
	MDLDialogsScreen.
	MDLLayoutScreen.
	MDLListsScreen.
	MDLLoadingScreen.
	MDLMenusScreen.
	MDLSlidersScreen.
	MDLSnackbarScreen.
	MDLTogglesScreen.
	MDLTablesScreen.
	MDLTextFieldsScreen.
	MDLTooltipsScreen.
	MDLTypographyScreen}
]

{ #category : #'class initialization' }
MDLComponentsDemoApplication class >> initialize [
	^ self registerToDevelopment: 'MDLComponentsDemoApplication'
]

{ #category : #accessing }
MDLComponentsDemoApplication class >> widgetScreenClasses [
	^ {MDLWidgetCalendarScreen.
	MDLWidgetCardScreen.
	MDLWidgetMenuButtonScreen.
	MDLWidgetPaginationScreen.
	MDLWidgetPollScreen.
	MDLWidgetProgressBarScreen.
	MDLWidgetSelectScreen.
	MDLWidgetTabScreen.
	MDLWidgetNestedListScreen.
	MDLWidgetSortedTableScreen }
]

{ #category : #accessing }
MDLComponentsDemoApplication >> activeScreen [
	^ activeScreen
]

{ #category : #accessing }
MDLComponentsDemoApplication >> activeScreen: anObject [
	activeScreen := anObject
]

{ #category : #initialization }
MDLComponentsDemoApplication >> initialize [
	super initialize.
	screens := Dictionary new.
	self initializeComponentsScreens.
	self initializeWidgetsScreens.
	activeScreen := (screens at: 'components') first.
	
	self primaryColor: MDLColor indigo secondaryColor: MDLColor pink
]

{ #category : #initialization }
MDLComponentsDemoApplication >> initializeComponentsDrawer [
	^ MDLIconDrawerSection new
				links: (self initializeDrawerLinksFrom: (screens at: 'components'));
				yourself
]

{ #category : #initialization }
MDLComponentsDemoApplication >> initializeComponentsHeader [
	^ MDLTitleHeaderSection new
		app: self;
		tabs:
				(OrderedDictionary new
						at: 'Components' put: [ self switchToComponents ];
						at: 'Widgets' put: [ self switchToWidgets ];
						yourself);
		activeTab: 'Components';
		yourself
]

{ #category : #initialization }
MDLComponentsDemoApplication >> initializeComponentsLayout [
	^ MDLLayoutWidget new
		title: 'Components';
		drawerSection: self initializeComponentsDrawer;
		headerSection: self initializeComponentsHeader;
		fixedDrawer;
		fixedHeader;
		yourself
]

{ #category : #initialization }
MDLComponentsDemoApplication >> initializeComponentsScreens [
	self screens at: 'components' put: (self class componentScreenClasses collect: [ :aScreenClass | aScreenClass new ]).
	(self screens at: 'components')
		do: [ :each | 
			each addDecoration: (MDLScreenFooter newWithFooter: self initializeFooter).
			each addDecoration: (MDLScreenLayout newWithLayout: self initializeComponentsLayout) ].
]

{ #category : #initialization }
MDLComponentsDemoApplication >> initializeDrawerLinksFrom: aScreenCollection [
	^ aScreenCollection
		collect: [ :aScreen | 
			MDLNavigationLinkWithIconComponent new
				callback: [ self activeScreen: aScreen ];
				iconUrl: aScreen iconUrl;
				label: aScreen title ]
]

{ #category : #initialization }
MDLComponentsDemoApplication >> initializeFooter [
	^ MDLSmallFooter new
				onRightSideAddComponents: self initializeFooterRightSideComponents;
				onLeftSideAddLinks: self initializeFooterLeftSideLinks;
				yourself
]

{ #category : #initialization }
MDLComponentsDemoApplication >> initializeFooterLeftSideLinks [
	^ 'Downloads'
		->
			(Dictionary new
				at: 'Pharo' put: [ 'http://pharo.org/' ];
				at: 'MDL project' put: [ 'http://smalltalkhub.com/#!/~KevinLanvin/MaterialDesignLite' ];
				yourself)
]

{ #category : #initialization }
MDLComponentsDemoApplication >> initializeFooterRightSideComponents [
	^ {(MDLIconComponent new iconName: 'rss_feed').
	(MDLIconComponent new iconName: 'share').
	(MDLIconComponent new iconName: 'warning')} asOrderedCollection
]

{ #category : #initialization }
MDLComponentsDemoApplication >> initializeWidgetsDrawer [
	^ MDLIconDrawerSection new
				links: (self initializeDrawerLinksFrom: (screens at: 'widgets'));
				yourself
]

{ #category : #initialization }
MDLComponentsDemoApplication >> initializeWidgetsHeader [
	^ MDLTitleHeaderSection new
		app: self;
		tabs:
				(OrderedDictionary new
						at: 'Components' put: [ self switchToComponents ];
						at: 'Widgets' put: [ self switchToWidgets ];
						yourself);
		activeTab: 'Widgets';
		yourself
]

{ #category : #initialization }
MDLComponentsDemoApplication >> initializeWidgetsLayout [
	^ MDLLayoutWidget new
		title: 'Widgets';
		drawerSection: self initializeWidgetsDrawer;
		headerSection: self initializeWidgetsHeader;
		fixedDrawer;
		fixedHeader;
		yourself
]

{ #category : #initialization }
MDLComponentsDemoApplication >> initializeWidgetsScreens [
	self screens at: 'widgets' put: (self class widgetScreenClasses collect: [ :aScreenClass | aScreenClass new ]).
	(self screens at: 'widgets')
		do: [ :each | 
			each addDecoration: (MDLScreenFooter newWithFooter: self initializeFooter).
			each addDecoration: (MDLScreenLayout newWithLayout: self initializeWidgetsLayout) ]
]

{ #category : #rendering }
MDLComponentsDemoApplication >> renderContentOn: html [
	html render: activeScreen
]

{ #category : #'as yet unclassified' }
MDLComponentsDemoApplication >> switchToComponents [
	activeScreen := (screens at: 'components') first
]

{ #category : #'as yet unclassified' }
MDLComponentsDemoApplication >> switchToWidgets [
	activeScreen := (screens at: 'widgets') first
]

{ #category : #updating }
MDLComponentsDemoApplication >> updateRoot: anHtmlRoot [
	super updateRoot: anHtmlRoot.
	anHtmlRoot stylesheet url: (MDLDemoLibrary urlOf: #myStyleCss).
	anHtmlRoot script url: (MDLDemoLibrary urlOf: #highlightpackJs).
	anHtmlRoot javascript add: 'hljs.initHighlightingOnLoad();'
]
