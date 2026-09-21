---
id: "8845"
title: "Quelqu'un a exactement un ami"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 35
tags: [principe de lextremum, amities, nombre damis, principe des tiroirs]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Combinatoire : Principe de l'extremum » (Théo et Noam), exercice 11, p. 116"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Dans un groupe fini de personnes, l'amitié est réciproque et personne n'est ami avec soi-même. On suppose qu'il existe au moins une paire d'amis, et que :

> deux personnes ayant **le même nombre d'amis** n'ont **aucun ami commun**.

Montrer qu'il existe dans le groupe une personne ayant exactement **un** ami.

## Hints

1. Le groupe est fini : il existe donc une personne ayant le plus grand nombre d'amis. Appelle-la $E$ et note $n$ son nombre d'amis.
2. Les amis de $E$ ont tous une chose en commun : $E$ lui-même. Que dit alors l'hypothèse à leur sujet ?
3. Combien d'amis chacun des amis de $E$ peut-il avoir ? Donne une borne inférieure et une borne supérieure.
4. Tu as $n$ personnes dont les nombres d'amis sont deux à deux différents, tous compris dans un intervalle de $n$ valeurs. Conclus.

## Solution

### On prend la personne la plus entourée

Le groupe est fini, donc il existe une personne ayant le plus grand nombre d'amis ; appelons-la $E$, et notons $n$ son nombre d'amis.

Comme il existe au moins une paire d'amis dans le groupe, le maximum $n$ est au moins $1$.

### Les amis de $E$ ont des nombres d'amis tous différents

Soient $X$ et $Y$ deux amis de $E$, distincts. Ils ont un ami commun : $E$. D'après l'hypothèse, ils ne peuvent donc pas avoir le même nombre d'amis.

Les $n$ amis de $E$ ont donc des nombres d'amis **deux à deux différents**.

### On encadre ces nombres

Soit $X$ un ami de $E$.

- $X$ est ami avec $E$, donc $X$ a au moins $1$ ami.
- $E$ a le plus grand nombre d'amis du groupe, donc $X$ en a au plus $n$.

Le nombre d'amis de $X$ appartient donc à l'ensemble
$$\{1, \; 2, \; \dots, \; n\} ,$$
qui contient exactement $n$ valeurs.

### On conclut

Nous avons $n$ personnes (les amis de $E$), dont les nombres d'amis sont deux à deux différents, et tous ces nombres sont dans un ensemble de $n$ valeurs.

Autant de personnes que de valeurs, et toutes différentes : **chaque valeur est prise exactement une fois**. En particulier la valeur $1$ est prise : l'un des amis de $E$ a exactement un ami.

**Conclusion.** Il existe dans le groupe une personne ayant exactement un ami (et c'est même un ami de la personne la plus entourée).

### Un exemple pour se convaincre

Prenons une « étoile » : une personne centrale $E$ amie avec $X_1$, et $X_1$ amie avec personne d'autre. Ici $E$ a $1$ ami, $X_1$ a $1$ ami, et ils ont le même nombre d'amis... mais ont-ils un ami commun ? Non : les amis de $E$ sont $\{X_1\}$, ceux de $X_1$ sont $\{E\}$, l'intersection est vide. L'hypothèse est bien respectée, et $X_1$ a exactement un ami.

## Going further

Montrer que si la personne la plus entourée a $n \geqslant 2$ amis, alors il existe aussi dans le groupe une personne ayant exactement $2$ amis, une personne ayant exactement $3$ amis, et ainsi de suite jusqu'à $n$.
