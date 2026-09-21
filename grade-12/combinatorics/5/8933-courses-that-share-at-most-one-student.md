---
id: "8933"
title: "Des cours qui ne peuvent pas se ressembler"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [double-comptage, coefficients-binomiaux, majoration, telescopage]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2026, Groupe C"
  reference: "Poly-Valbonne-2026.pdf, chapitre V « Groupe C », entraînement de fin de parcours, exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

Dans un stage de mathématiques, il y a $n$ élèves et $k$ cours. Chaque élève s'inscrit à autant de cours qu'il le souhaite, et chaque cours compte au moins $2$ inscrits.

On observe la règle suivante :

> si deux cours ont au moins $2$ élèves inscrits en commun, alors ils n'ont pas le même nombre d'inscrits.

Montrer que

$$k \leq (n-1)^2.$$

## Hints

1. Commencez par retourner l'énoncé : que dit la règle de deux cours qui ont **le même** nombre d'inscrits ?
2. Vous obtiendrez : deux cours de même taille partagent au plus un élève. Autrement dit, une **paire** d'élèves ne peut apparaître ensemble que dans un seul cours d'une taille donnée.
3. Fixez une taille $\ell$ et notez $k_{\ell}$ le nombre de cours ayant exactement $\ell$ inscrits. Comptez les paires d'élèves qui apparaissent dans ces cours-là.
4. Vous trouverez une majoration de $k_{\ell}$. Il faudra ensuite sommer sur toutes les tailles possibles, de $2$ à $n$.
5. La somme $\displaystyle\sum_{\ell=2}^{n} \dfrac{1}{\ell(\ell-1)}$ se calcule exactement : remarquez que $\dfrac{1}{\ell(\ell-1)} = \dfrac{1}{\ell-1} - \dfrac{1}{\ell}$.

## Solution

### Étape 1 : reformuler la règle

La règle de l'énoncé dit : « au moins $2$ élèves en commun $\Rightarrow$ tailles différentes ». Sa contraposée dit :

> **deux cours ayant le même nombre d'inscrits ont au plus un élève en commun.**

C'est sous cette forme qu'on va l'utiliser.

### Étape 2 : compter les paires d'élèves, taille par taille

Fixons un entier $\ell$ compris entre $2$ et $n$, et notons $k_{\ell}$ le nombre de cours ayant exactement $\ell$ inscrits.

Dans un cours de $\ell$ inscrits, on peut former

$$\binom{\ell}{2} = \dfrac{\ell(\ell-1)}{2}$$

paires d'élèves inscrits ensemble à ce cours.

D'après l'étape 1, une même paire d'élèves ne peut pas se retrouver ensemble dans deux cours différents de taille $\ell$ : cela ferait deux élèves en commun entre deux cours de même taille. Donc, quand on parcourt les $k_{\ell}$ cours de taille $\ell$ et qu'on liste toutes les paires qu'ils contiennent, **on ne rencontre jamais deux fois la même paire**.

Or le nombre total de paires d'élèves disponibles est $\displaystyle\binom{n}{2}$. On en déduit

$$k_{\ell} \binom{\ell}{2} \leq \binom{n}{2}, \qquad \text{c'est-à-dire} \qquad k_{\ell} \leq \dfrac{n(n-1)}{\ell(\ell-1)}.$$

### Étape 3 : sommer sur toutes les tailles

Chaque cours a entre $2$ et $n$ inscrits, donc

$$k = \sum_{\ell=2}^{n} k_{\ell} \leq n(n-1)\sum_{\ell=2}^{n} \dfrac{1}{\ell(\ell-1)}.$$

Cette somme se calcule exactement. En effet

$$\dfrac{1}{\ell(\ell-1)} = \dfrac{\ell - (\ell-1)}{\ell(\ell-1)} = \dfrac{1}{\ell-1} - \dfrac{1}{\ell},$$

et la somme se télescope : tous les termes intermédiaires se suppriment deux à deux et il ne reste que le premier et le dernier,

$$\sum_{\ell=2}^{n} \left(\dfrac{1}{\ell-1} - \dfrac{1}{\ell}\right) = \dfrac{1}{1} - \dfrac{1}{n} = \dfrac{n-1}{n}.$$

### Conclusion

$$k \leq n(n-1) \times \dfrac{n-1}{n} = (n-1)^2.$$

$$\boxed{k \leq (n-1)^2.}$$

*Le point de méthode.* Ce raisonnement est un **double comptage** : on compte les paires d'élèves de deux façons, une fois en regardant les cours (ce qui fait apparaître $k_{\ell}$) et une fois en regardant les élèves (ce qui donne $\binom{n}{2}$). C'est la technique standard pour majorer un nombre d'objets soumis à une contrainte d'intersection. Découper d'abord par taille était indispensable, parce que la contrainte de l'énoncé ne s'applique qu'entre cours de même taille.

## Going further

1. La majoration $(n-1)^2$ est-elle atteinte ? Essayez de construire beaucoup de cours pour $n = 3$, puis pour $n = 4$.
2. Que devient la majoration si la règle est remplacée par « deux cours quelconques ont au plus un élève en commun », sans condition de taille ?
