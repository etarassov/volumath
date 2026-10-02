---
id: "0281"
title: "Les bactéries de l'éprouvette"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [invariant, multiples, divisibilite, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Математический кружок (8–9 класс), первое полугодие, сост. Е. А. Асташов, Д. А. Удимов, МГУ, 2015"
  reference: "AU.pdf, листок 4, задача 9"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

On place dans une éprouvette $133$ bactéries de type A, $135$ bactéries de type B et $137$ bactéries de type C.

Lorsque deux bactéries de types différents se touchent, elles prennent toutes les deux le troisième type. Par exemple, si une bactérie de type A touche une bactérie de type B, elles deviennent toutes les deux de type C.

Peut-il arriver qu'au bout d'un certain temps toutes les bactéries de l'éprouvette soient du même type ?

## Hints

1. Notez $a$, $b$ et $c$ les nombres de bactéries de chaque type et écrivez précisément comment ces trois nombres changent lors d'une rencontre.
2. On cherche une quantité qui ne change pas, ou qui change toujours de la même façon : c'est ce qu'on appelle un invariant.
3. Les nombres $a$, $b$, $c$ eux-mêmes bougent dans tous les sens. Essayez plutôt de suivre leurs **différences** : $a - b$, $b - c$, $a - c$.
4. De combien varie $b - c$ quand une bactérie A rencontre une bactérie B ? Et lors des autres rencontres ?
5. Chaque différence varie de $0$ ou de $\pm 3$. Que devient une différence si les bactéries finissaient toutes du même type ?

## Solution

**Mise en place.**

Notons $a$, $b$ et $c$ les nombres de bactéries de type A, B et C. Au départ

$$a = 133, \qquad b = 135, \qquad c = 137.$$

Regardons ce que fait une rencontre. Si une bactérie A touche une bactérie B, ces deux-là deviennent des C : $a$ perd $1$, $b$ perd $1$, $c$ gagne $2$. Les deux autres sortes de rencontres se décrivent de la même manière. Au passage, à chaque rencontre le total change de $-1 - 1 + 2 = 0$ : il y a toujours $133 + 135 + 137 = 405$ bactéries.

**L'idée : suivre les différences.**

Les trois nombres $a$, $b$, $c$ bougent dans tous les sens, mais regardons leurs différences deux à deux.

*Rencontre A–B* ($a \to a-1$, $b \to b-1$, $c \to c+2$) :

- $a - b$ devient $(a-1) - (b-1) = a - b$ : elle ne change pas ;
- $b - c$ devient $(b-1) - (c+2) = (b - c) - 3$ : elle baisse de $3$ ;
- $a - c$ devient $(a-1) - (c+2) = (a - c) - 3$ : elle baisse de $3$.

*Rencontre B–C* ($b \to b-1$, $c \to c-1$, $a \to a+2$) :

- $b - c$ ne change pas ;
- $a - b$ et $a - c$ augmentent de $3$.

*Rencontre A–C* ($a \to a-1$, $c \to c-1$, $b \to b+2$) :

- $a - c$ ne change pas ;
- $a - b$ baisse de $3$ et $b - c$ augmente de $3$.

**Bilan : à chaque rencontre, chacune des trois différences varie de $0$, de $+3$ ou de $-3$.**

**L'invariant.**

Ajouter ou retrancher $3$ ne change pas le fait d'être, ou de ne pas être, un multiple de $3$. Donc :

> si une différence n'est pas un multiple de $3$ au départ, elle ne le sera jamais.

Regardons les valeurs de départ :

$$a - b = 133 - 135 = -2, \qquad b - c = 135 - 137 = -2, \qquad a - c = 133 - 137 = -4.$$

Aucun de ces trois nombres n'est un multiple de $3$. **Donc aucune des trois différences ne sera jamais un multiple de $3$.**

**La conclusion, par l'absurde.**

Supposons qu'à un moment toutes les bactéries soient du même type. Trois cas.

- *Toutes de type A.* Alors $b = 0$ et $c = 0$, donc $b - c = 0$. Or $0$ est un multiple de $3$, ce qui est impossible.
- *Toutes de type B.* Alors $a = 0$ et $c = 0$, donc $a - c = 0$, encore un multiple de $3$ : impossible.
- *Toutes de type C.* Alors $a = 0$ et $b = 0$, donc $a - b = 0$ : impossible de même.

Les trois cas sont exclus.

**Conclusion.** Non, les bactéries ne pourront jamais être toutes du même type.

**Ce qu'il faut retenir.** Quand une transformation brasse plusieurs quantités, cherchez une combinaison de ces quantités qui ne bouge pas, ou qui ne bouge que par sauts d'un même nombre. Ici, ce sont les différences, et le saut vaut $3$.

## Going further

1. Reprenez le problème avec $133$, $135$ et $138$ bactéries au départ. Que se passe-t-il ?
2. Plus généralement, pour quels effectifs de départ peut-on espérer arriver à un seul type ? Et quand c'est permis par l'invariant, savez-vous le réaliser ?
