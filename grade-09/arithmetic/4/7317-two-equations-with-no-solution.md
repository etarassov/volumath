---
id: "7317"
title: "Le modulo 3 contre deux équations"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [carre, modulo, descente-infinie, equation-diophantienne]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2008"
  reference: "stage_ete_2008.pdf, « Les exercices de la première mi-temps », en TD, arithmétique, exercice 35"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2008.pdf"
---

## Statement

**a)** Montrer qu'il n'existe pas d'entiers $a$ et $b$ tels que
$$a^2 - 3b^2 = 8 .$$

**b)** Montrer qu'il n'existe pas d'entiers strictement positifs $a$, $b$ et $c$ tels que
$$a^2 + b^2 = 3c^2 .$$

## Hints

1. Pour la question a), regarde tout modulo $3$, c'est-à-dire regarde les restes dans la division par $3$.
2. Quels restes un carré peut-il donner dans la division par $3$ ? Teste les trois cas $a = 3k$, $a = 3k+1$, $a = 3k+2$.
3. Dans $a^2 - 3b^2$, le terme $3b^2$ disparaît modulo $3$. Il ne reste que $a^2$. Et $8$, quel reste donne-t-il ?
4. Pour la question b), utilise encore les restes modulo $3$ : à quelle condition une somme de deux carrés est-elle divisible par $3$ ?
5. Tu obtiendras que $a$, $b$ puis $c$ sont tous divisibles par $3$. Que se passe-t-il si tu recommences avec $a/3$, $b/3$ et $c/3$ ? Choisis dès le départ la solution qui rend $a + b + c$ le plus petit possible.

## Solution

**Le point de départ : les carrés modulo 3.**

Tout entier $n$ s'écrit $3k$, $3k+1$ ou $3k+2$. Calculons $n^2$ dans chaque cas :

$$(3k)^2 = 9k^2 = 3 \times 3k^2, \qquad (3k+1)^2 = 9k^2 + 6k + 1 = 3(3k^2+2k) + 1,$$
$$(3k+2)^2 = 9k^2 + 12k + 4 = 3(3k^2 + 4k + 1) + 1 .$$

Donc :

> **Un carré est toujours congru à $0$ ou à $1$ modulo $3$. Jamais à $2$.**

De plus, $n^2 \equiv 0 \pmod 3$ se produit exactement quand $n$ est un multiple de $3$.

### a) L'équation $a^2 - 3b^2 = 8$

Regardons l'égalité modulo $3$. Le terme $3b^2$ est un multiple de $3$, donc
$$a^2 \equiv 8 \pmod 3 .$$

Or $8 = 3 \times 2 + 2$, donc $8 \equiv 2 \pmod 3$. On aurait donc $a^2 \equiv 2 \pmod 3$, ce qui est impossible d'après ce qui précède.

**Il n'y a donc aucune solution entière.**

### b) L'équation $a^2 + b^2 = 3c^2$

Raisonnons par l'absurde. Supposons qu'il existe des solutions en entiers strictement positifs. Parmi toutes ces solutions, choisissons-en une, notée $(a, b, c)$, pour laquelle la somme $a + b + c$ est **la plus petite possible**. (C'est possible : un ensemble non vide d'entiers strictement positifs a toujours un plus petit élément.)

**Étape 1 : $a$ et $b$ sont divisibles par $3$.**

Le membre de droite $3c^2$ est un multiple de $3$, donc
$$a^2 + b^2 \equiv 0 \pmod 3 .$$

Chacun des deux carrés vaut $0$ ou $1$ modulo $3$. Les sommes possibles sont donc $0+0 = 0$, $0+1 = 1$ et $1+1 = 2$. La seule qui soit nulle modulo $3$ est $0 + 0$.

Donc $a^2 \equiv 0$ et $b^2 \equiv 0$ modulo $3$, c'est-à-dire que **$a$ et $b$ sont tous les deux des multiples de $3$**.

**Étape 2 : $c$ l'est aussi.**

Écrivons $a = 3a_1$ et $b = 3b_1$. L'équation devient
$$9a_1^2 + 9b_1^2 = 3c^2, \qquad \text{c'est-à-dire} \qquad 3(a_1^2 + b_1^2) = c^2 .$$

Ainsi $c^2$ est un multiple de $3$, donc $c$ aussi. Écrivons $c = 3c_1$ :
$$3(a_1^2 + b_1^2) = 9c_1^2, \qquad \text{donc} \qquad a_1^2 + b_1^2 = 3c_1^2 .$$

**Étape 3 : la contradiction.**

Le triplet $(a_1, b_1, c_1)$ est formé d'entiers strictement positifs et vérifie la même équation. C'est donc une solution. Mais
$$a_1 + b_1 + c_1 = \frac{a + b + c}{3} < a + b + c ,$$
ce qui contredit le choix de $(a, b, c)$ comme solution de somme minimale.

**Il n'existe donc aucune solution en entiers strictement positifs.**

**Remarque.** Cette méthode s'appelle la **descente infinie** : d'une solution on en fabrique une strictement plus petite, ce qui est impossible dans les entiers positifs. On peut la résumer ainsi : à partir de n'importe quelle solution on pourrait diviser indéfiniment par $3$, ce qui est absurde.

## Going further

1. L'équation $a^2 + b^2 = 3c^2$ a-t-elle des solutions si l'on autorise $a = b = c = 0$ ?
2. Reprends la question b) avec $a^2 + b^2 = 7c^2$. Quels sont les carrés modulo $7$ ? La méthode marche-t-elle encore ?
3. Et $a^2 + b^2 = 5c^2$ ? Cherche une solution avec de petits nombres. Pourquoi la méthode échoue-t-elle ici ?
