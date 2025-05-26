Class {
	#name : #JokesDB,
	#superclass : #SpFileDatabase,
	#category : #'Jokes-Persistence'
}

{ #category : #accessing }
JokesDB class >> backupDirectoryParent [
	
	^ FileLocator dynabookData
]

{ #category : #'loading/saving' }
JokesDB class >> schema [
	^ { 
		JkJoke }
]
