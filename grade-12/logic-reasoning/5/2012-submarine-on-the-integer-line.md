---
id: "2012"
title: "Le sous-marin sur la droite des entiers"
grade: 12
theme: logic-reasoning
difficulty: 5
duration_min: 45
tags: [denombrable, strategie, entiers, raisonnement]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Infinity I"
  reference: "Handout-1101-1119.pdf, exercice 7 de la seconde liste"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1101-1119.pdf"
---

## Statement

Un sous-marin se déplace le long d'une droite graduée par les entiers relatifs. On ne sait rien de lui, sauf ceci :

- à l'instant $0$, il se trouve en un point d'abscisse entière $a$ ;
- il avance à vitesse constante entière $v$, de sorte qu'à l'instant $t$ il se trouve au point d'abscisse $a + vt$.

Les deux entiers $a$ et $v$ sont inconnus, et peuvent être aussi grands, aussi petits ou aussi négatifs que l'on veut. Par exemple, le sous-marin peut être parti de $+4$ à la vitesse $1$, ou de $-2\,502\,351$ à la vitesse $-2\,359$.

À chaque instant $t = 1, 2, 3, \ldots$ vous pouvez lâcher **une** charge sur un entier de votre choix. Elle explose immédiatement et détruit le sous-marin s'il se trouve précisément là à cet instant. Vous n'obtenez aucune information en retour : ni « touché », ni « raté ».

Existe-t-il une stratégie qui détruit le sous-marin à coup sûr au bout d'un temps fini, quels que soient $a$ et $v$ ?

## Hints

1. Vous n'avez aucun retour d'information : votre stratégie doit donc être une liste de tirs fixée à l'avance, $c_1, c_2, c_3, \ldots$
2. Une couple $(a\,;v)$ est « éliminé » à l'instant $t$ si $c_t = a + vt$. Il vous suffit d'éliminer **tous** les couples possibles, chacun à son tour.
3. Combien y a-t-il de couples $(a\,;v)$ d'entiers relatifs ? Une infinité, bien sûr. Mais peut-on les ranger en une **liste** numérotée $1, 2, 3, \ldots$ sans en oublier ?
4. Rangez les couples par valeur croissante de $|a| + |v|$. Pour chaque valeur, il n'y en a qu'un nombre fini.
5. Si le couple $(a\,;v)$ occupe la place $k$ dans votre liste, où devez-vous tirer à l'instant $k$ ?

## Solution

Oui, une telle stratégie existe. Voici comment la construire.

**Étape 1 : ranger tous les couples en une liste.**

Un couple possible est un couple $(a\,;v)$ d'entiers relatifs. Rangeons ces couples par « taille » croissante, en appelant taille du couple le nombre $|a| + |v|$ :

- taille $0$ : un seul couple, $(0\,;0)$ ;
- taille $1$ : quatre couples, $(1\,;0)$, $(0\,;1)$, $(-1\,;0)$, $(0\,;-1)$ ;
- taille $2$ : huit couples, $(2\,;0)$, $(1\,;1)$, $(0\,;2)$, $(-1\,;1)$, $(-2\,;0)$, ... ;
- et plus généralement, pour $n \geqslant 1$, exactement $4n$ couples de taille $n$.

Chaque paquet est **fini**. En écrivant les paquets les uns à la suite des autres, dans l'ordre des tailles, et en fixant un ordre à l'intérieur de chaque paquet, on obtient une liste numérotée

$$(a_1\,;v_1), \ (a_2\,;v_2), \ (a_3\,;v_3), \ \ldots$$

dans laquelle **tout** couple d'entiers relatifs apparaît, et à une place bien déterminée. En effet, le couple $(a\,;v)$ appartient au paquet de taille $n = |a|+|v|$, qui arrive après un nombre fini de paquets, eux-mêmes finis.

**Étape 2 : la stratégie.**

À l'instant $t$, lâchez la charge sur l'entier

$$c_t = a_t + v_t \times t,$$

c'est-à-dire : *à l'instant $t$, tirez là où serait le sous-marin à l'instant $t$ si le $t$-ième couple de la liste était le bon.*

**Étape 3 : pourquoi cela marche.**

Soit $(a\,;v)$ le vrai couple, celui du sous-marin. D'après l'étape 1, il occupe une place dans la liste : il existe un entier $k$ tel que

$$(a_k\,;v_k) = (a\,;v).$$

À l'instant $k$, la charge tombe sur

$$c_k = a_k + v_k \times k = a + v k,$$

qui est exactement l'abscisse du sous-marin à l'instant $k$. Le sous-marin est détruit à l'instant $k$, qui est un entier fini.

**Conclusion.** La stratégie détruit le sous-marin à coup sûr, en un temps fini, quels que soient sa position de départ et sa vitesse. Le temps nécessaire n'est pas borné à l'avance : plus les nombres $a$ et $v$ sont grands, plus $k$ est grand. Mais pour chaque sous-marin particulier, il est fini.

Les premiers tirs de cette stratégie sont : $c_1 = 0$, $c_2 = 1$, $c_3 = 0 + 1 \times 3 = 3$, $c_4 = -1$, $c_5 = 0 - 1 \times 5 = -5$, et ainsi de suite.

## Going further

L'idée cachée derrière ce problème est que l'ensemble des couples d'entiers relatifs est **dénombrable** : on peut le ranger en une liste numérotée par les entiers, sans rien oublier. C'est vrai pour $\mathbb{Z}$, pour $\mathbb{Z} \times \mathbb{Z}$, et aussi pour $\mathbb{Q}$, l'ensemble des fractions.

Mais ce n'est **pas** vrai pour $\mathbb{R}$ : Cantor a démontré qu'aucune liste numérotée ne peut contenir tous les nombres réels. Si le sous-marin pouvait partir d'un point réel quelconque à une vitesse réelle quelconque, aucune stratégie de ce type ne fonctionnerait.
