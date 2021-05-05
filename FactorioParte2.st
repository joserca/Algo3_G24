!classDefinition: #Caja category: 'FactorioParte2'!
DenotativeObject subclass: #Caja
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FactorioParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Caja class' category: 'FactorioParte2'!
Caja class
	instanceVariableNames: 'contenidoHierro contenido contenidoCarbon'!

!Caja class methodsFor: 'as yet unclassified' stamp: 'SF 4/20/2021 18:42:38'!
agregarMenas: aCollectionOfMenas
	^contenido addAll: aCollectionOfMenas.! !

!Caja class methodsFor: 'as yet unclassified' stamp: 'JRC 5/4/2021 23:17:49'!
agregarMenasCarbon: aCollectionOfMenas
	^contenidoCarbon addAll: aCollectionOfMenas.! !

!Caja class methodsFor: 'as yet unclassified' stamp: 'JRC 5/4/2021 23:17:57'!
agregarMenasHierro: aCollectionOfMenas
	^contenidoHierro addAll: aCollectionOfMenas.! !

!Caja class methodsFor: 'as yet unclassified' stamp: 'SF 4/20/2021 18:08:26'!
cantidadDeMenas
	^contenido size.! !

!Caja class methodsFor: 'as yet unclassified' stamp: 'JRC 5/4/2021 23:12:23'!
cantidadDeMenasCarbon
	^contenidoCarbon size.! !

!Caja class methodsFor: 'as yet unclassified' stamp: 'SF 5/2/2021 19:48:03'!
cantidadDeMenasDeCarbon
	^self cantidadDeMenas.! !

!Caja class methodsFor: 'as yet unclassified' stamp: 'JRC 5/4/2021 23:07:58'!
cantidadDeMenasDeHierro
	^self cantidadDeMenasHierro.! !

!Caja class methodsFor: 'as yet unclassified' stamp: 'JRC 5/4/2021 23:12:00'!
cantidadDeMenasHierro
	^contenidoHierro size.! !

!Caja class methodsFor: 'as yet unclassified' stamp: 'JRC 5/4/2021 23:47:22'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	contenidoHierro := nil.
	contenido := ((OrderedCollection new) add: 'una mena de carbon'; yourself).
	contenidoCarbon := nil.! !

!Caja class methodsFor: 'as yet unclassified' stamp: 'SF 4/20/2021 18:09:06'!
vaciar
	contenido := OrderedCollection new.! !


!classDefinition: #Cinta category: 'FactorioParte2'!
DenotativeObject subclass: #Cinta
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FactorioParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Cinta class' category: 'FactorioParte2'!
Cinta class
	instanceVariableNames: 'contenidoHierro contenido destino contenidoCarbon'!

!Cinta class methodsFor: 'as yet unclassified' stamp: 'JRC 5/4/2021 22:44:48'!
agregarMenas: aCollectionOfMenas
	^contenido addAll: aCollectionOfMenas.! !

!Cinta class methodsFor: 'as yet unclassified' stamp: 'JRC 5/4/2021 23:16:58'!
agregarMenasCarbon: aCollectionOfMenas
	^contenidoCarbon addAll: aCollectionOfMenas.! !

!Cinta class methodsFor: 'as yet unclassified' stamp: 'JRC 5/4/2021 23:16:51'!
agregarMenasHierro: aCollectionOfMenas
	^contenidoHierro addAll: aCollectionOfMenas.! !

!Cinta class methodsFor: 'as yet unclassified' stamp: 'JRC 5/4/2021 22:44:09'!
cantidadDeMenas
	^contenido size.! !

!Cinta class methodsFor: 'as yet unclassified' stamp: 'JRC 5/4/2021 23:14:58'!
cantidadDeMenasCarbon
	^contenidoCarbon size.! !

!Cinta class methodsFor: 'as yet unclassified' stamp: 'JRC 5/4/2021 23:14:47'!
cantidadDeMenasHierro
	^contenidoHierro size.! !

!Cinta class methodsFor: 'as yet unclassified' stamp: 'JRC 5/4/2021 22:55:07'!
conjuntoDeMenasDeCarbonCantidad: cantidadDeMenas
	^ Array new: cantidadDeMenas withAll: 'una mena de carbon'! !

