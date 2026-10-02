---
id: "8256"
title: "Deux groupes de même somme"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [principe-des-tiroirs, sous-ensembles, somme, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe B"
  reference: "PolycopieV1-1.pdf, chapitre IV « Groupe B », première partie, « Principe des tiroirs, récurrence » (Yohann D'Anello), exercice 13"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

On choisit $10$ entiers deux à deux distincts entre $1$ et $100$.

Montrer qu'on peut en extraire deux groupes **disjoints** et non vides ayant la même somme.

(Disjoints veut dire qu'aucun des dix nombres ne figure dans les deux groupes à la fois. Les
deux groupes n'ont pas besoin d'utiliser tous les nombres choisis.)

## Hints

1. Oublie un instant la condition « disjoints » et cherche seulement deux groupes de même
   somme, quitte à ce qu'ils se chevauchent.
2. Combien de groupes non vides peut-on former à partir de $10$ nombres ?
3. Entre quelles valeurs se trouve la somme d'un tel groupe ? Le maximum se produit quand les
   dix nombres sont les plus grands possibles.
4. Compare les deux nombres obtenus. Que dit le principe des tiroirs ?
5. Une fois deux groupes de même somme obtenus, comment les rendre disjoints ?

## Solution

**Étape 1 : on compte les groupes.**

Appelons $x_1, \ldots, x_{10}$ les dix nombres choisis. Un « groupe » est une partie non vide de
$\{x_1, \ldots, x_{10}\}$. Il y en a

$$2^{10} - 1 = 1023 .$$

(Chacun des dix nombres est pris ou non : $2^{10}$ possibilités, dont on retire le groupe vide.)

**Étape 2 : on encadre les sommes.**

La somme d'un groupe vaut au moins $1$, puisque tous les nombres sont des entiers au moins
égaux à $1$ et que le groupe n'est pas vide.

Elle vaut au plus la somme des dix nombres, elle-même au plus la somme des dix plus grands
entiers disponibles :

$$91 + 92 + \cdots + 100 = \frac{(91 + 100) \times 10}{2} = 955 .$$

Une somme de groupe est donc un entier compris entre $1$ et $955$ : il y a au plus $955$
valeurs possibles.

**Étape 3 : le principe des tiroirs.**

On a $1023$ groupes et seulement $955$ valeurs de somme possibles. Comme
$1023 > 955$, deux groupes différents $A$ et $B$ ont forcément la même somme :

$$\mathrm{somme}(A) = \mathrm{somme}(B), \qquad A \ne B .$$

**Étape 4 : on les rend disjoints.**

$A$ et $B$ peuvent avoir des éléments en commun. Retirons-les des deux côtés : posons

$$A' = A \setminus B \qquad \text{et} \qquad B' = B \setminus A .$$

Par construction $A'$ et $B'$ sont disjoints. Et comme on a retiré exactement les mêmes nombres
des deux sommes (ceux de $A \cap B$), on a encore

$$\mathrm{somme}(A') = \mathrm{somme}(A) - \mathrm{somme}(A \cap B) = \mathrm{somme}(B) -
\mathrm{somme}(A \cap B) = \mathrm{somme}(B') .$$

**Il reste à vérifier qu'ils ne sont pas vides.** Supposons $A'$ vide, c'est-à-dire
$A \subseteq B$. Alors

$$\mathrm{somme}(B') = \mathrm{somme}(B) - \mathrm{somme}(A) = 0 ,$$

donc $B'$ est vide aussi (tous les nombres sont strictement positifs), donc $B \subseteq A$,
donc $A = B$ : contradiction. Le même argument vaut en échangeant $A$ et $B$.

**Conclusion.**

Les groupes $A'$ et $B'$ sont disjoints, non vides, et ont la même somme.

$$\blacksquare$$

## Going further

1. Où le raisonnement casse-t-il si l'on ne choisit que $9$ nombres entre $1$ et $100$ ?
   Comparer $2^9 - 1$ et la plus grande somme possible.
2. Avec $10$ nombres entre $1$ et $100$, l'argument laisse une marge : $1023$ contre $955$.
   Jusqu'à quelle borne $N$ pourrait-on remplacer $100$ en gardant $10$ nombres ?
3. Le raisonnement prouve que deux tels groupes **existent**, sans dire lesquels. Sur l'exemple
   $1, 2, 4, 8, 16, 32, 64, 65, 66, 67$, en trouver deux à la main.
