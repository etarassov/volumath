---
id: "11607"
title: "Groupes populaires de garçons et de filles"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [double comptage, parite, sous-ensembles, puissances de deux, graphe]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 5 (pot-pourri)"
  reference: "2017-10_ofm-2012-2013-envoi5.pdf, Exercices olympiques, exercice 7 ; corrigé 2017-10_ofm-2012-2013-envoi5-corrige.pdf (première des trois solutions)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi5.pdf"
---

## Statement

Dans un groupe fini de garçons et de filles, certaines personnes se connaissent. La relation est réciproque : si $a$ connaît $b$, alors $b$ connaît $a$.

Un ensemble $G$ de garçons du groupe est dit **populaire** si chaque fille du groupe connaît au moins un garçon de $G$. De même, un ensemble $F$ de filles est dit **populaire** si chaque garçon du groupe connaît au moins une fille de $F$. (Ces ensembles peuvent être vides : l'ensemble vide de garçons n'est populaire que s'il n'y a aucune fille dans le groupe.)

Montrer que le nombre d'ensembles populaires de garçons et le nombre d'ensembles populaires de filles sont de même parité.

## Hints

1. Commence par de petits exemples : un garçon et une fille qui se connaissent, puis un garçon et une fille qui ne se connaissent pas, puis deux garçons et une fille.
2. Fixe un ensemble $X$ de garçons, et regarde les filles qui ne connaissent **aucun** garçon de $X$. Combien y a-t-il d'ensembles de filles formés uniquement de telles filles ?
3. Compte de deux façons le nombre de couples $(X, Y)$, où $X$ est un ensemble de garçons, $Y$ un ensemble de filles, et où aucun garçon de $X$ ne connaît aucune fille de $Y$.
4. Une puissance de $2$ n'est impaire que lorsque c'est $2^0 = 1$.

## Solution

**L'idée : un double comptage.** Disons qu'un ensemble $X$ de garçons et un ensemble $Y$ de filles sont **étrangers** l'un à l'autre si aucun garçon de $X$ ne connaît aucune fille de $Y$. Comme la relation « se connaître » est réciproque, cela revient à dire qu'aucune fille de $Y$ ne connaît aucun garçon de $X$.

Notons $N$ le nombre de couples $(X, Y)$ étrangers, où $X$ parcourt tous les ensembles de garçons et $Y$ tous les ensembles de filles (les ensembles vides compris). On va calculer la parité de $N$ de deux façons.

**Premier comptage : on fixe d'abord les garçons.** Soit $X$ un ensemble de garçons. Notons $Y_X$ l'ensemble des filles qui ne connaissent aucun garçon de $X$, et $|Y_X|$ son nombre d'éléments.

Un ensemble de filles $Y$ est étranger à $X$ exactement quand toutes ses filles sont dans $Y_X$, c'est-à-dire quand $Y$ est une partie de $Y_X$. Un ensemble à $m$ éléments a $2^m$ parties, donc il y a $2^{|Y_X|}$ ensembles $Y$ étrangers à $X$. En faisant la somme sur tous les ensembles $X$ de garçons :

$$N = \sum_{X} 2^{|Y_X|}.$$

Regardons la parité de chaque terme.

- Si $Y_X$ est vide, le terme vaut $2^0 = 1$. Or $Y_X$ vide veut dire qu'aucune fille n'ignore tous les garçons de $X$, autrement dit que chaque fille connaît au moins un garçon de $X$ : c'est exactement dire que $X$ est populaire.
- Si $Y_X$ n'est pas vide, le terme $2^{|Y_X|}$ est pair.

Donc $N$ est la somme de $1$ pour chaque ensemble populaire de garçons et de nombres pairs. Si $P_g$ désigne le nombre d'ensembles populaires de garçons, $N - P_g$ est pair.

**Second comptage : on fixe d'abord les filles.** Le même raisonnement, en échangeant le rôle des garçons et des filles, s'applique, parce que la définition des couples étrangers est symétrique. Pour un ensemble $Y$ de filles, notons $X_Y$ l'ensemble des garçons qui ne connaissent aucune fille de $Y$. Alors

$$N = \sum_{Y} 2^{|X_Y|},$$

et $X_Y$ est vide exactement quand $Y$ est populaire. Si $P_f$ désigne le nombre d'ensembles populaires de filles, $N - P_f$ est pair.

**On compare.** $P_g - P_f = (N - P_f) - (N - P_g)$ est la différence de deux nombres pairs, donc il est pair.

**Conclusion : le nombre d'ensembles populaires de garçons et le nombre d'ensembles populaires de filles ont la même parité.**

## Going further

Le corrigé original propose deux autres preuves : une par récurrence sur le nombre de garçons, en retirant un garçon $g$ et en regardant les filles qui ne le connaissent pas, et une autre purement calculatoire, qui écrit le nombre d'ensembles populaires comme une somme de produits de $0$ et de $1$ et la développe modulo $2$. Le double comptage ci-dessus est de loin la plus courte.