!Cinta class methodsFor: 'as yet unclassified' stamp: 'JRC 5/4/2021 22:56:29'!
conjuntoDeMenasDeHierroCantidad: cantidadDeMenas
	^ Array new: cantidadDeMenas withAll: 'una mena de hierro'! !

!Cinta class methodsFor: 'as yet unclassified' stamp: 'JRC 5/4/2021 22:43:25'!
destino: aContenedor 
	destino := aContenedor.! !

!Cinta class methodsFor: 'as yet unclassified' stamp: 'JRC 5/4/2021 23:47:22'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	contenidoHierro := nil.
	contenido := ((OrderedCollection new)).
	destino := Caja.
	contenidoCarbon := nil.! !

!Cinta class methodsFor: 'as yet unclassified' stamp: 'JRC 5/4/2021 22:58:01'!
transportar
	| cantidadDeMenas |
	cantidadDeMenas := self cantidadDeMenas.
	self vaciar.
	^destino agregarMenas: (self conjuntoDeMenasDeCarbonCantidad: cantidadDeMenas).! !

!Cinta class methodsFor: 'as yet unclassified' stamp: 'JRC 5/4/2021 22:42:46'!
vaciar
	contenido := OrderedCollection new.! !


!classDefinition: #ExtractorDeCarbon category: 'FactorioParte2'!
DenotativeObject subclass: #ExtractorDeCarbon
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FactorioParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ExtractorDeCarbon class' category: 'FactorioParte2'!
ExtractorDeCarbon class
	instanceVariableNames: 'energiaActual destino'!

!ExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'SF 4/15/2021 21:23:04'!
agregarEnergia: energiaExtra

	energiaActual := energiaActual +	energiaExtra.
	^energiaExtra.! !

!ExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'JRC 5/4/2021 22:54:31'!
conjuntoDeMenasDeCarbonCantidad: cantidadDeMenas
	^ Array new: cantidadDeMenas withAll: 'una mena de carbon'! !

!ExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'SF 4/20/2021 18:30:49'!
costoDeExtraccionPorMena
	^5 * joule.! !

!ExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'SF 4/20/2021 18:29:41'!
destino: aContenedor 
	destino := aContenedor.! !

!ExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'JRC 5/4/2021 22:50:37'!
energiaActual
	^energiaActual.
! !

!ExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'SF 4/20/2021 18:31:29'!
energiaParaExtraerTodasLasMenasPosibles
	^self menasAExtraerSegunEnergiaActual * self costoDeExtraccionPorMena.! !

!ExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'SF 4/20/2021 18:34:57'!
extraer
	| cantidadDeMenas energiaConsumida |
	cantidadDeMenas := self menasAExtraerSegunEnergiaActual.
	energiaConsumida := self energiaParaExtraerTodasLasMenasPosibles.
	self sacarEnergia: energiaConsumida.
	^destino agregarMenas: (self conjuntoDeMenasDeCarbonCantidad: cantidadDeMenas).! !

!ExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'JRC 5/4/2021 23:47:22'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	energiaActual := (SimpleMeasure basicNew instVarAt: 1 put: 0; instVarAt: 2 put: (BaseUnit basicNew instVarAt: 1 put: 'joule'; instVarAt: 2 put: 'joules'; instVarAt: 3 put: 'j'; yourself); yourself).
	destino := Cinta.! !

!ExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'SF 4/20/2021 18:30:27'!
menasAExtraerSegunEnergiaActual
	^energiaActual // self costoDeExtraccionPorMena.! !

!ExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'SF 5/2/2021 19:36:12'!
ponerEnCeroLaEnergia
	energiaActual := 0 * joule.! !

!ExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'SF 4/20/2021 18:31:57'!
sacarEnergia: energiaASacar
	energiaActual := energiaActual - energiaASacar! !


!classDefinition: #PruebasCinta category: 'FactorioParte2'!
DenotativeObject subclass: #PruebasCinta
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FactorioParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PruebasCinta class' category: 'FactorioParte2'!
PruebasCinta class
	instanceVariableNames: ''!

