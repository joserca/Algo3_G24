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

!Caja class methodsFor: 'as yet unclassified' stamp: 'JRC 5/10/2021 01:12:43'!
agregar: unaMena
	contenido add: unaMena.! !

!Caja class methodsFor: 'as yet unclassified' stamp: 'JRC 5/10/2021 00:55:26'!
agregarMenas: aCollectionOfMenas
	^contenido addAll: aCollectionOfMenas.! !

!Caja class methodsFor: 'as yet unclassified' stamp: 'JRC 5/10/2021 00:55:26'!
cantidadDeMenas
	^contenido size.! !

!Caja class methodsFor: 'as yet unclassified' stamp: 'JRC 5/10/2021 01:13:41'!
cantidadDeMenasCarbon
	^contenido count: [:unaMena | unaMena = 'una mena de carbon' ].! !

!Caja class methodsFor: 'as yet unclassified' stamp: 'JRC 5/10/2021 01:14:08'!
cantidadDeMenasHierro
	^contenido count: [:unaMena | unaMena = 'una mena de hierro' ].! !

!Caja class methodsFor: 'as yet unclassified' stamp: 'JRC 5/10/2021 02:13:20'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	contenidoHierro := nil.
	contenido := ((OrderedCollection new) add: 'una mena de carbon'; yourself).
	contenidoCarbon := nil.! !

!Caja class methodsFor: 'as yet unclassified' stamp: 'JRC 5/10/2021 00:55:26'!
vaciar
	contenido := OrderedCollection new.! !


!classDefinition: #CintaCarbon category: 'FactorioParte2'!
DenotativeObject subclass: #CintaCarbon
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FactorioParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CintaCarbon class' category: 'FactorioParte2'!
CintaCarbon class
	instanceVariableNames: 'contenido destino'!

!CintaCarbon class methodsFor: 'as yet unclassified' stamp: 'JRC 5/10/2021 01:16:56'!
agregar: unaMena
	contenido add: unaMena ! !

!CintaCarbon class methodsFor: 'as yet unclassified' stamp: 'JRC 5/4/2021 22:44:48'!
agregarMenas: aCollectionOfMenas
	^contenido addAll: aCollectionOfMenas.! !

!CintaCarbon class methodsFor: 'as yet unclassified' stamp: 'JRC 5/4/2021 22:44:09'!
cantidadDeMenas
	^contenido size.! !

!CintaCarbon class methodsFor: 'as yet unclassified' stamp: 'JRC 5/10/2021 01:17:46'!
cantidadDeMenasCarbon
	^self cantidadDeMenas.! !

!CintaCarbon class methodsFor: 'as yet unclassified' stamp: 'JRC 5/4/2021 22:43:25'!
destino: aContenedor 
	destino := aContenedor.! !

!CintaCarbon class methodsFor: 'as yet unclassified' stamp: 'JRC 5/10/2021 02:13:20'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	contenido := ((OrderedCollection new)).
	destino := Caja.! !

!CintaCarbon class methodsFor: 'as yet unclassified' stamp: 'JRC 5/10/2021 02:12:08'!
transportar
	| cantidadDeMenasAnterior |
	cantidadDeMenasAnterior := contenido.
	self vaciar.
	^destino agregarMenas: cantidadDeMenasAnterior.! !

!CintaCarbon class methodsFor: 'as yet unclassified' stamp: 'JRC 5/4/2021 22:42:46'!
vaciar
	contenido := OrderedCollection new.! !


!classDefinition: #CintaHierro category: 'FactorioParte2'!
DenotativeObject subclass: #CintaHierro
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FactorioParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CintaHierro class' category: 'FactorioParte2'!
CintaHierro class
	instanceVariableNames: 'contenido destino'!

!CintaHierro class methodsFor: 'as yet unclassified' stamp: 'JRC 5/10/2021 01:18:19'!
agregar: unaMena
	contenido add: unaMena! !

!CintaHierro class methodsFor: 'as yet unclassified' stamp: 'JRC 5/9/2021 20:56:33'!
agregarMenas: aCollectionOfMenas
	^contenido addAll: aCollectionOfMenas.! !

!CintaHierro class methodsFor: 'as yet unclassified' stamp: 'JRC 5/9/2021 20:56:33'!
cantidadDeMenas
	^contenido size.! !

!CintaHierro class methodsFor: 'as yet unclassified' stamp: 'JRC 5/10/2021 01:19:42'!
cantidadDeMenasHierro
	^self cantidadDeMenas.! !

