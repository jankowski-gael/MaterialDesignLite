rendering
renderScreenContentOn: html
	self render: self typographies withCardSizeOf: 4 on: html.
	self render: self fontOptions withCardSizeOf: 4 on: html.
	self render: self textOptions withCardSizeOf: 4 on: html.
	self render: self backgroundColorOptions withCardSizeOf: 4 on: html.
	self render: self textColorOptions withCardSizeOf: 4 on: html