!PruebasCinta class methodsFor: 'as yet unclassified' stamp: 'JRC 5/4/2021 23:13:55'!
testSegundoEscenarioCintaCaja.
	ExtractorDeCarbon ponerEnCeroLaEnergia.
	ExtractorDeCarbon agregarEnergia: 5 * joule.
	ExtractorDeCarbon destino: Cinta.
	
	Cinta destino: Caja.
	Cinta vaciar.
	Caja vaciar.
	
	ExtractorDeCarbon extraer.
	Cinta transportar.
	
	Assert that: Cinta cantidadDeMenas isEqualTo: 0.
	Assert that: Caja cantidadDeMenas isEqualTo: 1.
	Assert that: Caja cantidadDeMenasDeCarbon isEqualTo: 1.! !


!classDefinition: #PruebasDeExtractorDeCarbon category: 'FactorioParte2'!
DenotativeObject subclass: #PruebasDeExtractorDeCarbon
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FactorioParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PruebasDeExtractorDeCarbon class' category: 'FactorioParte2'!
PruebasDeExtractorDeCarbon class
	instanceVariableNames: ''!

!PruebasDeExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'SF 5/2/2021 19:37:39'!
setUp
	ExtractorDeCarbon destino: Caja.
	Caja vaciar.! !

!PruebasDeExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'SF 4/20/2021 18:41:43'!
test01UnExtractorSinEnergiaNoExtraeMenas
	"Cuando no cargue energia en el extractor, no saco menas"
	ExtractorDeCarbon ponerEnCeroLaEnergia.
	Assert isTrue: ExtractorDeCarbon extraer isEmpty.
! !

!PruebasDeExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'SF 4/20/2021 18:46:54'!
test02UnExtractorConInsuficienteEnergiaNoExtraeMenas
	ExtractorDeCarbon ponerEnCeroLaEnergia.
	ExtractorDeCarbon agregarEnergia: 1 * joule.
	Assert isTrue: ExtractorDeCarbon extraer isEmpty.
! !

!PruebasDeExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'SF 4/20/2021 18:47:56'!
test03UnExtractorConSuficienteEnergiaExtrae1Mena
	ExtractorDeCarbon ponerEnCeroLaEnergia.
	ExtractorDeCarbon agregarEnergia: 5 * joule.
	Assert that: ExtractorDeCarbon extraer size isEqualTo: 1.
! !

!PruebasDeExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'SF 4/20/2021 18:49:57'!
test04UnExtractorConservaLaEnergiaNoUtilizada
	ExtractorDeCarbon ponerEnCeroLaEnergia.
	ExtractorDeCarbon agregarEnergia: 7 * joule.
	Assert that: ExtractorDeCarbon extraer size isEqualTo: 1.
	Assert that: ExtractorDeCarbon energiaActual isEqualTo: 2 * joule.
! !

!PruebasDeExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'SF 4/20/2021 18:50:53'!
test05UnExtractorPuedeExtraerMultiplesMenasConMuchaEnergia
	ExtractorDeCarbon ponerEnCeroLaEnergia.
	ExtractorDeCarbon agregarEnergia: 50 * joule.
	Assert that: ExtractorDeCarbon extraer size isEqualTo: 10.
	Assert that: ExtractorDeCarbon energiaActual isEqualTo: 0 * joule.
! !


!classDefinition: #PruebasDeFactorio category: 'FactorioParte2'!
DenotativeObject subclass: #PruebasDeFactorio
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FactorioParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PruebasDeFactorio class' category: 'FactorioParte2'!
PruebasDeFactorio class
	instanceVariableNames: ''!

!PruebasDeFactorio class methodsFor: 'as yet unclassified' stamp: 'SF 5/2/2021 19:43:17'!
testEscenarioExtractorCaja
	ExtractorDeCarbon ponerEnCeroLaEnergia.
	ExtractorDeCarbon agregarEnergia: 5 * joule.
	ExtractorDeCarbon destino: Caja.
	Caja vaciar.
	ExtractorDeCarbon extraer.
	Assert that: Caja cantidadDeMenas isEqualTo: 1.
	Assert that: Caja cantidadDeMenasDeCarbon isEqualTo: 1.! !

Caja initializeAfterFileIn!
Cinta initializeAfterFileIn!
ExtractorDeCarbon initializeAfterFileIn!