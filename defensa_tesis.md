---
title: "Underlying strategies of semantic search"
author: Nicolás Luarte
date: 06 enero 2020
output: 
    beamer_presentation:
theme: "Boadilla"
---
## Introducción

'When searching for items in memory, people explore internal representations in
much the same the way that animals forage in space'
[@hillsOptimalForagingSemantic2012a]

- Esto parece ser resultado de al menos dos elementos:


1. La 'estructura' de la búsqueda es similar
2. Existen 'algoritmos' (o partes de ellos) que parecen ser 'óptimos' para
   resolver la búsqueda dadas ciertas condiciones tipicamente encontradas en la
   naturaleza. Evolutivamente se seleccionaron organos que pueden ejecutar
   dicha función.
   
## La estructura de la búsqueda
### El dilema 'explorar-explotar'
Considerando un ambiente dónde la entrega de recompensa esta ligado de una
manera u otra a la acción de un agente. Para que dicho agente obtenga
recompensa, este debe preferir acciones que ha realizado en el pasado y le han
otorgado recompensa, pero para descubrir tales acciones, debe elegir acciones
que no ha elegido previamente.

El agente debe 'explotar' dichas acciones que ya sabe producen recompensa, pero
también debe 'explorar' para poder elegir dichas acciones en primer lugar.

## La estructura de la búsqueda

Las condiciones para que un agente este bajo el dilema de explorar-explotar son
minimas:

1. El agente debe tener conocimiento parcial (o no tener conocimiento) de la
   acción óptima en cada momento.
2. Explorar opciones implica no explotar. 
3. Explorar implica de alguna manera u otra un 'gasto'.
4. Explotar (de ambas opciones) es igualmente o mas recompensada.

- Bajo esas consideraciones, la búsqueda espacial tanto como la búsqueda de
  representaciones mentales (búsqueda semántica) parecen obedecer a dicho dilema
  
## La estructura de la búsqueda
### La búsqueda semántica, considerada como búsqueda con 'distancias'
- Para poder considerar la búsqueda semántica dentro de este dilema es
necesario aclarar las condiciones bajo las cuales esto sería cierto.

1. Los contenidos semánticos están organizados en parcelas ('patches')
2. Entre parcelas existe algún tipo de distancia, en tanto pasar de una a otra
   incurre en un gasto
   
  
- 'Semantic fluency tasks': se le pide a
  sujetos que nombren la mayor cantidad de animales en un tiempo determinado.
  Asumiendo categorías de los animales, se observa que los sujetos producen mas
  animales por segundo dentro de la categoría, y luego, al cambiar de categoría,
  se produce un retraso en esta producción. La distribución de los tiempos entre
  producción de animales obedecen patrones tipo 'Levy'
  
## Búsqueda interna y externa

![Búsqueda interna y externa](/home/nicoluarte/defensa-tesis/images/semantic.png){ width=400px }
  
## Estrategias de búsqueda basadas en reglas
Se desprende la teoría de forrajeo óptimo 'optimal foraging theory' [@bartumeusOptimalSearchBehavior2009a] y considera 4 problemas fundamentales que enfrenta el agente en búsqueda de 'alimento': 

1. qué comer
2. qué tipo de parcela buscar
3. cúando salir de una parcela
4. cómo moverse entre parcelas

La teoría supone que el agente, en estos 4 aspectos, toma la decisión para optimizar cantidad de energía adquirida por unidad de tiempo usada en el forrajeo. La regla para tomar dichas decisiones se determina por el teorema de valor marginal ('margina value theorem') [@charnovOptimalForagingMarginal1976a] 

## Marginal value theorem

![Tiempo óptimo de salida](/home/nicoluarte/defensa-tesis/images/mvt.png){ width=250px }

## Marginal value theorem

Determinación del tiempo en la parcela

- $h_{i}$ $\leftarrow$ tiempo de permanencia óptimo en la parcela i
- $S_{i}$ $\leftarrow$ nivel de recursos en la parcela i
- $t_{s}$ $\leftarrow$ tiempo de viaje promedio entre dos parcelas
- $S_{a}$ $\leftarrow$ nivel de recursos a través de las parcelas
- $K$ $\leftarrow$ constante que representa que tan pronunciada es la pendiente de consumo al tiempo 0 en cada parcela

![$h_{i}* = S_{i}\sqrt{\frac{t_{s}}{S_{a} K}}$](/home/nicoluarte/defensa-tesis/images/mvt_change.jpg){ width=170px }


## Estrategias de búsqueda basadas en 'random walks'

Las principales dificultades con los modelos basados en reglas son principalmente las siguientes:

1. Asumen pasividad del recurso a consumir
2. Asumen un conocimiento del agente bastante elevado y de largo alcance
3. Evidencia empirica contra las predecciones del modelo
[@jesmerStatedependentBehaviorAlters2017]  a alternativa a esto son modelos estocasticos que recaen, principalmente, en
las propiedades inherentes del ambiente 

## Modelos estocasticos

- Uno de los modelos mas populares es el de 'Lévy Walks'. Estos parten del punto
de vista que a nivel evolutivo las estrategias de búsqueda se adaptaron a
escases de información y a parcelas alejadas de recursos.

