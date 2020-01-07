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

## Búsqueda semantica

- La búsqueda semántica nos permite recuperar memorias que están relacionadas
  con la tarea o situación a nivel de significado, sin necesidad de haber tenido
  la experiencia de dicho contenido.
  
- El paradigma mas típico de estudio son las tareas de 'semantic fluency'. Aquí,
  participantes deben recuperar la mayor cantidad de ítems (únicos) de una categoría
  (animales, por ejemplo) dentro de un tiempo determinado.
  
- Se ha observado que las respuestas tienden a estar agrupadas en parcelas
  semánticamente relacionadas [@hillsOptimalForagingSemantic2009] :
  
  Animales $\rightarrow$ Animales domesticos $\rightarrow$ {perro, gato, ...}

## Toma de decisiones

- Entonces, ¿de qué manera se decide pasar de una parcela a otra?

- Adicionalmente, es necesario conocer:

1. Cantidad y fuente de la información que es utilizable para quién realiza la
   búsqueda
2. Qué propiedad de la informacíon utiliza para generar umbrales de decisión
3. De qúe manera evalúa su propia decisión

## Toma de decisiones secuenciales

- Además de lo anterior, incluso en esta simple tarea, estamos en presencia de
  una toma de decisiones secuencial, es decir, las decisiones tomadas en un
  momento afectan las condiciones que el ambiente tendrá en el siguiente
  momento.
- Sí digo 'perro', la siguiente palabra no puede ser nuevamente 'perro'
- Este tipo de problemas cae sobre la disciplina de 'refinforcement learning'

## Toma de decisiones secuenciales

![Toma de decisiones secuenciales](/home/nicoluarte/defensa-tesis/images/rl.jpg){ width=250px }

## Toma de decisiones secuenciales

Incluso bajo modelos muy sencillos, para que se tome una buena decisión la
cantidad de información a retener y procesar parece ser enorme, dependiente de
la cantidad de opciones y tiempo de permanencia en la tarea.

![Función de valor](/home/nicoluarte/defensa-tesis/images/value.png){ width=350px }

- Dónde 'Q' índica el valor estimado de la acción 'a' en el tiempo 't' y '1' es
  una variable aleatoria que toma el valor cuando la acción $A_{i}$ es igual a
  la acción que se evalua actualmente
- Para el ejemplo de la tarea cada parcela sería una acción posible
- La decisión sería 'greedy', es decir, elegir la acción de mayor valor

## Heurísticos

- Considerando la alta velocidad requerida para recuperar memorias en
  situaciones naturales, parece ser poco plausible un mecanismo de decisión de
  tal complejidad.
- Dado este problema y el hecho que en algunas situaciones encontrar una
  solución óptima puede ser imposible [@gigerenzerWhyHeuristicsWork2008a], se ha
  propuesto la utilización de 'heuristicos', esto es, soluciones no-óptimas y
  rápidamente computables que pueden ofrecer resultados semejantes a los óptimos
  si es que estos evolucionaron de manera conjunta con el problema [@mousaviHeuristicsAreTools2017] 

## Dilema de exploración-explotación

- Los heuristicos buscan operar sobre las estructuras subyacentes a los
  diferentes problemas, para ofrecer soluciones prácticas. En este problema de
  búsqueda lo subyacente es el dilema de explorar-expotar.
  
![Escoger el buen lugar de siempre o probar algo
nuevo](/home/nicoluarte/defensa-tesis/images/explo.png){ width=300px }

## Dilema de exploración-explotación

### De manera un poco mas formal
Explorar es la acción de recolectar información acerca del valor que cada acción
tiene bajo un ambiente determinado en un punto especifico del tiempo, por otro
lado, explotar significar tomar un acción determinada para obtener el valor que
ella tiene en dicho ambiente en un punto especifico del tiempo. 

- El dilema nace, ya que explorar y explotar son actividades mutuamente
  exclusivas. Y tipicamente, quién busca lo hace para obtener cierto beneficio
  (explotando), sin embargo, para obtener el mejor beneficio es necesario probar
  las diferentes opciones.

## Soluciones primitivas

- Para encontrar cuales son las estrategias subyacentes a la búsqueda semántica,
  se ha propuesto observar al comportamient de 'forrajeo', ya que:
  
1. La problematica subyacente es igualmente la de explorar-explotar
2. El éxito de la estrategia está vínculado al éxito reproductivo
3. Estructuras que hayan soportado este tipo de búsqueda podrían ser utilizadas
   para resolver 'búsquedas internas', en tanto fueron sometidas a selección natural

## Forrajeo y el dilema de explorar-explotar

El forrajeo es la búsqueda de alimento en la naturaleza y el éxito de esta
búsqueda determina en gran parte fu 'fitness', en tanto afecta la supervivencia.

- Dada las condiciones actuales de la tierra, los 'recursos' tienden a estar
  concentrados en parcelas de distinta densidad y la distancia entre parcelas es
  significativamente mas grande que la existente entre recursos dentro de una
  parcelas
- La teoría de forrajeo entonces estudia, dentro de otros, el movimiento
  intra-parcela así como el de entre parcelas
- Debido a que el aparato sensorial de los organismo es limitido de una u otra
  manera, es imposible para estos determinar el valor de cada parcela sin antes
  haber realizado exploración. Por ello, cae igualmente dentro del dilema mencionado
  
## Forrajeo y el dilema de explorar-explotar

![Forrajeo](/home/nicoluarte/defensa-tesis/images/foraging.png){ width=200px }

## Modelos

Para definir un heuristico es necesario generar un modelo que permita testearlo
e ir más allá de una simple descripción [@gigerenzerWhyHeuristicsWork2008a].
Para definir el heuristico que lidia con la exploración-explotación lo
consideramos en su nicho de mas probable evolución, el forrajeo, y para
definirlo consideramos modelos que buscan captar en 'esencia' este
comportamiento.

