Class {
	#name : #MDLDialogActions,
	#superclass : #MDLDivTag,
	#category : 'Material-Design-Lite-Components-Dialog'
}

{ #category : #'mdl api' }
MDLDialogActions >> fullWidth [
	self class: 'mdl-dialog__actions--full-width'
]

{ #category : #initialization }
MDLDialogActions >> initialize [
	super initialize.
	self class: 'mdl-dialog__actions'
]
