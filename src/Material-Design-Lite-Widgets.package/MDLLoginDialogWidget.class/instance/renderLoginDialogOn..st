rendering
renderLoginDialogOn: html
	html mdlDialog
		openButtonId: openId;
		closeButtonId: (closeId := html nextId);
		with: [ html mdlDialogTitle
				class: 'mdl-color--primary';
				with: signInTitleLabel.
			html mdlDialogContent: [ super renderContentOn: html ] ]