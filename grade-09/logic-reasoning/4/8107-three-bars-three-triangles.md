---
id: "8107"
title: "Trois barres, trois triangles"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [strategie, inegalite-triangulaire, jeu]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, Coupe Animath de printemps 2018"
  reference: "stage_ete_2018.pdf, chapitre II « Coupe Animath de printemps 2018 », énoncés destinés aux élèves de lycée, exercice 8"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Daphné et Loïs disposent de trois barres d'un mètre chacune : une blanche, une bleue et une rouge.

Daphné casse la barre blanche en trois morceaux, puis la barre bleue en trois morceaux. Ensuite, et seulement ensuite, Loïs casse la barre rouge en trois morceaux, comme il veut.

Il y a maintenant neuf morceaux. Daphné voudrait fabriquer avec eux trois vrais triangles (non aplatis), chacun ayant un côté blanc, un côté bleu et un côté rouge.

Daphné peut-elle casser ses deux barres de façon à être sûre d'y arriver, quoi que fasse Loïs ?

## Hints

1. Daphné casse ses barres avant de voir celles de Loïs. Elle doit donc trouver un découpage qui marche contre **tous** les découpages possibles de Loïs.
2. Essaie de rendre les choses simples : Daphné peut casser ses deux barres exactement de la même façon.
3. Rappelle-toi la condition pour que trois longueurs forment un triangle. Simplifie-la dans le cas où deux des trois longueurs sont égales : quand $(a, a, b)$ est-il un triangle ?
4. Les trois morceaux de Loïs ont une somme égale à $1$. Que peut-on dire, du coup, du plus grand ? Et du deuxième plus grand ?
5. Essaie le découpage $\left(\dfrac{1}{2}, \dfrac{1}{4}, \dfrac{1}{4}\right)$ pour les deux barres de Daphné.

## Solution

**Oui, Daphné peut y arriver.** Il lui suffit de casser chacune de ses deux barres en trois morceaux de longueurs

$$\frac{1}{2}, \qquad \frac{1}{4}, \qquad \frac{1}{4}$$

(la même découpe pour la blanche et pour la bleue).

**Un petit outil : les triangles isocèles.**

Soient $a > 0$ et $b > 0$. Les trois longueurs $a$, $a$ et $b$ sont les côtés d'un vrai triangle si et seulement si $b < 2a$.

En effet, l'inégalité triangulaire demande trois choses : $a + a > b$, $a + b > a$ et $a + b > a$. Les deux dernières sont automatiquement vraies puisque $b > 0$. Il ne reste donc que la condition $2a > b$.

**Ce que Loïs peut produire.**

Notons $x \geq y \geq z$ les longueurs des trois morceaux de Loïs, rangées de la plus grande à la plus petite. Ce sont des longueurs strictement positives et

$$x + y + z = 1.$$

Deux remarques.

- D'abord $x < 1$. En effet $x = 1 - y - z$ et $y + z > 0$.
- Ensuite $y < \dfrac{1}{2}$. Raisonnons par l'absurde : si $y \geq \dfrac{1}{2}$, alors $x \geq y \geq \dfrac{1}{2}$, donc $x + y \geq 1$, et il resterait $z = 1 - x - y \leq 0$, ce qui est impossible.
- Enfin $z \leq y < \dfrac{1}{2}$.

**Les trois triangles.**

Daphné forme les trois triangles suivants, chacun avec un morceau blanc, un morceau bleu et un morceau rouge :

| Triangle | Côté blanc | Côté bleu | Côté rouge |
|---|---|---|---|
| 1 | $1/2$ | $1/2$ | $x$ |
| 2 | $1/4$ | $1/4$ | $y$ |
| 3 | $1/4$ | $1/4$ | $z$ |

Vérifions qu'ils sont tous les trois de vrais triangles, grâce à l'outil ci-dessus.

- Triangle 1 : ici $a = \dfrac{1}{2}$ et $b = x$. La condition est $x < 2 \times \dfrac{1}{2} = 1$, et on a bien montré $x < 1$.
- Triangle 2 : ici $a = \dfrac{1}{4}$ et $b = y$. La condition est $y < 2 \times \dfrac{1}{4} = \dfrac{1}{2}$, et on a bien montré $y < \dfrac{1}{2}$.
- Triangle 3 : de même, $z < \dfrac{1}{2}$ convient.

Les six morceaux de Daphné sont utilisés exactement une fois chacun, les trois de Loïs aussi, et chaque triangle a bien un côté de chaque couleur.

**Conclusion : le découpage $\left(\dfrac{1}{2}, \dfrac{1}{4}, \dfrac{1}{4}\right)$ pour la barre blanche et pour la barre bleue met Daphné à l'abri de tout ce que peut faire Loïs.**
