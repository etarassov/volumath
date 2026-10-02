---
id: "7071"
title: "Cinq nombres à la suite ne font jamais un carré"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [carres, partie-sans-facteur-carre, principe-des-tiroirs, nombres-premiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2012, groupe des débutants"
  reference: "stage_junior_2012.pdf, mercredi : arithmétique, après-midi, exercice 10"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2012.pdf"
---

## Statement

Montrer que le produit de cinq entiers **strictement positifs et consécutifs** n'est jamais le
carré d'un entier.

Par exemple $1 \times 2 \times 3 \times 4 \times 5 = 120$ n'est pas un carré, et
$2 \times 3 \times 4 \times 5 \times 6 = 720$ non plus.

## Hints

1. Note les cinq nombres $a, b, c, d, e$ et suppose que leur produit soit un carré.
2. Soit $p$ un nombre premier avec $p \geq 5$. Combien des cinq nombres $p$ peut-il diviser ?
3. Un seul ! Donc l'exposant de $p$ dans ce nombre doit déjà être pair.
4. Conclus que chacun des cinq nombres s'écrit $s \times (\text{carré})$, où $s$ n'utilise que
   les premiers $2$ et $3$. Combien de valeurs $s$ peut-il prendre ?
5. Quatre valeurs pour cinq nombres : principe des tiroirs. Deux des cinq nombres sont dans la
   même catégorie. Compare alors leur différence à $4$.

## Solution

Notons $a < b < c < d < e$ cinq entiers consécutifs strictement positifs, et supposons par
l'absurde que
$$a \times b \times c \times d \times e = k^2$$
pour un certain entier $k$.

**Étape 1 : les grands nombres premiers apparaissent à un exposant pair.**

Soit $p$ un nombre premier avec $p \geq 5$. Parmi cinq entiers consécutifs, il y a **au plus
un** multiple de $p$ : deux multiples de $p$ distincts diffèrent d'au moins $p \geq 5$, alors
que nos cinq nombres ne diffèrent que de $4$ au maximum.

Donc, dans la décomposition du produit, l'exposant de $p$ provient d'**un seul** des cinq
nombres. Comme le produit est un carré, cet exposant est pair. Autrement dit :

> Pour tout premier $p \geq 5$, l'exposant de $p$ dans chacun des cinq nombres est pair.

**Étape 2 : chaque nombre est de l'une de quatre formes.**

Écrivons l'un des cinq nombres, appelons-le $x$, sous la forme
$$x = 2^{\alpha} \times 3^{\beta} \times m ,$$
où $m$ ne contient que des premiers $\geq 5$. D'après l'étape 1, tous les exposants dans $m$
sont pairs, donc $m$ est un carré.

Suivant les parités de $\alpha$ et $\beta$, on peut alors écrire $x$ sous la forme
$$x = s \times (\text{carré parfait}), \qquad \text{avec } s \in \{1,\ 2,\ 3,\ 6\} .$$

(Par exemple si $\alpha$ est impair et $\beta$ pair, on met un facteur $2$ de côté et le reste
est un carré.) Appelons $s$ la **catégorie** de $x$.

Il y a donc **quatre** catégories possibles, et **cinq** nombres.

**Étape 3 : le principe des tiroirs.**

Deux des cinq nombres sont dans la même catégorie. Notons-les $x < y$, de catégorie $s$ :
$$x = s\,u^2, \qquad y = s\,v^2, \qquad \text{avec } 1 \leq u < v .$$

(On a $u \geq 1$ car $x > 0$, et $u < v$ car $x < y$.)

Comme $x$ et $y$ sont deux des cinq nombres consécutifs, leur différence vaut au plus $4$ :
$$y - x = s\left(v^2 - u^2\right) \leq 4 .$$

Or $v \geq u + 1 \geq 2$, donc
$$v^2 - u^2 = (v-u)(v+u) \geq 1 \times (u + v) \geq 1 + 2 = 3 .$$

- **Si $s = 2$ :** $y - x \geq 2 \times 3 = 6 > 4$. Impossible.
- **Si $s = 3$ :** $y - x \geq 3 \times 3 = 9 > 4$. Impossible.
- **Si $s = 6$ :** $y - x \geq 6 \times 3 = 18 > 4$. Impossible.
- **Si $s = 1$ :** alors $x = u^2$ et $y = v^2$ sont deux carrés parfaits, et
  $v^2 - u^2 \leq 4$. Avec $v \geq u+1$, on a $v^2 - u^2 \geq 2u + 1$, donc $2u + 1 \leq 4$,
  donc $u = 1$ et alors $v = 2$ (car $v^2 \leq u^2 + 4 = 5$). Donc $x = 1$ et $y = 4$.

**Étape 4 : le dernier cas.**

Il reste à traiter $x = 1$ et $y = 4$. Comme $1$ et $4$ font partie de cinq entiers
consécutifs strictement positifs, ces cinq nombres sont forcément
$$1, \quad 2, \quad 3, \quad 4, \quad 5 ,$$
et leur produit vaut
$$1 \times 2 \times 3 \times 4 \times 5 = 120 .$$

Or $10^2 = 100$ et $11^2 = 121$ : le nombre $120$ n'est pas un carré.

**Conclusion.** Tous les cas mènent à une contradiction. Le produit de cinq entiers
consécutifs strictement positifs n'est donc jamais un carré. $\blacksquare$

## Going further

Le cœur de la démonstration est l'idée de la **catégorie** : on range chaque entier selon ce
qui reste quand on lui retire le plus gros carré possible. Cette quantité s'appelle la
**partie sans facteur carré**. Ici, elle ne pouvait valoir que $1$, $2$, $3$ ou $6$, ce qui a
suffi à coincer le problème.

Le résultat est un cas particulier d'un théorème d'Erdős et Selfridge (1975), bien plus
difficile : **le produit de $k \geq 2$ entiers consécutifs strictement positifs n'est jamais
une puissance parfaite**, ni un carré, ni un cube, ni rien d'autre.

Remarque au passage que l'hypothèse « strictement positifs » est indispensable : le produit
$0 \times 1 \times 2 \times 3 \times 4$ vaut $0$, qui est bien un carré.
