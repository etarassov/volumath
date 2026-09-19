---
id: "2805"
title: "Plus lourd à droite qu'à gauche"
grade: 11
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [denombrement, permutations, symetrie, cas-particuliers]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School I, Relays"
  reference: "Handout-1301-1322.pdf, problème 20 (réponse dans Handout-1302-1322.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1301-1322.pdf"
---

## Statement

On range les cinq nombres $1, 2, 3, 4, 5$ dans un ordre quelconque : on obtient une liste $(a_1, a_2, a_3, a_4, a_5)$.

On dit que cette liste est **lourde à droite** lorsque

$$a_1 + a_2 < a_4 + a_5 .$$

Le nombre du milieu, $a_3$, ne joue aucun rôle dans la condition.

Combien y a-t-il de listes lourdes à droite ?

## Hints

1. Combien y a-t-il de listes en tout ?
2. Au lieu de compter directement, compare les listes lourdes à droite et les listes lourdes à gauche (celles où $a_1 + a_2 > a_4 + a_5$). Peux-tu passer des unes aux autres ?
3. Échanger le bloc $(a_1, a_2)$ avec le bloc $(a_4, a_5)$ transforme une liste en une autre liste, et fait exactement basculer l'inégalité. Il y a donc **autant** de listes des deux sortes.
4. Il reste à compter les listes « équilibrées », celles où $a_1 + a_2 = a_4 + a_5$.
5. La somme des cinq nombres vaut $15$. Si les deux bouts ont la même somme $S$, que vaut $2S + a_3$ ? Qu'en déduire sur la parité de $a_3$ ?

## Solution

**Le plan.**

Il y a $5! = 120$ listes en tout. Classons-les en trois familles :

- les listes **lourdes à droite** : $a_1 + a_2 < a_4 + a_5$ ;
- les listes **lourdes à gauche** : $a_1 + a_2 > a_4 + a_5$ ;
- les listes **équilibrées** : $a_1 + a_2 = a_4 + a_5$.

Ces trois familles n'ont aucune liste en commun et couvrent tout, donc leurs effectifs ont pour somme $120$.

**Première idée : les deux premières familles ont le même effectif.**

À toute liste $(a_1, a_2, a_3, a_4, a_5)$ associons la liste obtenue en échangeant les deux blocs extrêmes :

$$(a_1, a_2, a_3, a_4, a_5) \longmapsto (a_4, a_5, a_3, a_1, a_2).$$

C'est encore une liste des nombres $1$ à $5$, et appliquer deux fois cette transformation redonne la liste de départ : c'est donc un appariement parfait des $120$ listes entre elles.

Or cette transformation échange la somme de gauche et la somme de droite. Elle envoie donc les listes lourdes à droite sur les listes lourdes à gauche, et inversement. Les deux familles ont ainsi **le même nombre d'éléments**. Notons-le $L$, et notons $E$ le nombre de listes équilibrées :

$$2L + E = 120 .$$

**Deuxième étape : compter les listes équilibrées.**

Supposons $a_1 + a_2 = a_4 + a_5 = S$. Comme les cinq nombres sont $1, 2, 3, 4, 5$, leur somme vaut $15$, donc

$$2S + a_3 = 15 .$$

Le nombre $2S$ étant pair, $a_3$ doit être **impair** : $a_3 \in \{1, 3, 5\}$. Examinons les trois cas.

*Cas $a_3 = 1$.* Alors $2S = 14$, donc $S = 7$, et il faut partager $\{2, 3, 4, 5\}$ en deux paires de somme $7$. La seule façon est $\{2, 5\}$ et $\{3, 4\}$.

*Cas $a_3 = 3$.* Alors $S = 6$, et il faut partager $\{1, 2, 4, 5\}$ en deux paires de somme $6$ : seule possibilité, $\{1, 5\}$ et $\{2, 4\}$.

*Cas $a_3 = 5$.* Alors $S = 5$, et il faut partager $\{1, 2, 3, 4\}$ en deux paires de somme $5$ : seule possibilité, $\{1, 4\}$ et $\{2, 3\}$.

Dans chacun des trois cas, on a donc **un seul** partage en deux paires. Il reste à compter les listes qu'il fournit :

- choisir laquelle des deux paires occupe les positions $1$ et $2$ : $2$ façons ;
- ranger cette paire dans ces deux positions : $2$ façons ;
- ranger l'autre paire dans les positions $4$ et $5$ : $2$ façons.

Cela fait $2 \times 2 \times 2 = 8$ listes par cas, donc

$$E = 3 \times 8 = 24 .$$

**Le compte final.**

$$2L + 24 = 120 \quad \Longrightarrow \quad 2L = 96 \quad \Longrightarrow \quad L = 48 .$$

**Conclusion.** Il y a exactement $48$ listes lourdes à droite.

## Going further

1. Combien y a-t-il de listes vérifiant $a_1 + a_2 \leqslant a_4 + a_5$ ?
2. Reprendre le problème avec les nombres $1, 2, 3, 4, 5, 6, 7$ et la condition $a_1 + a_2 + a_3 < a_5 + a_6 + a_7$.
3. Avec les nombres $1$ à $6$ et la condition $a_1 + a_2 + a_3 < a_4 + a_5 + a_6$, le même raisonnement marche-t-il encore ? Combien de listes équilibrées trouve-t-on ?
