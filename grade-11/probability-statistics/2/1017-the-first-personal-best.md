---
id: "1017"
title: "Le premier record personnel"
grade: 11
theme: probability-statistics
difficulty: 2
duration_min: 25
tags: [independance, arbre, evenement-contraire, suite-geometrique, probabilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Did Dream cheat?"
  reference: "Handout-4807-4988.pdf, exercice 20"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4807-4988.pdf"
---

## Statement

À chaque course qu'elle dispute, une coureuse a la probabilité $q = \text{0,3}$ d'améliorer son record personnel. On admet que les courses sont indépendantes les unes des autres et que cette probabilité ne change pas.

1. Quelle est la probabilité qu'elle améliore son record pour la **première fois** lors de sa troisième course ?
2. Donner la probabilité que la première amélioration ait lieu lors de la $n$-ième course.
3. Quelle est la probabilité qu'elle améliore son record **au moins une fois** au cours de ses cinq premières courses ?
4. Combien de courses faut-il pour que cette probabilité dépasse $\text{0,95}$ ?

## Hints

1. « Pour la première fois à la troisième course », cela impose quelque chose aux deux premières courses. Quoi exactement ?
2. Les courses étant indépendantes, les probabilités se multiplient le long d'une branche de l'arbre.
3. Pour la question 3, passez par l'événement contraire : « aucune amélioration en cinq courses ».
4. Pour la question 4, il s'agit de résoudre $\text{0,7}^{\,n} < \text{0,05}$. On peut y arriver à la calculatrice en essayant quelques valeurs.

## Solution

Notons $q = \text{0,3}$ la probabilité d'améliorer son record à une course donnée, et donc $1 - q = \text{0,7}$ la probabilité de ne pas l'améliorer.

### Question 1

« La première amélioration a lieu à la troisième course » signifie exactement :

- pas d'amélioration à la première course (probabilité $\text{0,7}$) ;
- pas d'amélioration à la deuxième course (probabilité $\text{0,7}$) ;
- amélioration à la troisième course (probabilité $\text{0,3}$).

Les courses sont indépendantes, donc les probabilités se multiplient :
$$P = \text{0,7} \times \text{0,7} \times \text{0,3} = \text{0,147}.$$

Un peu moins de $15\,\%$.

### Question 2

Le même raisonnement avec $n-1$ échecs suivis d'un succès donne
$$P(\text{première amélioration à la course } n) = (1-q)^{\,n-1} \, q = \text{0,7}^{\,n-1} \times \text{0,3}.$$

Cette suite de probabilités est **géométrique**, de raison $\text{0,7}$ : chaque terme vaut $70\,\%$ du précédent. La première course est donc de loin la plus probable, et les chances décroissent ensuite régulièrement.

$$P_1 = \text{0,3}, \quad P_2 = \text{0,21}, \quad P_3 = \text{0,147}, \quad P_4 \approx \text{0,103}, \quad P_5 \approx \text{0,072}.$$

*(Cette loi porte un nom : la **loi géométrique** de paramètre $q$.)*

### Question 3

Passons par l'événement contraire. « Aucune amélioration en cinq courses » demande cinq échecs consécutifs :
$$P(\text{aucune}) = \text{0,7}^{5} = \text{0,16807}.$$

Donc
$$P(\text{au moins une}) = 1 - \text{0,7}^{5} = \text{0,83193} \approx \text{0,832}.$$

*(On peut vérifier en additionnant : $\text{0,3} + \text{0,21} + \text{0,147} + \text{0,1029} + \text{0,07203} = \text{0,83193}$. Les deux chemins donnent bien le même résultat.)*

### Question 4

On cherche le plus petit entier $n$ tel que
$$1 - \text{0,7}^{\,n} > \text{0,95}, \qquad \text{c'est-à-dire} \qquad \text{0,7}^{\,n} < \text{0,05}.$$

À la calculatrice :
$$\text{0,7}^{8} \approx \text{0,0576} > \text{0,05}, \qquad \text{0,7}^{9} \approx \text{0,0404} < \text{0,05}.$$

Il faut donc $n = 9$ courses.

**Conclusion.** La probabilité de battre son record pour la première fois à la troisième course vaut $\text{0,147}$ ; à la $n$-ième course, elle vaut $\text{0,7}^{\,n-1} \times \text{0,3}$. En cinq courses, la coureuse a environ $83\,\%$ de chances d'avoir battu son record au moins une fois, et il lui faut $9$ courses pour dépasser $95\,\%$.

## Going further

1. Montrer que $P_1 + P_2 + \cdots + P_n = 1 - (1-q)^{n}$, en utilisant la somme des termes d'une suite géométrique. Que vaut cette somme quand $n$ devient très grand ? Interpréter.
2. Au bout de combien de courses la probabilité d'avoir battu son record dépasse-t-elle $\frac12$ ? (Attention, ce n'est pas $\frac{1}{q} \approx \text{3,3}$.)
3. On peut montrer que le nombre **moyen** de courses avant la première amélioration vaut $\frac{1}{q}$. Vérifier numériquement en calculant $\sum_{n=1}^{40} n \, P_n$ pour $q = \text{0,3}$.
4. Une deuxième coureuse a $q = \text{0,1}$. Combien de courses lui faut-il pour dépasser $95\,\%$ ? Comparer au rapport des deux valeurs de $q$.
