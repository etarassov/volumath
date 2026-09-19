---
id: "0459"
title: "Le théorème de Sophie Germain"
grade: 9
theme: algebra
difficulty: 4
duration_min: 30
tags: [factorisation, identites remarquables, difference de carres, nombre premier]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, Математический кружок (8 класс), сост. А. Л. Канунников"
  reference: "Kan2017.pdf, листок 10, задача 3"
  url: "https://mmmf.msu.ru/for_schools/Kan2017.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2017.pdf"
---

## Statement

Montrer que pour tout entier naturel $n > 1$, le nombre

$$n^4 + 4$$

n'est pas premier : il s'écrit toujours comme le produit de deux entiers tous les deux strictement plus grands que $1$.

## Hints

1. Il s'agit de factoriser $n^4 + 4$. Parmi les identités remarquables, une seule transforme une soustraction en produit. Laquelle ?
2. Pour faire apparaître une différence de deux carrés, ajoute puis retranche $4n^2$. Reconnais-tu l'expression $n^4 + 4n^2 + 4$ ?
3. Une fois le produit obtenu, il reste une dernière étape que l'on oublie souvent : vérifier que chacun des deux facteurs est strictement plus grand que $1$. C'est là, et seulement là, que sert l'hypothèse $n > 1$.

## Solution

**L'idée : fabriquer une différence de deux carrés.**

La seule identité remarquable qui transforme une soustraction en produit est

$$a^2 - b^2 = (a-b)(a+b)$$

Nous allons donc écrire $n^4 + 4$ comme une différence de deux carrés.

**Étape 1. Ajouter et retrancher $4n^2$.**

L'expression $n^4 + 4$ ressemble au début d'un carré. En effet

$$(n^2+2)^2 = n^4 + 4n^2 + 4$$

Il y a donc un $4n^2$ de trop. Ajoutons-le et retranchons-le aussitôt, ce qui ne change rien :

$$n^4 + 4 = n^4 + 4n^2 + 4 - 4n^2 = (n^2+2)^2 - (2n)^2$$

**Étape 2. Factoriser.**

On applique $a^2 - b^2 = (a-b)(a+b)$ avec $a = n^2+2$ et $b = 2n$ :

$$n^4 + 4 = \big((n^2+2) - 2n\big)\big((n^2+2) + 2n\big) = (n^2 - 2n + 2)(n^2 + 2n + 2)$$

Nous avons bien écrit $n^4 + 4$ comme un produit de deux entiers.

**Étape 3. Vérifier que les deux facteurs dépassent $1$.**

Cette étape est indispensable : $17 = 1 \times 17$ est aussi un produit de deux entiers, et pourtant $17$ est premier. Un facteur égal à $1$ ne prouverait rien.

*Le premier facteur.* On le réécrit en reconnaissant le début d'un carré :

$$n^2 - 2n + 2 = (n^2 - 2n + 1) + 1 = (n-1)^2 + 1$$

Comme $n > 1$, l'entier $n - 1$ vaut au moins $1$, donc $(n-1)^2 \ge 1$, donc

$$n^2 - 2n + 2 \ge 2 > 1$$

*Le second facteur.* De la même façon

$$n^2 + 2n + 2 = (n+1)^2 + 1 \ge 2 > 1$$

**Conclusion.**

Pour tout entier naturel $n > 1$,

$$n^4 + 4 = (n^2 - 2n + 2)(n^2 + 2n + 2)$$

est le produit de deux entiers tous les deux strictement plus grands que $1$. Ce nombre n'est donc jamais premier.

*Où sert l'hypothèse $n > 1$ ?* Uniquement à l'étape 3. Pour $n = 1$ la factorisation donne $1 \times 5 = 5$ : le premier facteur vaut $1$, la factorisation ne prouve rien, et de fait $5$ est premier.

*Sophie Germain* (1776–1831) était une mathématicienne française. Elle a travaillé sur la théorie des nombres et sur l'élasticité, à une époque où les femmes n'avaient pas le droit de s'inscrire à l'École polytechnique.

## Going further

1. Vérifier la factorisation sur $n = 2$, $n = 3$ et $n = 5$, en calculant les deux membres.
2. Factoriser de la même manière $n^4 + 64$.
3. Plus général : factoriser $n^4 + 4m^4$, où $m$ est un entier naturel. Quelle hypothèse faut-il alors pour conclure que ce nombre n'est pas premier ?
