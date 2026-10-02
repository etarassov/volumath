---
id: "8504"
title: "Dix élèves, dix entiers consécutifs, des carrés parfaits"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [carre-parfait, entiers-consecutifs, maximum, analyse-synthese]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, Coupe Animath de printemps 2022"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre II, exercice 5 (sujet collégiens) et exercice 11 (sujet lycéens)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Dix élèves sont dans une salle. Aline écrit au tableau dix entiers relatifs consécutifs
(ils peuvent donc être négatifs).

Chaque élève choisit un des dix entiers écrits, et deux élèves ne choisissent jamais le même.
Chaque élève calcule ensuite la somme des neuf entiers choisis par les neuf autres. Tout élève
dont le résultat est un carré parfait reçoit un cadeau.

Aline choisit les dix entiers de départ, et les élèves s'organisent comme ils veulent. Quel est
le plus grand nombre d'élèves qui peuvent recevoir un cadeau ?

*Un carré parfait est un entier de la forme $n^2$, où $n$ est un entier naturel. Attention,
$0 = 0^2$ est un carré parfait.*

## Hints

1. Note $S$ la somme des dix entiers écrits au tableau. Si un élève a choisi l'entier $x$, que vaut la somme des neuf autres, en fonction de $S$ et de $x$ ?
2. Les dix résultats calculés par les élèves sont donc, eux aussi, dix entiers consécutifs. La question devient : parmi dix entiers consécutifs, combien peut-il y en avoir qui soient des carrés parfaits ?
3. Les carrés parfaits sont de plus en plus espacés. Si $a^2$ et $(a+4)^2$ tombaient tous les deux dans une plage de dix entiers consécutifs, que vaudrait au plus leur écart ?
4. N'oublie pas la deuxième moitié du travail : il faut aussi exhiber un choix d'Aline pour lequel le maximum est vraiment atteint. Cherche $n$ tel que les dix résultats soient exactement $0, 1, 2, \ldots, 9$.

## Solution

Il s'agit de trouver un maximum, donc le travail se fait en deux temps : d'abord montrer
qu'on ne peut pas dépasser une certaine valeur, ensuite montrer que cette valeur est
atteignable.

### Premier temps : au plus quatre cadeaux

Notons $n, n+1, \ldots, n+9$ les dix entiers écrits par Aline, et $S$ leur somme.

Un élève qui choisit l'entier $x$ calcule la somme des neuf autres, c'est-à-dire $S - x$. Comme
les dix élèves choisissent dix entiers différents, les dix résultats obtenus sont

$$S - n, \quad S - n - 1, \quad \ldots, \quad S - n - 9 ,$$

c'est-à-dire, là encore, **dix entiers consécutifs**.

La question devient donc : parmi dix entiers consécutifs, combien peut-il y en avoir qui
soient des carrés parfaits ?

**Au plus quatre.** Supposons qu'il y en ait au moins cinq. Un carré parfait est positif ou
nul, donc ces cinq carrés sont de la forme

$$a^2, \; b^2, \; c^2, \; d^2, \; e^2 \qquad \text{avec} \qquad 0 \leqslant a < b < c < d < e .$$

Comme $a, b, c, d, e$ sont des entiers strictement croissants, on a $e \geqslant a + 4$, donc
$e^2 \geqslant (a+4)^2$. Or $a^2$ et $e^2$ sont deux des dix entiers consécutifs, donc leur
écart vaut au plus $9$ :

$$9 \geqslant e^2 - a^2 \geqslant (a+4)^2 - a^2 = 8a + 16 .$$

Mais $a \geqslant 0$, donc $8a + 16 \geqslant 16 > 9$. C'est impossible.

Il y a donc au plus quatre carrés parfaits parmi dix entiers consécutifs, et donc **au plus
quatre élèves reçoivent un cadeau**.

### Deuxième temps : quatre cadeaux sont possibles

Parmi les dix entiers $0, 1, 2, \ldots, 9$, il y a exactement quatre carrés parfaits :
$0$, $1$, $4$ et $9$. Il suffit donc de trouver un choix d'Aline pour lequel les dix résultats
possibles soient exactement $0, 1, \ldots, 9$.

La somme des dix entiers écrits vaut

$$S = n + (n+1) + \dots + (n+9) = 10n + 45 .$$

Le plus petit résultat possible est $S - (n+9) = 9n + 36$ et le plus grand est
$S - n = 9n + 45$. On veut $9n + 36 = 0$, c'est-à-dire $n = -4$.

Vérifions. Si Aline écrit

$$-4, \; -3, \; -2, \; -1, \; 0, \; 1, \; 2, \; 3, \; 4, \; 5 ,$$

alors $S = 5$, et l'élève qui choisit $x$ obtient $5 - x$. Les quatre élèves qui choisissent
respectivement

$$5, \quad 4, \quad 1, \quad -4$$

obtiennent $0$, $1$, $4$ et $9$ : quatre carrés parfaits, donc quatre cadeaux.

### Conclusion

Le plus grand nombre d'élèves qui peuvent recevoir un cadeau est $\boxed{4}$.
