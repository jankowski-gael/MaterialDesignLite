"
The Material Design Lite (MDL) text field component is an enhanced version of the standard HTML <input type=""text""> and <input type=""textarea""> elements. A text field consists of a horizontal line indicating where keyboard input can occur and, typically, text that clearly communicates the intended contents of the text field.
"
Class {
	#name : #MDLTextFieldExpandableHolder,
	#superclass : #MDLDivTag,
	#category : 'Material-Design-Lite-Components-Forms'
}

{ #category : #'as yet unclassified' }
MDLTextFieldExpandableHolder >> initialize [
	super initialize.
	self class: 'mdl-textfield__expandable-holder'
]
