---
id: "4422"
title: "Dix chiffres qui se suivent de 1"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [denombrement, chiffres, alternance]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Math Kangaroo"
  reference: "Handout-678-781.pdf, problème 24 (réponse dans Handout-679-781.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-678-781.pdf"
---

## Statement

Combien y a-t-il de nombres de dix chiffres, écrits uniquement avec les chiffres $1$, $2$ et
$3$, dans lesquels deux chiffres voisins diffèrent toujours d'exactement $1$ ?

Par exemple, $2321232123$ convient, mais $1233212321$ ne convient pas (il y a deux $3$ côte à
côte).

## Hints

1. Prends deux chiffres voisins. Peuvent-ils être tous les deux égaux à $2$ ? Peuvent-ils être
   tous les deux pris dans $\{1 ; 3\}$ ?
2. Tu devrais trouver que les $2$ et les « non-$2$ » alternent forcément. Combien y a-t-il de
   façons de placer les $2$ ?
3. Une fois les positions des $2$ fixées, combien de choix reste-t-il pour chacune des autres
   positions ?

## Solution

**Les $2$ alternent avec le reste.** Regardons deux chiffres voisins.

- Ils ne peuvent pas être tous les deux égaux à $2$, car alors leur différence serait $0$.
- Ils ne peuvent pas être tous les deux dans $\{1 ; 3\}$ : la différence serait $0$ (deux $1$ ou
  deux $3$) ou $2$ (un $1$ et un $3$), jamais $1$.

Donc, parmi deux chiffres voisins, il y a **exactement un $2$**. Autrement dit, les positions
occupées par un $2$ et celles occupées par un $1$ ou un $3$ alternent le long du nombre.

**Deux cas.** Puisque les $2$ occupent une position sur deux, il n'y a que deux possibilités :

- **Cas A :** les $2$ sont aux positions $1, 3, 5, 7, 9$ ; les positions $2, 4, 6, 8, 10$
  portent chacune un $1$ ou un $3$.
- **Cas B :** les $2$ sont aux positions $2, 4, 6, 8, 10$ ; les positions $1, 3, 5, 7, 9$
  portent chacune un $1$ ou un $3$.

**On compte.** Dans chaque cas, les cinq positions libres se remplissent indépendamment les unes
des autres, avec $2$ choix chacune (un $1$ ou un $3$), et **toutes** ces façons conviennent :
chaque chiffre libre est voisin uniquement de $2$, et $|1 - 2| = |3 - 2| = 1$. Cela fait

$$2^5 = 32 \text{ nombres dans chaque cas.}$$

Il faut aussi vérifier qu'aucun de ces nombres ne commence par $0$ : c'est évident, on n'utilise
que les chiffres $1$, $2$ et $3$.

**Le total.**

$$32 + 32 = 64.$$

**Il y a $64$ tels nombres.**
