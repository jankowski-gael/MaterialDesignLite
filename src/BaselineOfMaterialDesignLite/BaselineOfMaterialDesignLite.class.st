"
I am a baseline of MaterialDesignLite. Read more at: https://github.com/DuneSt/MaterialDesignLite
"
Class {
	#name : #BaselineOfMaterialDesignLite,
	#superclass : #BaselineOf,
	#category : 'BaselineOfMaterialDesignLite'
}

{ #category : #baseline }
BaselineOfMaterialDesignLite >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ self
				seaside3: spec;
				fileLibraryHelper: spec;
				materialColors: spec;
				magritte: spec.
			spec
				package: 'Material-Design-Lite-Components' with: [ spec requires: #('MaterialColors') ];
				package: 'Material-Design-Lite-Core' with: [ spec requires: #('Material-Design-Lite-Utils' 'Material-Design-Lite-Components' 'Material-Design-Lite-Widgets') ];
				package: 'Material-Design-Lite-Magritte' with: [ spec requires: #('Material-Design-Lite-Widgets' 'Material-Design-Lite-Components') ];
				package: 'Material-Design-Lite-Widgets' with: [ spec requires: #('Material-Design-Lite-Components') ];
				package: 'Material-Design-Lite-Utils' with: [ spec requires: #('Seaside3' 'FileLibraryHelper') ].
			spec
				group: 'Magritte' with: #('Material-Design-Lite-Magritte');
				group: 'all' with: #('default' 'Magritte');
				group: 'colors' with: #('MaterialColors');
				group: 'default' with: #('Material-Design-Lite-Widgets' 'Material-Design-Lite-Components' 'Material-Design-Lite-Core' 'Material-Design-Lite-Utils') ]
]

{ #category : #dependencies }
BaselineOfMaterialDesignLite >> fileLibraryHelper: spec [
	"I small project to help developers to manage the files in the FileLibrary."

	spec
		baseline: 'FileLibraryHelper'
		with: [ spec repository: 'github://jecisc/FileLibraryHelper/src' ]
]

{ #category : #dependencies }
BaselineOfMaterialDesignLite >> magritte: spec [
	spec
		project: 'Magritte3'
		with: [ spec
				className: #ConfigurationOfMagritte3;
				versionString: #stable;
				loads: #('Seaside');
				repository: 'http://smalltalkhub.com/mc/Magritte/Magritte3/main/' ]
]

{ #category : #dependencies }
BaselineOfMaterialDesignLite >> materialColors: spec [
	spec
		baseline: 'MaterialColors'
		with: [ spec repository: 'github://DuneSt/MaterialColors:master/src' ]
]

{ #category : #dependencies }
BaselineOfMaterialDesignLite >> seaside3: spec [
	spec
		baseline: 'Seaside3'
		with: [ spec repository: 'github://SeasideSt/Seaside/repository' ]
]
