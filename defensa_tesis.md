---
title: "Underlying strategies of semantic search"
author: Nicolás Luarte
date: 06 enero 2020
output: 
    beamer_presentation:
theme: "Boadilla"
---
# Intro
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
  se produce un retraso en esta producción.
  
## Estrategias de búsqueda basadas en reglas
- ¿De qué tipo son las posibles estrategias de búsqueda
### Comportamiento basado en reglas
Se desprende la teoría de forrajeo óptimo 'optimal foraging theory' [@bartumeusOptimalSearchBehavior2009a] y considera 4 problemas fundamentales que enfrenta el agente en búsqueda de 'alimento': 

1. qué comer
2. qué tipo de parcela buscar
3. cúando salir de una parcela
4. cómo moverse entre parcelas

La teoría supone que el agente, en estos 4 aspectos, toma la decisión para optimizar cantidad de energía adquirida por unidad de tiempo usada en el forrajeo. La regla para tomar dichas decisiones se determina por el teorema de valor marginal ('margina value theorem') [@charnovOptimalForagingMarginal1976a] 

## Marginal value theorem

![Tiempo óptimo de salida](/home/nicoluarte/defensa_tesis/images/mvt.png){ width=250px }

## Marginal value theorem

Determinación del tiempo en la parcela

- $h_{i}$ $\leftarrow$ tiempo de permanencia óptimo en la parcela i
- $S_{i}$ $\leftarrow$ nivel de recursos en la parcela i
- $t_{s}$ $\leftarrow$ tiempo de viaje promedio entre dos parcelas
- $S_{a}$ $\leftarrow$ nivel de recursos a través de las parcelas
- $K$ $\leftarrow$ constante que representa que tan pronunciada es la pendiente de consumo al tiempo 0 en cada parcela

![$h_{i}* = S_{i}\sqrt{\frac{t_{s}}{S_{a} K}}$](/home/nicoluarte/defensa_tesis/images/mvt_change.jpg){ width=170px }


## Estrategias de búsqueda basadas en 'random walks'
- Levy walks
- Estrategias evolutivas [@radicchiEvolutionOptimalLevyflight2012] 
- Estrategias emergentes

## Implementaciones neurales de las estrategias de búsqueda
LC

## Co-opción de las estrategias de búsqueda
Centrarse en argumentos evolutivos, poner todos los peros



## Conclusiones
- recapitulación
- problemas
- falta de investigacióne empirica
- pasos futuros

  
## Referencias
  
