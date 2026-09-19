---
id: "2607"
title: "Les parties de quinze nombres dont la somme est divisible par 7"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [denombrement, bijection, congruence, coefficient-binomial]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School Circle, AMC Problem Session"
  reference: "Handout-456-552.pdf, exercice 13 (réponse donnée dans le même fichier)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-456-552.pdf"
---

## Statement

Soit $S = \{1, 2, 3, \ldots, 2002\}$.

On dit qu'une partie de $S$ ayant exactement $15$ éléments est **excellente** si la somme de ses éléments est divisible par $7$.

Combien $S$ a-t-elle de parties excellentes ?

## Hints

1. Combien $S$ a-t-il de parties à $15$ éléments en tout ? Range-les en sept tas, selon le reste de leur somme dans la division par $7$. Si tu arrivais à montrer que les sept tas ont la même taille, tu aurais fini.
2. Pour montrer que deux tas ont la même taille, il suffit de fabriquer une **bijection** de l'un sur l'autre.
3. Essaie de décaler tous les éléments de $1$ : $\{3, 7, 10\}$ devient $\{4, 8, 11\}$. De combien la somme augmente-t-elle ? Que faire de $2002$, qui sortirait de $S$ ?
4. Décide que $2002$ devient $1$. La somme ne change alors plus de $+15$, mais de $15 - 2002$. Calcule ces deux nombres modulo $7$. Regarde d'abord $2002$ modulo $7$.

## Solution

**L'idée : faire tourner les sept tas les uns sur les autres.**

Pour $r \in \{0, 1, 2, 3, 4, 5, 6\}$, notons $E_r$ l'ensemble des parties de $S$ à $15$ éléments dont la somme est congrue à $r$ modulo $7$. Toute partie à $15$ éléments est dans exactement un des $E_r$, donc
$$|E_0| + |E_1| + \dots + |E_6| = \binom{2002}{15}.$$

Les parties excellentes sont celles de $E_0$. Nous allons montrer que les sept ensembles $E_r$ ont **tous le même nombre d'éléments**.

**La transformation.**

Définissons d'abord une application $\sigma$ de $S$ dans $S$ :
$$\sigma(k) = k + 1 \quad \text{si } 1 \leq k \leq 2001, \qquad \sigma(2002) = 1 .$$

Autrement dit, on décale tout de un cran, et $2002$ revient au début. C'est une bijection de $S$ sur $S$ (chaque élément de $S$ a exactement un antécédent).

À toute partie $A \subset S$ à $15$ éléments, associons
$$\varphi(A) = \sigma(A) = \{\sigma(k) \ : \ k \in A\}.$$

Comme $\sigma$ est une bijection de $S$, l'ensemble $\varphi(A)$ est encore une partie de $S$ à $15$ éléments, et $\varphi$ est une **bijection** de l'ensemble des parties à $15$ éléments sur lui-même : sa réciproque est donnée par la même construction avec le décalage inverse.

**Comment la somme change.**

Notons $s(A)$ la somme des éléments de $A$. Deux cas :

- **Si $2002 \notin A$**, chaque élément augmente de $1$, et il y en a $15$, donc
  $$s(\varphi(A)) = s(A) + 15 .$$
- **Si $2002 \in A$**, les $14$ autres éléments augmentent de $1$, tandis que $2002$ devient $1$, soit une variation de $1 - 2002$. Donc
  $$s(\varphi(A)) = s(A) + 14 + (1 - 2002) = s(A) + 15 - 2002 .$$

On peut écrire les deux cas d'un coup : $s(\varphi(A)) = s(A) + 15 - 2002 \cdot \varepsilon$, où $\varepsilon$ vaut $1$ si $2002 \in A$ et $0$ sinon.

**Le calcul modulo 7.**

C'est ici que tout se joue :
$$2002 = 7 \times 286, \qquad \text{donc} \qquad 2002 \equiv 0 \pmod 7 .$$

Le terme $-2002\,\varepsilon$ disparaît donc modulo $7$, quel que soit le cas. Et $15 = 7 \times 2 + 1$, donc $15 \equiv 1 \pmod 7$. Dans les **deux** cas :
$$s(\varphi(A)) \equiv s(A) + 1 \pmod 7 .$$

**Conclusion.**

L'application $\varphi$ envoie donc $E_r$ dans $E_{r+1}$ (les indices étant pris modulo $7$). Comme $\varphi$ est une bijection dont la réciproque diminue de même la somme de $1$ modulo $7$, elle réalise une **bijection de $E_r$ sur $E_{r+1}$**. Par conséquent
$$|E_0| = |E_1| = |E_2| = \dots = |E_6| .$$

Ces sept nombres égaux ont pour somme $\binom{2002}{15}$, donc chacun vaut

$$\boxed{\,|E_0| = \frac{1}{7}\binom{2002}{15}\,.}$$

**Il y a $\dfrac{1}{7}\binom{2002}{15}$ parties excellentes.** (Au passage, on vient de démontrer que $\binom{2002}{15}$ est divisible par $7$.)

## Going further

Sur un exemple assez petit pour être compté à la machine, on peut vérifier le mécanisme : dans $S = \{1, \ldots, 14\}$, les parties à $3$ éléments dont la somme est divisible par $7$ sont au nombre de $52$, et $\binom{14}{3} = 364 = 7 \times 52$. Ce qui fait marcher l'argument, c'est que $14$ est divisible par $7$ et que $3$ ne l'est pas.
