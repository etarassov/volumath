---
id: "13026"
title: "Ni la somme ni la différence"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 45
tags: [raisonnement par l'absurde, ordre, denombrement, extremum]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, test de rentrée (Coupe Animath d'automne) du 1er octobre 2014"
  reference: "2017-09_coupe_automne_2014.pdf, exercices lycéens, exercice 9 ; corrigé 2017-09_coupe_automne_2014_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2014.pdf"
---

## Statement

On se donne $25$ nombres réels strictement positifs, deux à deux distincts.

Montrer qu'on peut en choisir deux de sorte qu'aucun des $23$ autres nombres ne soit égal à leur somme, ni à leur différence.

## Hints

1. Range les nombres dans l'ordre : $a_1 < a_2 < \cdots < a_{25}$. Raisonne par l'absurde : suppose que, pour chaque choix de deux nombres, leur somme ou leur différence est l'un des $23$ autres.
2. La somme $a_{25} + a_i$ est trop grande pour faire partie de la liste. C'est donc la différence $a_{25} - a_i$ qui doit y être. Combien de valeurs différentes prennent ces différences, quand $i$ va de $1$ à $24$ ? Où peuvent-elles se trouver ?
3. Tu dois obtenir $a_{25} - a_i = a_{25-i}$ pour tout $i$. Recommence avec $a_{24}$ à la place de $a_{25}$, pour $i$ allant de $2$ à $23$, puis regarde ce qui se passe pour $i = 12$.

## Solution

Rangeons les nombres dans l'ordre croissant : $a_1 < a_2 < \cdots < a_{25}$. Raisonnons par l'absurde, et supposons que **pour chaque choix de deux nombres, leur somme ou leur différence est égale à l'un des $23$ autres nombres**.

**Étape 1. Les paires qui contiennent $a_{25}$.** Prenons $i$ entre $1$ et $24$, et regardons les deux nombres $a_i$ et $a_{25}$.

- Leur somme $a_{25} + a_i$ est plus grande que $a_{25}$, le plus grand des $25$ nombres : elle n'est égale à aucun d'eux.
- Donc leur différence $a_{25} - a_i$ est égale à l'un des $23$ autres nombres. Comme elle est strictement comprise entre $0$ et $a_{25}$, c'est l'un des nombres $a_1, a_2, \ldots, a_{24}$, et ce n'est pas $a_i$ lui-même.

Les $24$ différences sont rangées dans l'ordre décroissant :
$$a_{25} - a_1 > a_{25} - a_2 > \cdots > a_{25} - a_{24} .$$
Ce sont donc $24$ nombres différents, tous pris parmi les $24$ nombres $a_1 < a_2 < \cdots < a_{24}$. Ils sont forcément égaux à ces $24$ nombres, chacun une fois : la plus grande différence est $a_{24}$, la suivante $a_{23}$, et ainsi de suite. Autrement dit,
$$a_{25} - a_i = a_{25-i} \qquad \text{pour tout } i \text{ de } 1 \text{ à } 24 .$$
En particulier, pour $i = 1$ et $i = 2$ :
$$a_{25} = a_{24} + a_1 \qquad \text{et} \qquad a_{25} - a_2 = a_{23} .$$

**Étape 2. Les paires qui contiennent $a_{24}$.** Prenons maintenant $i$ entre $2$ et $23$, et regardons les deux nombres $a_i$ et $a_{24}$.

- Leur somme vérifie $a_{24} + a_i > a_{24} + a_1 = a_{25}$ : elle n'est égale à aucun des nombres.
- Donc leur différence $a_{24} - a_i$ est l'un des $23$ autres nombres, et ce n'est pas $a_i$.

Cette différence est positive, et on peut la majorer. Comme $a_{24} = a_{25} - a_1$ et $a_i \geqslant a_2$,
$$a_{24} - a_i = a_{25} - a_1 - a_i \leqslant a_{25} - a_2 - a_1 = a_{23} - a_1 < a_{23} .$$
Elle fait donc partie des $22$ nombres $a_1, a_2, \ldots, a_{22}$.

Quand $i$ va de $2$ à $23$, on obtient $22$ différences rangées dans l'ordre décroissant :
$$a_{24} - a_2 > a_{24} - a_3 > \cdots > a_{24} - a_{23} .$$
Ce sont $22$ nombres différents pris parmi les $22$ nombres $a_1 < \cdots < a_{22}$. Comme à l'étape 1, ils leur sont égaux dans l'ordre :
$$a_{24} - a_i = a_{24-i} \qquad \text{pour tout } i \text{ de } 2 \text{ à } 23 .$$

**Étape 3. La contradiction.** Prenons $i = 12$ : l'étape 2 donne
$$a_{24} - a_{12} = a_{12} .$$
Mais l'étape 2 dit aussi que $a_{24} - a_{12}$ est l'un des $23$ **autres** nombres, donc différent de $a_{12}$. C'est impossible.

**Conclusion.** L'hypothèse de départ est fausse : on peut toujours choisir deux des $25$ nombres de sorte qu'aucun des $23$ autres ne soit égal à leur somme ni à leur différence.

## Going further

1. Trouver trois nombres strictement positifs distincts pour lesquels la conclusion est fausse : pour chaque choix de deux d'entre eux, le troisième est égal à leur somme ou à leur différence.
2. Montrer que la conclusion reste vraie avec $n$ nombres, pour tout entier $n \geqslant 4$. (Distinguer les cas $n$ pair et $n$ impair.)