- Lévy Walks se definen por 3 propiedades:
1. El largo del 'paso' obedece una distribución con cola ancha
2. La orientación del 'paso' obedece una distribución uniforme para todas las
   direcciones
3. Es un proceso que satisface la propiedad de Markov, 1 y 2 no se ven afectados
   por el 'pasado'
   
## Modelos estocasticos

![Levy Walk](/home/nicoluarte/defensa-tesis/images/Levy.svg){width=250px}

## Modelos estocasticos

- Un proceso 'sin memoria' y que no considera ciertas habilidades cognitivas
  superiores, puede tener una ventaja en ambientes dónde:
  
  1. La escala dónde se puede buscar es básicamente infinita
  2. La interacción producida por la misma búsuqeda altera el ambiente
  3. El ambiente se modifica, también, en funcíon del tiempo
  
## Problemas con los modelos estocasticos y estrategias emergentes

1. Patrones similares se pueden dar con procesos no Markovianos influenciados
   por memoria [@gautestadLevyFlightForaging2013] 
2. Puede tratarse de una coincidencia a nivel fenomenologico y no estar dando
   cuenta de un mecanismo de producción interno
3. Estos patrones se pueden generar debido a la interacción del agente con el
   ambiente, sin embargo hay escasa evidencia de que patrones tipo 'Lévy' puede
   ser producidos de manera independiente a la interacción con el ámbiente [@mayeOrderSpontaneousBehavior2007] 


## Implementaciones neurales de las estrategias de búsqueda

Para que a lo largo de la evolución la estrategia de búsqueda usada en el
forrajeo haya sido co-optada para la búsqueda semántica, se debe contar con una
o varias estructuras considerablemente 'antiguas' capaces de:

1. Cambiar de un estado de explotación a uno de exploración, sea mediante la
   elección aleatoria del largo del paso u otra
2. De alguna manera asignar una distribución de probabilidad para explorar

## Implementaciones neurales de las estrategias de búsqueda

El Locus Coeruleus tendría un rol fundamental en soportar los mecánismos de
exploración-explotación [@aston-jonesAdaptiveGainRole2005b] 

![Conexiones eferentes del Locus Coeruleus](/home/nicoluarte/defensa-tesis/images/lc.png){width=250px}

## Adaptive gain-theory

LC tendría entonces la capacidad de modifcar la 'ganancia' en la activación de
inputs excitatorios/inhibitorios

![Ganancia](/home/nicoluarte/defensa-tesis/images/gain.png){width=200px}

## Adaptive gain-theory

Tendría dos 'modos' fásico y tónico

- El fásico supone un nivel de actividad bajo en las neuronas del LC, pero tiene
  una clara ganancia (temporal) asociada a un estimulo saliente.
  

![Modo fásico](/home/nicoluarte/defensa-tesis/images/fasico.png){width=300px}

## Adaptive gain-theory

- El tónico por otro lado estaría asociado a un mayor nivel de actividad global,
  sin embargo dicha actividad no esta relacionada temporalmente con el estimulo
- En conjunto con la corteza orbito frontal, pre-frontal y corteza singulada
  anterior, se determinaria el modo para lidiar con el cambio de explotación
  (fásico) a exploración (tónico)
  
## Adaptive gain-theory

![Estimación utilidad](/home/nicoluarte/defensa-tesis/images/info.png){width=250px}
  
## Adaptive gain-theory
  
![Cambio adaptativo](/home/nicoluarte/defensa-tesis/images/modo.png){width=300px}
  

## Co-opción de las estrategias de búsqueda

De momento, y relajando ciertos supuestos, podemos determinar que:

1. Búsqueda semántica y espacial se situan en el dilema de
   exploración-explotación
2. Ambos tienden a seguir patrones tipo 'Lévy'
   [@hillsForagingSemanticFields2015b] 
   
## Co-opción de las estrategias de búsqueda

- Existe una gran presencia de este tipo de estrategia a lo largo de
muchas especies [@hillsExplorationExploitationSpace2015]

- Esta estrategia parece ser óptima e independiente de la escala
  [@wosniackEvolutionaryOriginsLevy2017] 
  
- Su implementación a nivel neural parece estar soportado, en parte, por
  estructuras 'antiguas' o bien con funciones primitivas
  [@hillsAnimalForagingEvolution2006] 
  
- En humanos la actividad del LC (medida a través de diametro pupilar) predice
  cambios entre exploración explotación [@jepmaPupilDiameterPredicts2011] 
  
- Finalmente, humanos utilizan mismas estrategias en búsqueda internas como
  externas [@wilkeFishingRightWords2009] 


## Conclusiones

- Búsquedas internas y externas parecen seguir los mismos patrones

- Existen ciertos patrones (Lévy) que parecen ser óptimos en condiciones
  tipicamente encontradas y por ello, por selección natural, estructuras que la
  soporten podrían haber sido seleccionados
  
- Dichas estructuras que soportaban el forrajeo, podrían por co-opción, también
  soportar la búsqueda semántica
  
- Evidencia empirica minima

- Dificultad en trazar el camino evolutivo en nuestra especie

  
## Referencias
  
