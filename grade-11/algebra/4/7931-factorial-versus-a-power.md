---
id: "7931"
title: "La factorielle et la puissance"
grade: 11
theme: algebra
difficulty: 4
duration_min: 30
tags: [factorielle, inegalite, appariement, identite remarquable]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, test de mi-parcours"
  reference: "stage_ete_2016.pdf, test de mi-parcours du samedi 20 août, Groupe B, exercice 3 (énoncé p. 109, solution p. 109). Le polycopié conclut par l'inégalité arithmético-géométrique à n termes ; la preuve donnée ici n'utilise qu'une identité remarquable."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Soit $n \ge 1$ un entier. Montrer que

$$n! \ \le \ \left(\frac{n+1}{2}\right)^{n} .$$

*Rappel : $n! = 1 \times 2 \times 3 \times \cdots \times n$.*

## Hints

1. Vérifie l'inégalité pour $n = 1$, $n = 2$, $n = 3$ pour prendre confiance.
2. Plutôt que de majorer $n!$ directement, regarde $(n!)^2$ : il y a alors deux copies de chaque facteur à utiliser.
3. Écris la seconde copie à l'envers : $n! = n \times (n-1) \times \cdots \times 1$. Apparie le $k$-ième facteur de la première copie avec le $k$-ième de la seconde.
4. Le produit d'une paire vaut $k(n+1-k)$. Majore-le : c'est un produit de deux nombres dont la **somme** est fixée.

## Solution

**L'idée : apparier les facteurs de $n!$ deux à deux, en commençant par les deux bouts.**

**Étape 1 : on regarde le carré.**

Écrivons $n!$ de deux façons, une fois dans l'ordre croissant et une fois dans l'ordre décroissant :

$$n! = 1 \times 2 \times \cdots \times n \qquad \text{et} \qquad n! = n \times (n-1) \times \cdots \times 1 .$$

En multipliant les deux et en regroupant terme à terme, le $k$-ième facteur de la première liste est $k$ et le $k$-ième de la seconde est $n+1-k$. Donc

$$(n!)^2 = \prod_{k=1}^{n} k\,(n+1-k) .$$

**Étape 2 : on majore chaque paire.**

Fixons $k$ entre $1$ et $n$ et posons $u = k$, $v = n+1-k$. Ces deux nombres ont une **somme constante** : $u + v = n+1$.

Or, pour deux nombres de somme fixée $s$, le produit est maximal quand ils sont égaux. En effet

$$uv = \frac{(u+v)^2 - (u-v)^2}{4} = \frac{(n+1)^2 - (u - v)^2}{4} \le \frac{(n+1)^2}{4} = \left(\frac{n+1}{2}\right)^2 .$$

Donc, pour tout $k$,

$$k\,(n+1-k) \le \left(\frac{n+1}{2}\right)^2 .$$

**Étape 3 : on multiplie les $n$ majorations.**

Tous les facteurs sont strictement positifs, on peut donc multiplier les inégalités :

$$(n!)^2 = \prod_{k=1}^{n} k\,(n+1-k) \ \le \ \left(\left(\frac{n+1}{2}\right)^2\right)^{n} = \left(\frac{n+1}{2}\right)^{2n} .$$

**Étape 4 : on prend la racine carrée.**

Les deux membres sont positifs, et la fonction racine carrée conserve l'ordre :

$$n! \le \left(\frac{n+1}{2}\right)^{n} .$$

C'est exactement ce qu'il fallait démontrer.

## Going further

Quand y a-t-il égalité ? Il faudrait que chaque majoration de l'étape 2 en soit une, donc que $u = v$ pour tout $k$, c'est-à-dire $k = n+1-k$ pour tout $k$ de $1$ à $n$. Cela n'est possible que si $n = 1$, et en effet $1! = 1 = \left(\frac{2}{2}\right)^1$. Dès $n = 2$ l'inégalité est stricte : $2! = 2 < \left(\frac{3}{2}\right)^2 = 2{,}25$.