## Basados en reglas

Uno de los primeros modelos salidos de la 'optimal foraging theory' fue el del
'marginal value theorem' [@charnovOptimalForagingMarginal1976a]. Básicamente
este teorema, entre otros elementos, define que el organismo determina un tiempo
de abandono de la parcela que es identico al 'optimo'.

$R = \frac{g(t_{w})}{t_{w} + t_{b}}$

- Dónde R es la ganancia (de nutrientes u otro) por unidad de tiempo
- $g(t_{w})$ es la ganancia acumulada dentro de una parcela
- $t_{w}$ es el tiempo recorrido dentro de la parcela
- $t_{b}$ es el tiempo de reccorido medio entre parcelas

- El teorema entonces dice que el organismo permanecera dentro de la parcela
  hasta que la ganancia hasta que la tasa instantanea de ganancia sea igual a la
  tasa promedio de ganancia dentro del ámbiente
  
## Basados en reglas

![Cambio de parcela](/home/nicoluarte/defensa-tesis/images/mvt_change.jpg){ width=350px }

## 'Random walks'
El modelo anterior ciertamente reduce la complejidad para resolver este dilema,
sin embargo:

1. Asumen pasividad del recurso a consumir
2. Asumen un conocimiento del agente bastante elevado y de largo alcance
3. Evidencia empirica contra las predecciones del modelo
[@jesmerStatedependentBehaviorAlters2017] 

La alternativa a esto son modelos estocasticos que recaen, principalmente, en
las propiedades inherentes del ambiente 

## 'Random walks'

Una caminata o paseo aleatorio es la trayectoria resultante de tomar sucesivos
pasos aleatorios en un espacio determinado. Este tipo de modelos es altamente
utilizado en el campo de la etología para describir el compormiento de forrajeo.

- Uno de los modelos principales que se utilizan son las 'Levy-walks'.

## Levy-walks

- Una 'Lévy-walk' es una caminata aleatoria, dónde:

1. El tamaño del paso esta definido por una distribución de probabilidad tipo
   Lévy: colas anchas, describe la frecuencia para un largo de paso mayor a 0
   
![Distribución Lévy](/home/nicoluarte/defensa-tesis/images/levy.png){
width=150px }

## Levy-walks

2. La dirección del paso se determina de una distribución uniforme para cada
   posible dirección
   
![Para un espacio 2D, a = 0, b = 2*pi radianes](/home/nicoluarte/defensa-tesis/images/uniform.png){width=200px}

## Levy-walks

![Ejemplo de caminata Lèvy](/home/nicoluarte/defensa-tesis/images/levysample.png){width=200px}

## Levy-walks

Razones de proponer este modelo:

1. Patron observados en gran cantidad de animales [@bartumeusLEVYPROCESSESANIMAL2007a], incluido humanos [@raichlenEvidenceLevyWalk2013] 
2. Son robustas optimizando busquedas en distintos tipos de ambientes [@wosniackEvolutionaryOriginsLevy2017] 
3. Requieren solo limitadas capacidades de procesamiento por parte del organismo
4. Por lo anteior, se perfilan como buen candidato para haber sido producto de selecciòn natural

## Un caso de co-opción

Co-opcion es un concepto evolutivo, que describe como ciertos rasgos que evolucionaron dando lugar a una funcion particular, luego cambian su funcion sin necesidad de una modificacion estructural. El fenomeno de co-opciòn es frecuente y observado, tambien, a nivel de comportamiento [@mclennanConceptCooptionWhy2008]

- La hipotesis sostiene que los rasgos que sustentaron el forrajeo fueron co-optados para la funciòn de busqueda semantica [@hillsExplorationExploitationSpace2015] 

## Selección natural de estructuras, implementación neural

Ya que la funcion de forrajeo es aun utilizada por humanos, es de esperar, si se trata de un caso de co-opcion, efectivamente las mismas estructuras sostengan ambas funciones, presentando, tambien, las mismas estrategias.

- Para ello determinar cuales son las estructuras u organos subyacentes a la funcion de forrajeo es el primer paso en revisar esta hipotesis

## Selección natural de estructuras, implementación neural

Unas de las principales estructuras en regular esto serìa el Locus Coeruleus al tener un rol fundamental en soportar los mecánismos de exploración-explotación [@aston-jonesAdaptiveGainRole2005b] 


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

## Implementacion neural

Debido a la alta conectividad del cerebro, muchas estructuras aportan un rol, indirecto tales como la amigdala y el cuerpo estriado a traves de la corteza orbito frontal [@aston-jonesAdaptiveGainRole2005b]. Por lo anterior, me he limitado ha mencionar lo mas 'nuclear'

## Aumento de complejidad, inputs internos

Una de las dificultades en observar las funciones que controlan la explotacion-exploracion, es que estos procesos parecen ser dependiente del estado del organismo.

- Se ha observado que un estado de nutricion deficitario genera un sesgo hacia explotacion [@corrales-carvajalInternalStatesDrive2016] 
- De manera similar el stress parece inducir un sesgo hacia explotacion [@grahamStressImpairsOptimal2010] 
- Esto ha sido observado igualmente en humanos [@lenowChronicAcuteStress2017] 

Por lo tanto, en un modelo mas exhaustivo todas las estructuras relacionadas con lo anterior debiesen ser incluidas.


## Co-opción un resumen

- Existe una gran presencia de este tipo de estrategia a lo largo de
muchas especies [@hillsExplorationExploitationSpace2015]

- Esta estrategia parece ser óptima (Lèvy-walks) e independiente de la escala del ambiente
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
  
