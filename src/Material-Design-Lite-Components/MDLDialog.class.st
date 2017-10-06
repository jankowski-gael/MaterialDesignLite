"
Modal windows for dedicated user input.
"
Class {
	#name : #MDLDialog,
	#superclass : #WATagBrush,
	#category : 'Material-Design-Lite-Components-Dialog'
}

{ #category : #'javascript generation' }
MDLDialog >> closeButtonId: id [
   self id ifNil: [ self id: id, '-dialog' ].
   self attributeAt: 'data-closebtnid' put: id. 
]

{ #category : #initialization }
MDLDialog >> initialize [
	super initialize.
	self class: 'mdl-dialog'.
]

{ #category : #'javascript generation' }
MDLDialog >> openButtonId: id [
   self id ifNil: [ self id: id, '-dialog' ].
   self attributeAt: 'data-openbtnid' put: id. 
	self script: (JSStream on: 'newDialog("',self id,'")' )
]

{ #category : #accessing }
MDLDialog >> tag [
	^ 'dialog'
]
