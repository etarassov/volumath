---
id: "0182"
title: "Les poids de l'épicier"
grade: 8
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [denombrement, puissances, balance, majoration-et-exemple]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок, 7 класс, II полугодие, пособие для преподавателей"
  reference: "Ast2017b.pdf, листок 23, задача 3"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

Un épicier pèse ses marchandises avec une balance à deux plateaux et un jeu de poids.

1. Il doit pouvoir peser toutes les masses entières de $1$ kg à $15$ kg. Les poids se posent **tous sur le même plateau**, la marchandise sur l'autre. Quel est le plus petit nombre de poids dont il a besoin ?
2. Il doit maintenant pouvoir peser toutes les masses entières de $1$ kg à $40$ kg, mais cette fois il a le droit de poser des poids **sur les deux plateaux**, y compris à côté de la marchandise. Quel est le plus petit nombre de poids ?

Pour chaque question, il faut deux choses : proposer un jeu de poids qui convient, **et** expliquer pourquoi on ne peut pas faire avec moins.

## Hints

1. Pour la question 1, cherche d'abord un jeu de $4$ poids qui marche. Essaie $1$, $2$, $4$ et $8$ kg, et vérifie que tu sais peser $7$ kg, puis $11$ kg.
2. Pour montrer que $3$ poids ne suffisent pas, compte le nombre de masses différentes qu'on peut fabriquer avec $3$ poids : chacun est soit posé sur le plateau, soit laissé de côté.
3. Pour la question 2, un poids a maintenant **trois** situations possibles. Lesquelles ? Que vaut chacune, vue depuis le plateau de la marchandise ?
4. Compte le nombre de situations pour $n$ poids. Attention, à chaque pesée utile correspond la pesée « miroir » obtenue en échangeant les deux plateaux : les valeurs vont donc deux par deux.
5. Pour l'exemple de la question 2, essaie les poids $1$, $3$, $9$ et $27$ kg. Comment peser $2$ kg ? Et $5$ kg ?

## Solution

Ce problème demande à chaque fois **deux choses** : un exemple qui marche, et une majoration qui montre qu'on ne peut pas faire mieux. C'est seulement en ayant les deux qu'on a vraiment répondu.

### 1. Les poids sur un seul plateau

**Un exemple avec $4$ poids.** Prenons les poids de $1$, $2$, $4$ et $8$ kg. On obtient toutes les masses de $1$ à $15$ kg :

$$1,\quad 2,\quad 3 = 2+1,\quad 4,\quad 5 = 4+1,\quad 6 = 4+2,\quad 7 = 4+2+1,\quad 8,$$
$$9 = 8+1,\quad 10 = 8+2,\quad 11 = 8+2+1,\quad 12 = 8+4,\quad 13 = 8+4+1,\quad 14 = 8+4+2,\quad 15 = 8+4+2+1$$

**Pourquoi $3$ poids ne suffisent pas.** Avec $n$ poids, chaque poids est dans l'une de $2$ situations : posé sur le plateau, ou laissé de côté. Cela fait

$$2 \times 2 \times \cdots \times 2 = 2^n \text{ façons de choisir}$$

Il faut retirer le cas où l'on ne pose aucun poids, qui donne une masse nulle et ne pèse rien. On obtient donc **au plus** $2^n - 1$ masses différentes.

Pour $n = 3$ :

$$2^3 - 1 = 7$$

Au plus $7$ masses différentes, alors qu'il en faut $15$. Trois poids ne peuvent donc pas suffire, quelles que soient leurs masses.

**Réponse à la question 1 : il faut $4$ poids**, et $1$, $2$, $4$, $8$ conviennent.

### 2. Les poids sur les deux plateaux

Maintenant un poids peut aussi être posé **à côté de la marchandise**. Dans ce cas, il aide la marchandise au lieu de la contrer : tout se passe comme si on le retranchait.

**Un exemple avec $4$ poids.** Prenons les poids de $1$, $3$, $9$ et $27$ kg. Voici les premières pesées, où un signe $-$ signifie « ce poids est du côté de la marchandise » :

$$1 = 1,\quad 2 = 3-1,\quad 3 = 3,\quad 4 = 3+1,\quad 5 = 9-3-1,\quad 6 = 9-3,\quad 7 = 9-3+1,$$
$$8 = 9-1,\quad 9 = 9,\quad 10 = 9+1,\quad 11 = 9+3-1,\quad 12 = 9+3,\quad 13 = 9+3+1,$$
$$14 = 27-9-3-1,\quad \ldots,\quad 39 = 27+9+3,\quad 40 = 27+9+3+1$$

On obtient bien toutes les masses de $1$ à $40$ kg. Par exemple, peser $5$ kg se lit ainsi : on met la marchandise et les poids de $3$ et $1$ kg d'un côté, le poids de $9$ kg de l'autre, et la balance s'équilibre car $5 + 3 + 1 = 9$.

**Pourquoi $3$ poids ne suffisent pas.** Avec $n$ poids, chaque poids est maintenant dans l'une de $3$ situations :

- sur le plateau opposé à la marchandise (il compte $+$) ;
- sur le plateau de la marchandise (il compte $-$) ;
- laissé de côté (il compte $0$).

Cela fait $3^n$ dispositions possibles. Chaque disposition donne une valeur, qui est la masse pesée.

Deux remarques permettent de conclure :

- la disposition où tous les poids sont laissés de côté donne la valeur $0$, qui ne pèse rien ;
- les autres dispositions vont **deux par deux** : en échangeant les deux plateaux, on transforme une disposition de valeur $m$ en une disposition de valeur $-m$. Or seules les valeurs positives servent à peser.

Le nombre de masses positives différentes est donc au plus

$$\frac{3^n - 1}{2}$$

Pour $n = 3$ :

$$\frac{3^3 - 1}{2} = \frac{27-1}{2} = 13$$

Au plus $13$ masses, alors qu'il en faut $40$. Trois poids ne suffisent donc pas.

Pour $n = 4$ :

$$\frac{3^4 - 1}{2} = \frac{81-1}{2} = 40$$

Tout juste $40$ : c'est exactement ce qu'il faut, et le jeu $1$, $3$, $9$, $27$ y arrive sans gaspiller une seule disposition.

**Réponse à la question 2 : il faut $4$ poids**, et $1$, $3$, $9$, $27$ conviennent.

**Conclusion.** Dans les deux cas la réponse est $4$ poids. Mais le deuxième jeu est bien plus puissant : avec autant de poids, on passe de $15$ kg à $40$ kg, simplement parce qu'on a le droit de s'en servir des deux côtés.

## Going further

1. Avec $5$ poids posés sur un seul plateau, jusqu'à quelle masse peut-on aller ? Et avec $5$ poids posés des deux côtés ?
2. Dans la question 2, la majoration donne exactement $40$ pour $4$ poids. Que peut-on en déduire sur le jeu $1$, $3$, $9$, $27$ : y a-t-il plusieurs façons de peser une même masse ?
3. Expliquer une méthode générale pour trouver, avec les poids $1$, $3$, $9$, $27$, la pesée qui donne une masse choisie à l'avance, par exemple $23$ kg, sans procéder par essais.
