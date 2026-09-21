---
id: "7858"
title: "m(m + 1) n'est jamais une puissance parfaite"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [nombres premiers entre eux, puissances, binome de newton, encadrement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, quatrième période, groupe A « arithmétique », lundi 24 après-midi (Vincent Bouis), exercice 9"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

**a)** Trouver tous les entiers $m \geq 1$ tels que $m(m+1)$ soit la puissance d'un nombre
premier, c'est-à-dire de la forme $p^k$ avec $p$ premier et $k \geq 1$.

**b)** Montrer qu'il n'existe aucun entier $m \geq 1$ pour lequel $m(m+1)$ s'écrive $a^k$ avec
$a \geq 1$ et $k \geq 2$ entiers.

## Hints

1. Le point de départ des deux questions est le même : $m$ et $m+1$ sont **premiers entre eux**
   (un diviseur commun diviserait leur différence, qui vaut $1$).
2. Pour a) : si $m(m+1) = p^k$, alors $m$ et $m+1$ sont chacun une puissance de $p$. Mais ils
   sont premiers entre eux : que peut valoir la plus petite des deux puissances ?
3. Pour b) : quand un produit de deux entiers premiers entre eux est une puissance $k$-ième,
   chacun des deux facteurs est lui-même une puissance $k$-ième. Écris $m = b^k$ et
   $m+1 = c^k$.
4. Tu obtiens $c^k - b^k = 1$ avec $c > b \geq 1$. Développe $(b+1)^k$ et compare-le à $b^k + 1$.

## Solution

**Le point commun : $m$ et $m+1$ sont premiers entre eux.**

Si un entier $d \geq 1$ divise $m$ et $m+1$, il divise leur différence $(m+1) - m = 1$, donc
$d = 1$. Les deux entiers consécutifs $m$ et $m+1$ n'ont donc aucun facteur premier commun.

### a) Puissance d'un nombre premier

Supposons $m(m+1) = p^k$ avec $p$ premier et $k \geq 1$.

Tout diviseur positif de $p^k$ est une puissance de $p$. En particulier
$$m = p^{\alpha} \qquad \text{et} \qquad m + 1 = p^{\beta} ,$$
avec $\alpha, \beta \geq 0$ et $\alpha + \beta = k$.

Comme $m < m+1$, on a $\alpha < \beta$.

*Montrons que $\alpha = 0$.* Si $\alpha \geq 1$, alors $p$ divise $m = p^\alpha$ et $p$ divise
$m+1 = p^\beta$ (car $\beta > \alpha \geq 1$). Donc $p$ diviserait leur différence, c'est-à-dire
$1$ : impossible puisque $p \geq 2$.

Donc $\alpha = 0$, c'est-à-dire $m = 1$. Alors $m + 1 = 2 = p^\beta$, ce qui donne $p = 2$ et
$\beta = 1$.

**Réponse de a) :** le seul entier est $m = 1$, avec $m(m+1) = 2 = 2^1$.

### b) Puissance parfaite quelconque

Supposons par l'absurde qu'il existe $m \geq 1$, $a \geq 1$ et $k \geq 2$ avec
$$m(m+1) = a^k .$$

**Étape 1 : chaque facteur est une puissance $k$-ième.**

Regardons la décomposition en facteurs premiers. Dans $a^k$, chaque exposant est un multiple de
$k$. Comme $m$ et $m+1$ n'ont aucun facteur premier commun, chaque facteur premier de $a^k$ est
tout entier dans $m$, ou tout entier dans $m+1$. L'exposant correspondant, multiple de $k$, se
retrouve donc en entier dans l'un des deux.

Ainsi tous les exposants de $m$ et tous ceux de $m+1$ sont des multiples de $k$, ce qui signifie
qu'il existe des entiers $b \geq 1$ et $c \geq 1$ tels que
$$m = b^k \qquad \text{et} \qquad m + 1 = c^k .$$

**Étape 2 : deux puissances $k$-ièmes qui diffèrent de $1$.**

De $c^k - b^k = 1$ et $c^k > b^k \geq 1$ on tire $c > b \geq 1$, donc $c \geq b + 1$.

Développons $(b+1)^k$ avec la formule du binôme de Newton :
$$(b+1)^k = b^k + \binom{k}{1} b^{k-1} + \binom{k}{2} b^{k-2} + \cdots + \binom{k}{k-1} b + 1 .$$

Tous les termes intermédiaires sont strictement positifs, puisque $b \geq 1$ et $k \geq 2$ (il y
a au moins le terme $\binom{k}{1} b^{k-1} = k\,b^{k-1} \geq 2$). Donc
$$c^k \geq (b+1)^k \geq b^k + k\,b^{k-1} + 1 > b^k + 1 .$$

Cela contredit $c^k = b^k + 1$.

**Conclusion de b).** Il n'existe aucun entier $m \geq 1$ tel que $m(m+1)$ soit une puissance
parfaite d'exposant au moins $2$.

*Autrement dit :* un produit de deux entiers consécutifs n'est jamais un carré, ni un cube, ni
une puissance quatrième... On peut s'en convaincre sur les premières valeurs : $2, 6, 12, 20,
30, 42, 56, 72, 90$ — aucune n'est une puissance parfaite.
