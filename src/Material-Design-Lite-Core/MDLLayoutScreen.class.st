"
I'm the screen representing different layouts

See Navigation, Tabs, Footer and Grid sections for more informations
"
Class {
	#name : #MDLLayoutScreen,
	#superclass : #MDLDemoScreen,
	#category : 'Material-Design-Lite-Core-Example-Components'
}

{ #category : #accessing }
MDLLayoutScreen >> description [
	^ 'Building blocks for constructing a page layout.'
]

{ #category : #code }
MDLLayoutScreen >> fixedDrawerNoHeaderCode [
	^ 'html mdlLayout
	fixedDrawer; with: [ 
		html mdlLayoutDrawer: [ 
			html mdlLayoutTitle: ''Title''.
			html mdlNavigation: [ html mdlNavigationLink beCurrent; with: ''Link''.
				1 to: 4 do: [ :i | html mdlNavigationLink: ''Link'' ] ] ] ]'
]

{ #category : #code }
MDLLayoutScreen >> fixedHeaderAndDrawerCode [
	^ 'html mdlLayout
	fixedDrawer;
	fixedHeader;
	with: [ 
		html mdlLayoutHeader: [ 
			html mdlLayoutHeaderRow: [
			html mdlLayoutSpacer.
			html mdlNavigation: [ 
				1 to: 5 do: [ :i | html mdlNavigationLink: ''Link'' ] ] ] ].
		html mdlLayoutDrawer: [ 
			html mdlLayoutTitle: ''Title''.
			html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink beCurrentIf: [ i = 1 ]; with: ''Link'' ] ] ] ]'
]

{ #category : #code }
MDLLayoutScreen >> fixedTabsCode [
	^'html mdlLayout fixedHeader; fixedTabs; with: [ 
	html mdlLayoutHeader: [ 
		html mdlLayoutHeaderRow: [ 
			html mdlLayoutTitle: ''Title'' ].
		html mdlLayoutTabBar: [ 
			html mdlLayoutTab isActive; url: ''#tab-1'';with: ''Tab 1''.
			html mdlLayoutTab url: ''#tab-2''; with: ''Tab 2'' .
			html mdlLayoutTab url: ''#tab-3''; with: ''Tab 3'' .
			html mdlLayoutTab url: ''#tab-4''; with: ''Tab 4'' ] ].
	html mdlLayoutDrawer: [ html mdlLayoutTitle: ''Title'' ].
	html mdlLayoutContent: [ 
		html mdlLayoutTabPanel isActive; id: ''tab-1''.
		html mdlLayoutTabPanel id: ''tab-2''.
		html mdlLayoutTabPanel id: ''tab-3''.
		html mdlLayoutTabPanel id: ''tab-4'' ] ]'
]

{ #category : #code }
MDLLayoutScreen >> gridCode [
	^ 'html mdlGrid: [ 
	1 to: 12 do: [ :i | html mdlCell size: 1; with: 1 ].
	1 to: 3 do: [ :i | html mdlCell size: 4; with: 4 ].
	html mdlCell size: 6; with: 6.
	html mdlCell size: 4; with: 4.
	html mdlCell size: 2; with: 2.
	html mdlCell size: 6; tabletSize: 8;	with: ''6 (8 tablet)''.
	html mdlCell size: 4; tabletSize: 6; with: ''4 (6 tablet)''.
	html mdlCell size: 2; phoneSize: 4; with: ''2 (4 phone)'' ]'
]

{ #category : #accessing }
MDLLayoutScreen >> icon [
	^ 'complayoutPng'
]

{ #category : #code }
MDLLayoutScreen >> megaFooterCode [
	^ 'html mdlFooter: [ 
	html mdlFooterMiddleSection: [ 
		html mdlFooterDropdownSection: [ 
			html mdlFooterHeadingCheckbox.
			html mdlFooterHeading: ''Features''.
			html mdlFooterLinkList: [ 
				html listItem: [ html anchor: ''About'' ].
				html listItem: [ html anchor: ''Terms'' ].
				html listItem: [ html anchor: ''Partners'' ].
				html listItem: [ html anchor: ''Updates'' ] ] ].
		html mdlFooterDropdownSection: [ 
			html mdlFooterHeadingCheckbox.
			html mdlFooterHeading: ''Details''.
			html mdlFooterLinkList: [ 
				html listItem: [ html anchor: ''Specs'' ].
				html listItem: [ html anchor: ''Tools'' ].
				html listItem: [ html anchor: ''Ressources'' ] ] ].
		html mdlFooterDropdownSection: [ 
			html mdlFooterHeadingCheckbox.
			html mdlFooterHeading: ''Technology''.
			html mdlFooterLinkList: [ 
				html listItem: [ html anchor: ''How it works'' ].
				html listItem: [ html anchor: ''Patterns'' ].
				html listItem: [ html anchor: ''Usage'' ].
				html listItem: [ html anchor: ''Products'' ].
				html listItem: [ html anchor: ''Contracts'' ] ] ].
		html mdlFooterDropdownSection: [ 
			html mdlFooterHeadingCheckbox.
			html mdlFooterHeading: ''FAQ''.
			html mdlFooterLinkList: [ 
				html listItem: [ html anchor: ''Questions'' ].
				html listItem: [ html anchor: ''Answers'' ].
				html listItem: [ html anchor: ''Contact us'' ] ] ] ].
	html mdlFooterBottomSection: [ 
		html mdlLogo: ''Title''.
		html mdlFooterLinkList: [ 
			html listItem: [ html anchor: ''Help'' ].
			html listItem: [ html anchor: ''Privacy & Terms'' ] ] ] ]'
]

{ #category : #code }
MDLLayoutScreen >> miniFooterCode [
	^ 'html mdlMiniFooter: [ 
	html mdlMiniFooterLeftSection: [ 
		html mdlLogo: ''Title''.
		html mdlMiniFooterLinkList: [ 
			html listItem: [ html anchor: ''Help'' ].
			html listItem: [ html anchor: ''Privacy & Terms'' ] ] ] ]'
]

{ #category : #rendering }
MDLLayoutScreen >> renderFixedDrawerNoHeaderOn: html [
	html mdlLayout
		class: 'examples';
		style: 'min-height: 300px; width: 100%; box-shadow: 0px 1px 2px #aaa; margin-bottom: 20px;';
		fixedDrawer;
		with: [ html
				mdlLayoutDrawer: [ html mdlLayoutTitle: 'Title'.
					html
						mdlNavigation: [ html mdlNavigationLink
								beCurrent;
								with: 'Link'.
							1 to: 4 do: [ :i | html mdlNavigationLink: 'Link' ] ] ] ].
	html preformatted
		with: [ html code
				class: 'smalltalk';
				with: self fixedDrawerNoHeaderCode ]
]

{ #category : #rendering }
MDLLayoutScreen >> renderFixedHeaderAndDrawerOn: html [
	html mdlLayout
		class: 'examples';
		style: 'min-height: 300px; width: 100%; box-shadow: 0px 1px 2px #aaa; margin-bottom: 20px;';
		fixedDrawer;
		fixedHeader;
		with: [ html
				mdlLayoutHeader: [ html
						mdlLayoutHeaderRow: [ html mdlLayoutSpacer.
							html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: 'Link' ] ] ] ].
			html
				mdlLayoutDrawer: [ html mdlLayoutTitle: 'Title'.
					html
						mdlNavigation: [ 1 to: 5 do: [ :i | 
								html mdlNavigationLink
									beCurrentIf: [ i = 1 ];
									with: 'Link' ] ] ] ].
	html preformatted
		with: [ html code
				class: 'smalltalk';
				with: self fixedHeaderAndDrawerCode ]
]

{ #category : #rendering }
MDLLayoutScreen >> renderFixedTabsOn: html [
	html mdlLayout fixedHeader; fixedTabs; class: 'examples'; style: 'min-height: 300px; box-shadow: 0px 1px 2px #aaa; margin-bottom: 20px;'; with: [ 
		html mdlLayoutHeader: [ 
			html mdlLayoutHeaderRow: [ 
				html mdlLayoutTitle: 'Title' ].
			html mdlLayoutTabBar: [ 
				html mdlLayoutTab isActive; url: '#tab-1';with: 'Tab 1'.
				html mdlLayoutTab url: '#tab-2'; with: 'Tab 2' .
				html mdlLayoutTab url: '#tab-3'; with: 'Tab 3' .
				html mdlLayoutTab url: '#tab-4'; with: 'Tab 4' ] ].
		html mdlLayoutDrawer: [ html mdlLayoutTitle: 'Title' ].
		html mdlLayoutContent: [ 
			html mdlLayoutTabPanel isActive; id: 'tab-1'.
			html mdlLayoutTabPanel id: 'tab-2'.
			html mdlLayoutTabPanel id: 'tab-3'.
			html mdlLayoutTabPanel id: 'tab-4' ] ].
	html preformatted with: [ html code class: 'smalltalk'; with: self fixedTabsCode ]
]

{ #category : #rendering }
MDLLayoutScreen >> renderFooterLayoutsOn: html [
	html heading level5 class: 'section-title';with: 'FOOTER'.
	html paragraph: 'It is highly recommended to use widgets instead. This code is an example to help you to create your own Footer widget.'.
	self renderMegaFooterOn: html.
	self renderMiniFooterOn: html.
]

{ #category : #rendering }
MDLLayoutScreen >> renderGridLayoutOn: html [
	html heading level5 class: 'section-title';with: 'GRID'.
	html
		mdlGrid: [ 
			1 to: 12 do: [ :i | 
				html mdlCell
					class: 'grid-cell-demo';
					size: 1;
					with: 1 ].
			1 to: 3 do: [ :i | 
				html mdlCell
					class: 'grid-cell-demo';
					size: 4;
					with: 4 ].
			html mdlCell
				class: 'grid-cell-demo';
				size: 6;
				with: 6.
			html mdlCell
				class: 'grid-cell-demo';
				size: 4;
				with: 4.
			html mdlCell
				class: 'grid-cell-demo';
				size: 2;
				with: 2.
			html mdlCell
				class: 'grid-cell-demo';
				size: 6;
				tabletSize: 8;
				with: '6 (8 tablet)'.
			html mdlCell
				class: 'grid-cell-demo';
				size: 4;
				tabletSize: 6;
				with: '4 (6 tablet)'.
			html mdlCell
				class: 'grid-cell-demo';
				size: 2;
				phoneSize: 4;
				with: '2 (4 phone)' ].
	html preformatted
		with: [ 
			html code
				class: 'smalltalk';
				with: self gridCode ]
]

{ #category : #rendering }
MDLLayoutScreen >> renderMegaFooterOn: html [
	html mdlFooter class: 'examples'; style: 'margin-bottom:20px;'; with: [ 
		html mdlFooterMiddleSection: [ 
			html mdlFooterDropdownSection: [ 
				html mdlFooterHeadingCheckbox.
				html mdlFooterHeading: 'Features'.
				html mdlFooterLinkList: [ 
					html listItem: [ html anchor: 'About' ].
					html listItem: [ html anchor: 'Terms' ].
					html listItem: [ html anchor: 'Partners' ].
					html listItem: [ html anchor: 'Updates' ] ] ].
			html mdlFooterDropdownSection: [ 
				html mdlFooterHeadingCheckbox.
				html mdlFooterHeading: 'Details'.
				html mdlFooterLinkList: [ 
					html listItem: [ html anchor: 'Specs' ].
					html listItem: [ html anchor: 'Tools' ].
					html listItem: [ html anchor: 'Ressources' ] ] ].
			html mdlFooterDropdownSection: [ 
				html mdlFooterHeadingCheckbox.
				html mdlFooterHeading: 'Technology'.
				html mdlFooterLinkList: [ 
					html listItem: [ html anchor: 'How it works' ].
					html listItem: [ html anchor: 'Patterns' ].
					html listItem: [ html anchor: 'Usage' ].
					html listItem: [ html anchor: 'Products' ].
					html listItem: [ html anchor: 'Contracts' ] ] ].
			html mdlFooterDropdownSection: [ 
				html mdlFooterHeadingCheckbox.
				html mdlFooterHeading: 'FAQ'.
				html mdlFooterLinkList: [ 
					html listItem: [ html anchor: 'Questions' ].
					html listItem: [ html anchor: 'Answers' ].
					html listItem: [ html anchor: 'Contact us' ] ] ] ].
		html mdlFooterBottomSection: [ 
			html mdlLogo: 'Title'.
			html mdlFooterLinkList: [ 
				html listItem: [ html anchor: 'Help' ].
				html listItem: [ html anchor: 'Privacy & Terms' ] ] ] ].
	html preformatted with: [ html code class: 'smalltalk'; with: self megaFooterCode ]
]

{ #category : #rendering }
MDLLayoutScreen >> renderMiniFooterOn: html [
	html mdlMiniFooter class: 'examples'; style: 'margin-bottom: 20px;'; with: [ 
		html mdlMiniFooterLeftSection: [ 
			html mdlLogo: 'Title'.
			html mdlMiniFooterLinkList: [ 
				html listItem: [ html anchor: 'Help' ].
				html listItem: [ html anchor: 'Privacy & Terms' ] ] ] ].
	html preformatted with: [ html code class: 'smalltalk'; with: self miniFooterCode ]
]

{ #category : #rendering }
MDLLayoutScreen >> renderNavigationLayoutsOn: html [
	html heading level5 class: 'section-title';with: 'NAVIGATION'.
	self renderTransparentHeaderOn: html.
	self renderFixedDrawerNoHeaderOn: html.
	self renderFixedHeaderAndDrawerOn: html.
	self renderScrollableTabsOn: html.
	self renderFixedTabsOn: html
]

{ #category : #rendering }
MDLLayoutScreen >> renderScreenContentOn: html [
	html unorderedList
		class: 'navigation';
		with: [ 
					html
						listItem: [ 
							html anchor
								url: '#navigation-layout';
								with: 'Navigation layouts' ].
					html
						listItem: [ 
							html anchor
								url: '#grid-layout';
								with: 'Grid' ].
					html
						listItem: [ 
							html anchor
								url: '#tabs-layout';
								with: 'Tabs' ].
					html
						listItem: [ 
							html anchor
								url: '#footer-layout';
								with: 'Footer' ] ].
	html anchor id: 'navigation-layout'.
	self renderNavigationLayoutsOn: html.
	html anchor id: 'grid-layout'.
	self renderGridLayoutOn: html.
	html anchor id: 'tabs-layout'.
	self renderTabsLayoutOn: html.
	html anchor id: 'footer-layout'.
	self renderFooterLayoutsOn: html
]

{ #category : #rendering }
MDLLayoutScreen >> renderScrollableTabsOn: html [
	html mdlLayout fixedHeader; class: 'examples'; style: 'min-height: 300px; box-shadow: 0px 1px 2px #aaa; margin-bottom: 20px;'; with: [ 
		html mdlLayoutHeader: [ 
			html mdlLayoutHeaderRow: [ 
				html mdlLayoutTitle: 'Title' ].
			html mdlLayoutTabBar: [ 
				html mdlLayoutTab isActive; url: '#tab-1';with: 'Tab 1'.
				html mdlLayoutTab url: '#tab-2'; with: 'Tab 2' .
				html mdlLayoutTab url: '#tab-3'; with: 'Tab 3' .
				html mdlLayoutTab url: '#tab-4'; with: 'Tab 4' ] ].
		html mdlLayoutDrawer: [ html mdlLayoutTitle: 'Title' ].
		html mdlLayoutContent: [ 
			html mdlLayoutTabPanel isActive; id: 'tab-1'.
			html mdlLayoutTabPanel id: 'tab-2'.
			html mdlLayoutTabPanel id: 'tab-3'.
			html mdlLayoutTabPanel id: 'tab-4' ] ].
	html preformatted with: [ html code class: 'smalltalk'; with: self scrollableTabsCode ]
]

{ #category : #rendering }
MDLLayoutScreen >> renderTabsLayoutOn: html [
	html heading level5 class: 'section-title';with: 'TABS'.
	html mdlTabs: [ 
		html mdlTabBar: [ 
			html mdlTab isActive; url: '#starkpanel'; with: 'Starks'.
			html mdlTab url: '#lanisterpanel'; with: 'Lanisters'.
			html mdlTab url: '#targaryenpanel'; with: 'Targaryens' ].
		html mdlTabsPanel isActive; id: 'starkpanel'; with: [ 
			html unorderedList: [ 
				html listItem: 'Eddard'.
				html listItem: 'Catelyn'.
				html listItem: 'Robb'.
				html listItem: 'Sansa'.
				html listItem: 'Brandon'.
				html listItem: 'Rickon'.
				html listItem: 'Arya' ] ].
		html mdlTabsPanel id: 'lanisterpanel'; with: [ 
			html unorderedList: [ 
				html listItem: 'Tywin'.
				html listItem: 'Cersei'.
				html listItem: 'Jamie'.
				html listItem: 'Tyrion' ] ].
		html mdlTabsPanel id: 'targaryenpanel'; with: [ 
			html unorderedList: [ 
				html listItem: 'Viserys'.
				html listItem: 'Daenerys' ] ] ].
	html preformatted with: [ html code class: 'smalltalk'; with: self tabsCode ]
]

{ #category : #rendering }
MDLLayoutScreen >> renderTransparentHeaderOn: html [
	html mdlLayout class: 'examples'; style: ('background: url(''', (MDLDemoLibrary urlOf: #transparentJpg) asString , ''') center / cover; min-height: 300px;box-shadow: 0px 1px 2px #aaa; margin-bottom: 20px;'); with:  [ 
		html mdlLayoutHeader transparent; with: [ 
			html mdlLayoutHeaderRow: [ 
				html mdlLayoutTitle: 'Title'.
				html mdlLayoutSpacer.
				html mdlNavigation: [ 
					1 to: 5 do: [ :i | html mdlNavigationLink: 'Link' ] ] ] ].
		html mdlLayoutDrawer: [
			html mdlLayoutTitle: 'Title'.
			html mdlNavigation: [ 
				1 to: 5 do: [ :i | html mdlNavigationLink: 'Link' ] ] ] ].
	html preformatted with: [ html code class: 'smalltalk'; with: self transparentHeaderCode ] .
]

{ #category : #code }
MDLLayoutScreen >> scrollableTabsCode [
	^'html mdlLayout fixedHeader; with: [ 
	html mdlLayoutHeader: [ 
		html mdlLayoutHeaderRow: [ 
			html mdlLayoutTitle: ''Title'' ].
		html mdlLayoutTabBar: [ 
			html mdlLayoutTab isActive; url: ''#tab-1'';with: ''Tab 1''.
			html mdlLayoutTab url: ''#tab-2''; with: ''Tab 2'' .
			html mdlLayoutTab url: ''#tab-3''; with: ''Tab 3'' .
			html mdlLayoutTab url: ''#tab-4''; with: ''Tab 4'' ] ].
	html mdlLayoutDrawer: [ html mdlLayoutTitle: ''Title'' ].
	html mdlLayoutContent: [ 
		html mdlLayoutTabPanel isActive; id: ''tab-1''.
		html mdlLayoutTabPanel id: ''tab-2''.
		html mdlLayoutTabPanel id: ''tab-3''.
		html mdlLayoutTabPanel id: ''tab-4'' ] ]'
]

{ #category : #code }
MDLLayoutScreen >> tabsCode [ 
	^  'html mdlTabs: [ 
	html mdlTabBar: [ 
		html mdlTab isActive; url: ''#starkpanel''; with: ''Starks''.
		html mdlTab url: ''#lanisterpanel''; with: ''Lanisters''.
		html mdlTab url: ''#targaryenpanel''; with: ''Targaryens'' ].
	html mdlTabsPanel isActive; id: ''starkpanel''; with: [ 
		html unorderedList: [ 
			html listItem: ''Eddard''.
			html listItem: ''Catelyn''.
			html listItem: ''Robb''.
			html listItem: ''Sansa''.
			html listItem: ''Brandon''.
			html listItem: ''Rickon''.
			html listItem: ''Arya'' ] ].
	html mdlTabsPanel id: ''lanisterpanel''; with: [ 
		html unorderedList: [ 
			html listItem: ''Tywin''.
			html listItem: ''Cersei''.
			html listItem: ''Jamie''.
			html listItem: ''Tyrion'' ] ].
	html mdlTabsPanel id: ''targaryenpanel''; with: [ 
		html unorderedList: [ 
			html listItem: ''Viserys''.
			html listItem: ''Daenerys'' ] ] ]'
]

{ #category : #accessing }
MDLLayoutScreen >> title [
	^ 'Layout'
]

{ #category : #code }
MDLLayoutScreen >> transparentHeaderCode [
	^ 'html mdlLayout style: (''background: url('', (MDLDemoLibrary urlOf: #transparentJpg) asString , '') center / cover; min-height: 300px;''); with:  [ 
	html mdlLayoutHeader transparent; with: [ 
		html mdlLayoutHeaderRow: [ 
			html mdlLayoutTitle: ''Title''.
			html mdlLayoutSpacer.
			html mdlNavigation: [ 
				1 to: 5 do: [ :i | html mdlNavigationLink: ''Link'' ] ] ] ].
	html mdlLayoutDrawer: [
		html mdlLayoutTitle: ''Title''.
		html mdlNavigation: [ 
			1 to: 5 do: [ :i | html mdlNavigationLink: ''Link'' ] ] ] ]'
]
