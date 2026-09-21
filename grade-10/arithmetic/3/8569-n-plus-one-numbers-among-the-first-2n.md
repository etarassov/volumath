---
id: "8569"
title: "n + 1 nombres parmi les 2n premiers"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [principe-des-tiroirs, nombres-premiers-entre-eux, divisibilite, puissances-de-deux]
adapted_from: null
see_also: ["5220"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe B"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre IV, « Principe des tiroirs et de l'extremum » (Angela) du Groupe B, exercice 7"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Soit $n$ un entier strictement positif. On choisit $n + 1$ nombres parmi
$1, 2, \ldots, 2n$.

1. Démontrer qu'il y en a deux qui sont premiers entre eux.
2. Démontrer qu'il y en a aussi deux tels que l'un divise l'autre.

## Hints

1. Pour la question 1, groupe les $2n$ entiers en $n$ paquets de deux, de façon que deux nombres d'un même paquet soient forcément premiers entre eux.
2. Deux entiers consécutifs sont toujours premiers entre eux : leur différence vaut $1$.
3. Pour la question 2, il faut d'autres tiroirs. Tout entier s'écrit de façon unique comme une puissance de $2$ multipliée par un nombre impair : regarde cette partie impaire.
4. Combien y a-t-il de nombres impairs entre $1$ et $2n$ ?

## Solution

### 1. Deux nombres premiers entre eux

Groupons les entiers de $1$ à $2n$ en $n$ paquets de deux nombres consécutifs :

$$\{1, 2\}, \quad \{3, 4\}, \quad \ldots, \quad \{2n-1, 2n\} .$$

Chaque entier appartient à exactement un paquet, et il y a $n$ paquets.

On choisit $n+1$ nombres pour seulement $n$ paquets : d'après le principe des tiroirs, deux
des nombres choisis appartiennent au même paquet. Ce sont donc deux entiers consécutifs.

Si $d$ est un diviseur commun positif de ces deux entiers, il divise leur différence, qui
vaut $1$ : donc $d = 1$. Ils sont premiers entre eux.

### 2. L'un divise l'autre

**Les tiroirs.** Tout entier strictement positif $m$ s'écrit de façon unique

$$m = 2^{s} \times t , \qquad \text{avec } s \geqslant 0 \text{ et } t \text{ impair} .$$

(Il suffit de diviser $m$ par $2$ autant de fois que possible ; $t$ est ce qu'il reste.) On
appelle $t$ la **partie impaire** de $m$.

Rangeons les nombres choisis selon leur partie impaire. Si $m \leqslant 2n$, sa partie
impaire est un nombre impair inférieur ou égal à $2n$. Or entre $1$ et $2n$ il y a exactement
$n$ nombres impairs :

$$1, \; 3, \; 5, \; \ldots, \; 2n-1 .$$

Il y a donc au plus $n$ tiroirs.

**Le principe des tiroirs.** Comme on a choisi $n+1$ nombres, deux d'entre eux ont la même
partie impaire $t$. Écrivons-les

$$m_1 = 2^{s_1} \times t \qquad \text{et} \qquad m_2 = 2^{s_2} \times t ,$$

avec $s_1 < s_2$ (les deux nombres sont différents, donc les exposants le sont aussi).

**La divisibilité.** Alors

$$m_2 = 2^{s_2 - s_1} \times m_1 ,$$

et $s_2 - s_1$ est un entier positif : donc $m_1$ divise $m_2$.

### Conclusion

Parmi $n+1$ nombres choisis entre $1$ et $2n$, il y en a toujours deux premiers entre eux, et
il y en a toujours deux dont l'un divise l'autre.

## Going further

Les deux résultats sont optimaux : avec seulement $n$ nombres, on peut choisir
$2, 4, 6, \ldots, 2n$, qui sont tous pairs, donc jamais premiers entre eux deux à deux ; et on
peut choisir $n+1, n+2, \ldots, 2n$, où aucun ne divise un autre, puisque le double du plus
petit dépasse déjà $2n$.