!CintaHierro class methodsFor: 'as yet unclassified' stamp: 'JRC 5/9/2021 20:56:33'!
destino: aContenedor 
	destino := aContenedor.! !

!CintaHierro class methodsFor: 'as yet unclassified' stamp: 'JRC 5/10/2021 02:13:20'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	contenido := ((OrderedCollection new)).
	destino := CintaCarbon.! !

!CintaHierro class methodsFor: 'as yet unclassified' stamp: 'JRC 5/10/2021 02:12:02'!
transportar
	| cantidadDeMenasAnterior |
	cantidadDeMenasAnterior := contenido.
	self vaciar.
	^destino agregarMenas: cantidadDeMenasAnterior.! !

!CintaHierro class methodsFor: 'as yet unclassified' stamp: 'JRC 5/9/2021 20:56:33'!
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

!ExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'JRC 5/10/2021 02:13:20'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	energiaActual := (SimpleMeasure basicNew instVarAt: 1 put: 0; instVarAt: 2 put: (BaseUnit basicNew instVarAt: 1 put: 'joule'; instVarAt: 2 put: 'joules'; instVarAt: 3 put: 'j'; yourself); yourself).
	destino := CintaCarbon.! !

!ExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'SF 4/20/2021 18:30:27'!
menasAExtraerSegunEnergiaActual
	^energiaActual // self costoDeExtraccionPorMena.! !

!ExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'SF 5/2/2021 19:36:12'!
ponerEnCeroLaEnergia
	energiaActual := 0 * joule.! !

!ExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'SF 4/20/2021 18:31:57'!
sacarEnergia: energiaASacar
	energiaActual := energiaActual - energiaASacar! !


!classDefinition: #ExtractorDeHierro category: 'FactorioParte2'!
DenotativeObject subclass: #ExtractorDeHierro
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FactorioParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ExtractorDeHierro class' category: 'FactorioParte2'!
ExtractorDeHierro class
	instanceVariableNames: 'energiaActual destino'!

!ExtractorDeHierro class methodsFor: 'as yet unclassified' stamp: 'JRC 5/9/2021 20:56:54'!
agregarEnergia: energiaExtra

	energiaActual := energiaActual +	energiaExtra.
	^energiaExtra.! !

!ExtractorDeHierro class methodsFor: 'as yet unclassified' stamp: 'JRC 5/9/2021 21:42:58'!
conjuntoDeMenasDeHierroCantidad: cantidadDeMenas
	^ Array new: cantidadDeMenas withAll: 'una mena de hierro'! !

!ExtractorDeHierro class methodsFor: 'as yet unclassified' stamp: 'JRC 5/9/2021 20:56:54'!
costoDeExtraccionPorMena
	^5 * joule.! !

!ExtractorDeHierro class methodsFor: 'as yet unclassified' stamp: 'JRC 5/9/2021 20:56:54'!
destino: aContenedor 
	destino := aContenedor.! !

!ExtractorDeHierro class methodsFor: 'as yet unclassified' stamp: 'JRC 5/9/2021 20:56:54'!
energiaActual
	^energiaActual.
! !

!ExtractorDeHierro class methodsFor: 'as yet unclassified' stamp: 'JRC 5/9/2021 20:56:54'!
energiaParaExtraerTodasLasMenasPosibles
	^self menasAExtraerSegunEnergiaActual * self costoDeExtraccionPorMena.! !

!ExtractorDeHierro class methodsFor: 'as yet unclassified' stamp: 'JRC 5/9/2021 21:43:57'!
extraer
	| cantidadDeMenas energiaConsumida |
	cantidadDeMenas := self menasAExtraerSegunEnergiaActual.
	energiaConsumida := self energiaParaExtraerTodasLasMenasPosibles.
	self sacarEnergia: energiaConsumida.
	^destino agregarMenas: (self conjuntoDeMenasDeHierroCantidad: cantidadDeMenas).! !

!ExtractorDeHierro class methodsFor: 'as yet unclassified' stamp: 'JRC 5/10/2021 02:13:20'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	energiaActual := (SimpleMeasure basicNew instVarAt: 1 put: 0; instVarAt: 2 put: (BaseUnit basicNew instVarAt: 1 put: 'joule'; instVarAt: 2 put: 'joules'; instVarAt: 3 put: 'j'; yourself); yourself).
	destino := CintaHierro.! !

!ExtractorDeHierro class methodsFor: 'as yet unclassified' stamp: 'JRC 5/9/2021 20:56:54'!
menasAExtraerSegunEnergiaActual
	^energiaActual // self costoDeExtraccionPorMena.! !

