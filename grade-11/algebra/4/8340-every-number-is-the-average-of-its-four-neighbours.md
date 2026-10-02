---
id: "8340"
title: "Chaque nombre est la moyenne de ses quatre voisins"
grade: 11
theme: algebra
difficulty: 4
duration_min: 30
tags: [principe-de-lextremum, minimum, moyenne, reseau]
adapted_from: null
see_also: ["1210", "8836"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, cours du Groupe B"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe B, « Principes des tiroirs et de l'extrémum » (Pierre-Marie), exercice 15"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

À chaque point du plan dont les deux coordonnées sont entières, on attribue un entier
**strictement positif**. On suppose que chaque nombre attribué est égal à la moyenne
arithmétique des quatre nombres attribués à ses voisins immédiats : celui du dessus, celui du
dessous, celui de gauche et celui de droite.

Montrer que tous les nombres sont égaux.

## Hints

1. La difficulté est qu'il y a une infinité de points. Mais les nombres attribués sont des entiers **strictement positifs** : que peut-on dire d'un ensemble d'entiers strictement positifs ?
2. Un ensemble non vide d'entiers strictement positifs admet toujours un plus petit élément. Considère un point où le nombre attribué est le plus petit possible.
3. Écris la condition de la moyenne en ce point. Compare chacun des quatre voisins au minimum.
4. Si une moyenne de quatre nombres, tous supérieurs ou égaux à $m$, vaut exactement $m$, que peut-on dire de ces quatre nombres ?
5. Une fois que tu sais que les quatre voisins du point minimal valent aussi $m$, comment atteindre tous les autres points ?

## Solution

**Étape 1 : il existe un minimum.**

Les nombres attribués sont des entiers strictement positifs. L'ensemble de toutes les valeurs
attribuées est donc un ensemble non vide d'entiers supérieurs ou égaux à $1$ : il admet un plus
petit élément, notons-le $m$.

Soit $P$ un point où la valeur $m$ est atteinte.

**Étape 2 : les quatre voisins de $P$ valent aussi $m$.**

Notons $a$, $b$, $c$, $d$ les valeurs attribuées aux quatre voisins de $P$. La condition de
l'énoncé donne

$$m = \frac{a + b + c + d}{4} , \qquad \text{c'est-à-dire} \qquad a + b + c + d = 4m .$$

Par définition de $m$ comme minimum, on a $a \geqslant m$, $b \geqslant m$, $c \geqslant m$ et
$d \geqslant m$. Donc

$$a + b + c + d \geqslant 4m .$$

Il y a égalité. Or une somme de quatre termes, chacun supérieur ou égal à $m$, ne peut valoir
$4m$ que si chacun vaut exactement $m$ : en effet, si l'un d'eux, disons $a$, vérifiait
$a > m$, alors $a+b+c+d > m + m + m + m = 4m$, ce qui est faux.

Donc

$$a = b = c = d = m .$$

**Étape 3 : de proche en proche, tout le plan.**

Les quatre voisins de $P$ portent donc eux aussi la valeur minimale $m$. Le raisonnement de
l'étape 2 s'applique alors à chacun d'eux, et donne que **leurs** voisins valent $m$, et ainsi de
suite.

Plus rigoureusement : montrons par récurrence sur $k \geqslant 0$ que tout point situé à distance
$k$ de $P$ au sens des déplacements en escalier (c'est-à-dire tout point qu'on atteint depuis
$P$ en $k$ pas horizontaux ou verticaux) porte la valeur $m$.

- Pour $k = 0$, c'est vrai : $P$ porte la valeur $m$.
- Si c'est vrai au rang $k$, prenons un point $Q$ à $k+1$ pas de $P$. Il est voisin d'un point $R$ situé à $k$ pas de $P$, qui porte donc la valeur $m$ par hypothèse de récurrence. L'étape 2 appliquée à $R$ donne que tous ses voisins, dont $Q$, portent la valeur $m$.

Or tout point à coordonnées entières s'atteint depuis $P$ en un nombre fini de pas horizontaux et
verticaux : il suffit de se déplacer d'abord horizontalement, puis verticalement.

**Conclusion.** Tous les nombres attribués valent $m$ : ils sont tous égaux.

## Going further

L'hypothèse « entiers strictement positifs » a servi à deux endroits, et elle est indispensable.

Si l'on autorisait des nombres réels quelconques, le résultat serait faux : la fonction
$(x\,;y) \mapsto x$ attribue à chaque point son abscisse, et chaque valeur est bien la moyenne de
ses quatre voisines, puisque $\tfrac{(x-1) + (x+1) + x + x}{4} = x$. Mais les valeurs ne sont
évidemment pas toutes égales.

Ce qui rend le résultat vrai, c'est que les entiers strictement positifs sont **minorés** et
**discrets** : un ensemble non vide y a toujours un plus petit élément. Le même argument
fonctionne pour des réels si on suppose seulement qu'ils sont tous positifs et que le minimum est
atteint.

Ce théorème est la version discrète d'un résultat d'analyse appelé **principe du maximum** pour
les fonctions harmoniques.
