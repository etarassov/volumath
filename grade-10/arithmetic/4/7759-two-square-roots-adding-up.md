---
id: "7759"
title: "Deux racines carrées qui font √2009"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [racine-carree, irrationalite, decomposition-en-facteurs-premiers, carre-parfait]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, la muraille"
  reference: "stage_ete_2014.pdf, « La muraille », exercice 83 (niveau 2, une étoile). Le polycopié ne donne pas de solution."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Trouver tous les couples d'entiers strictement positifs $a$ et $b$ tels que

$$\sqrt{a} + \sqrt{b} = \sqrt{2009} .$$

## Hints

1. Commence par décomposer $2009$ en facteurs premiers. Le résultat est agréable.
2. Une fois $\sqrt{2009}$ écrit sous la forme $c\sqrt{d}$ avec $d$ sans facteur carré, essaie de deviner des solutions. Par exemple, que vaut $\sqrt{41} + \sqrt{1476}$ ?
3. Pour montrer qu'il n'y en a pas d'autres : isole $\sqrt{b}$, élève au carré, et regarde ce que cela impose à $\sqrt{2009\,a}$.
4. Utilise ensuite le fait suivant : si $N$ est un entier positif et $\sqrt{N}$ est un nombre rationnel, alors $N$ est un carré parfait.
5. Il te restera à comprendre quels entiers $a$ vérifient « $2009\,a$ est un carré parfait ». Regarde l'exposant de $41$ dans la décomposition de $a$.

## Solution

**Les solutions sont les six couples**

$$(41,\ 1476), \quad (164,\ 1025), \quad (369,\ 656), \quad (656,\ 369), \quad (1025,\ 164), \quad (1476,\ 41) .$$

### Étape 1 : on simplifie $\sqrt{2009}$

$$2009 = 7 \times 287 = 7 \times 7 \times 41 = 7^2 \times 41 ,$$

et $41$ est premier. Donc

$$\sqrt{2009} = 7\sqrt{41} .$$

### Étape 2 : $2009\,a$ doit être un carré parfait

Partons de $\sqrt{a} + \sqrt{b} = \sqrt{2009}$ et isolons $\sqrt{b}$ :

$$\sqrt{b} = \sqrt{2009} - \sqrt{a} .$$

Élevons au carré :

$$b = 2009 + a - 2\sqrt{2009\,a} ,$$

d'où

$$\sqrt{2009\,a} = \frac{2009 + a - b}{2} .$$

Le membre de droite est un nombre rationnel, puisque $a$ et $b$ sont entiers. Donc $\sqrt{2009\,a}$ est rationnel.

Or un entier positif dont la racine carrée est rationnelle est un carré parfait. Donc

$$2009\,a \text{ est un carré parfait} .$$

### Étape 3 : ce que cela impose à $a$

Écrivons $2009\,a = 7^2 \times 41 \times a$. Pour que ce nombre soit un carré parfait, il faut et il suffit que $41 \times a$ le soit, puisque $7^2$ en est déjà un.

Notons $\alpha$ l'exposant de $41$ dans la décomposition en facteurs premiers de $a$. Dans $41 \times a$, l'exposant de $41$ vaut $\alpha + 1$, et les exposants des autres nombres premiers sont ceux de $a$.

Un carré parfait a tous ses exposants pairs. Il faut donc :

- $\alpha + 1$ pair, c'est-à-dire $\alpha$ impair, donc $\alpha \geqslant 1$ ;
- tous les autres exposants de $a$ pairs.

Autrement dit, $a$ s'écrit $a = 41^{\alpha} \times (\text{carré parfait})$ avec $\alpha$ impair, ce que l'on peut résumer en

$$a = 41\,k^2 \qquad \text{pour un certain entier } k \geqslant 1 .$$

(En effet, si $\alpha = 2\beta + 1$, alors $a = 41 \times \left(41^{\beta}\right)^2 \times (\text{carré})$, et le produit des deux carrés est un carré.)

On en tire

$$\sqrt{a} = k\sqrt{41} .$$

### Étape 4 : le même raisonnement pour $b$

Le problème est symétrique en $a$ et $b$, donc de la même façon

$$b = 41\,\ell^2 \qquad \text{et} \qquad \sqrt{b} = \ell\sqrt{41}$$

pour un entier $\ell \geqslant 1$.

### Étape 5 : on conclut

L'équation de départ devient

$$k\sqrt{41} + \ell\sqrt{41} = 7\sqrt{41} ,$$

et en divisant par $\sqrt{41}$, qui n'est pas nul,

$$k + \ell = 7 .$$

Comme $k$ et $\ell$ sont des entiers supérieurs ou égaux à $1$, il y a exactement six possibilités :

| $k$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ |
|---|---|---|---|---|---|---|
| $\ell$ | $6$ | $5$ | $4$ | $3$ | $2$ | $1$ |
| $a = 41k^2$ | $41$ | $164$ | $369$ | $656$ | $1025$ | $1476$ |
| $b = 41\ell^2$ | $1476$ | $1025$ | $656$ | $369$ | $164$ | $41$ |

Chacune convient : par exemple pour $k = 2$,

$$\sqrt{164} + \sqrt{1025} = 2\sqrt{41} + 5\sqrt{41} = 7\sqrt{41} = \sqrt{2009} .$$

**Conclusion : il y a exactement six couples, ceux du tableau.**

## Going further

Le cœur de l'argument n'a rien à voir avec $2009$ en particulier. Écrivons un entier $N$ sous la forme $N = c^2 d$ où $d$ est **sans facteur carré**, c'est-à-dire n'est divisible par le carré d'aucun nombre premier. Alors les entiers $a$ tels que $\sqrt{a} + \sqrt{b} = \sqrt{N}$ ait une solution sont exactement les $a = d\,k^2$, et le nombre de couples solutions est $c - 1$.

Ici $N = 2009$, $c = 7$, $d = 41$, et l'on trouve bien $7 - 1 = 6$ couples.

Le cas $c = 1$, par exemple $N = 41$, ne donne aucune solution : on ne peut pas écrire $\sqrt{41}$ comme somme de deux racines carrées d'entiers strictement positifs.
