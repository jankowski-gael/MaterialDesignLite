"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestMaterialDesignLiteWidgets,
	#superclass : #PackageManifest,
	#category : 'Material-Design-Lite-Widgets'
}

{ #category : #code-critics }
ManifestMaterialDesignLiteWidgets class >> ruleGRAnsiConditionalsRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#MDLTextFieldWidget #renderContentOn: #false)) #'2016-07-06T16:57:57.793+02:00') )
]

{ #category : #code-critics }
ManifestMaterialDesignLiteWidgets class >> ruleRBSendsDifferentSuperRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#MDLPaginationWithSearchBarWidget #renderSearchbarOn: #false)) #'2016-06-16T09:58:54.322+02:00') #(#(#RGMethodDefinition #(#MDLLoginDialogWidget #renderLoginDialogOn: #false)) #'2016-07-11T14:50:20.68+02:00') )
]

{ #category : #code-critics }
ManifestMaterialDesignLiteWidgets class >> ruleRBTempsReadBeforeWrittenRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#MDLTextFieldWidget #renderContentOn: #false)) #'2016-07-11T15:47:20.1+02:00') )
]
