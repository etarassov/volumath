---
id: "7659"
title: "Deux fractions dont la somme vaut 1"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [equation en entiers, identite remarquable, factorisation]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, cours d'équations du groupe A"
  reference: "stage_ete_2013.pdf, chapitre II, groupe A, cours d'algèbre, exercice sur a/(1+b) + b/(1+a) = 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Trouver tous les couples d'entiers strictement positifs $(a, b)$ tels que

$$\frac{a}{1+b} + \frac{b}{1+a} = 1 .$$

## Hints

1. Réduisez au même dénominateur et débarrassez-vous des fractions. Attention, les dénominateurs ne s'annulent jamais ici : pourquoi ?
2. Après simplification vous devriez obtenir une égalité entre $a^2 + b^2$ et une expression simple.
3. L'égalité obtenue ressemble à une identité remarquable, à un terme près. Essayez de faire apparaître $(a - b)^2$.
4. Vous arrivez à une somme de deux quantités positives ou nulles égale à $1$. Combien de possibilités reste-t-il ?

## Solution

**Étape 1 : supprimer les fractions.**

Comme $a$ et $b$ sont strictement positifs, $1 + a$ et $1 + b$ sont strictement positifs, donc non nuls : on peut multiplier sans crainte.

Réduisons au même dénominateur $(1+a)(1+b)$ :

$$\frac{a(1+a) + b(1+b)}{(1+a)(1+b)} = 1 ,$$

donc

$$a + a^2 + b + b^2 = (1+a)(1+b) = 1 + a + b + ab .$$

En retranchant $a + b$ des deux côtés :

$$a^2 + b^2 = 1 + ab , \qquad \text{c'est-à-dire} \qquad a^2 - ab + b^2 = 1 .$$

**Étape 2 : faire apparaître un carré.**

Écrivons

$$a^2 - ab + b^2 = (a^2 - 2ab + b^2) + ab = (a - b)^2 + ab .$$

L'équation devient donc

$$(a - b)^2 + ab = 1 .$$

**Étape 3 : conclure.**

Les deux termes du membre de gauche sont des entiers positifs ou nuls : $(a-b)^2$ est un carré, donc $\geqslant 0$, et $ab \geqslant 1$ puisque $a$ et $b$ sont des entiers strictement positifs.

Leur somme vaut $1$, et $ab \geqslant 1$ : la seule possibilité est

$$(a-b)^2 = 0 \qquad \text{et} \qquad ab = 1 .$$

La première égalité donne $a = b$, la seconde donne alors $a^2 = 1$, donc $a = 1$ (le cas $a = -1$ est exclu).

**Vérification.** Pour $a = b = 1$ :

$$\frac{1}{1+1} + \frac{1}{1+1} = \frac{1}{2} + \frac{1}{2} = 1 . \quad \checkmark$$

**Conclusion.** L'unique couple d'entiers strictement positifs solution est

$$\boxed{(a, b) = (1, 1) .}$$

## Going further

**Et si $a$ et $b$ sont des nombres réels ?** L'équation $a^2 - ab + b^2 = 1$ n'a alors plus du tout une seule solution : c'est l'équation d'une ellipse dans le plan, qui contient une infinité de points. Par exemple $a = 1$, $b = 0$ convient, ainsi que $a = 0$, $b = -1$. C'est le fait de travailler avec des **entiers** qui rend la réponse unique, et c'est le passage par $(a-b)^2 + ab$ qui exploite cette contrainte.

**Une variante.** Cherchez les couples d'entiers strictement positifs tels que
$$\frac{a}{1+b} + \frac{b}{1+a} = 2 .$$
La même méthode mène à $a^2 + b^2 = 2 + ab + a + b$, puis, en doublant, à $(a-b)^2 + (a-1)^2 + (b-1)^2 = 6$. Il ne reste qu'un petit nombre de cas à essayer.

**Remarque sur la quantité $a^2 - ab + b^2$.** Elle apparaît dans l'identité $a^3 + b^3 = (a+b)(a^2 - ab + b^2)$. Notre équation dit donc aussi que $a^3 + b^3 = a + b$, ce qui donne une autre façon de conclure dans les réels positifs.