!ExtractorDeHierro class methodsFor: 'as yet unclassified' stamp: 'JRC 5/9/2021 20:56:54'!
ponerEnCeroLaEnergia
	energiaActual := 0 * joule.! !

!ExtractorDeHierro class methodsFor: 'as yet unclassified' stamp: 'JRC 5/9/2021 20:56:54'!
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

!PruebasCinta class methodsFor: 'as yet unclassified' stamp: 'JRC 5/10/2021 02:07:19'!
testSegundoEscenarioCintaCajaCarbon.
	ExtractorDeCarbon ponerEnCeroLaEnergia.
	ExtractorDeCarbon agregarEnergia: 5 * joule.
	ExtractorDeCarbon destino: CintaCarbon.
	
	CintaCarbon destino: Caja.
	CintaCarbon vaciar.
	Caja vaciar.
	
	ExtractorDeCarbon extraer.
	Assert that: CintaCarbon cantidadDeMenas isEqualTo: 1.
	
	CintaCarbon transportar.
	Assert that: CintaCarbon cantidadDeMenas isEqualTo: 0.
	Assert that: Caja cantidadDeMenas isEqualTo: 1.! !

!PruebasCinta class methodsFor: 'as yet unclassified' stamp: 'JRC 5/10/2021 01:58:47'!
testTercerEscenarioCintaCajaCinta
	ExtractorDeCarbon ponerEnCeroLaEnergia.
	ExtractorDeCarbon agregarEnergia: 5 * joule.
	ExtractorDeCarbon destino: CintaCarbon.
	
	ExtractorDeHierro ponerEnCeroLaEnergia.
	ExtractorDeHierro agregarEnergia: 5 * joule.
	ExtractorDeHierro destino: CintaHierro.
	
	CintaCarbon vaciar.
	CintaHierro vaciar.
	Caja vaciar.
	
	CintaHierro destino: CintaCarbon .
	CintaCarbon destino: Caja.
	
	ExtractorDeCarbon extraer.
	CintaCarbon transportar.
	Assert that: CintaCarbon cantidadDeMenas isEqualTo: 0.
	Assert that: Caja cantidadDeMenas isEqualTo: 1.
	Assert that: Caja cantidadDeMenasCarbon isEqualTo: 1.
	
	ExtractorDeHierro extraer.
	CintaHierro transportar.
	CintaCarbon transportar.
	Assert that: CintaCarbon cantidadDeMenas isEqualTo: 0.
	Assert that: CintaHierro cantidadDeMenas isEqualTo: 0.
	Assert that: Caja cantidadDeMenasHierro isEqualTo: 1.
	Assert that: Caja cantidadDeMenas isEqualTo: 2.
	
	Assert that: ExtractorDeCarbon energiaActual isEqualTo: 0.
	Assert that: ExtractorDeHierro energiaActual isEqualTo: 0.
	ExtractorDeCarbon agregarEnergia: 5 * joule.
	ExtractorDeHierro agregarEnergia: 5 * joule.
	
	ExtractorDeCarbon extraer.
	ExtractorDeHierro extraer.
	CintaHierro transportar.
	CintaCarbon transportar.
	Assert that: CintaCarbon cantidadDeMenas isEqualTo: 0.
	Assert that: CintaHierro cantidadDeMenas isEqualTo: 0.
	Assert that: Caja cantidadDeMenasHierro isEqualTo: 2.
	Assert that: Caja cantidadDeMenasCarbon isEqualTo: 2.
	Assert that: Caja cantidadDeMenas isEqualTo: 4.! !


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

!PruebasDeExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'JRC 5/10/2021 02:09:50'!
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

!PruebasDeFactorio class methodsFor: 'as yet unclassified' stamp: 'JRC 5/10/2021 02:08:47'!
testEscenarioExtractorCaja
	ExtractorDeCarbon ponerEnCeroLaEnergia.
	ExtractorDeCarbon agregarEnergia: 5 * joule.
	ExtractorDeCarbon destino: Caja.
	Caja vaciar.
	ExtractorDeCarbon extraer.
	Assert that: Caja cantidadDeMenas isEqualTo: 1.! !

Caja initializeAfterFileIn!
CintaCarbon initializeAfterFileIn!
CintaHierro initializeAfterFileIn!
ExtractorDeCarbon initializeAfterFileIn!
ExtractorDeHierro initializeAfterFileIn!