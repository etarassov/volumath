---
id: "11407"
title: "Des comités avec un nombre impair de garçons"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [denombrement, parite, developpement, produit]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 4 (combinatoire)"
  reference: "2020-01_EnvoiCombiFinal.pdf, Exercices Seniors, exercice 15 ; corrigé 2020-03_corrige-commente-envoi-4.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/01/EnvoiCombiFinal.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-01_EnvoiCombiFinal.pdf"
---

## Statement

Un lycée compte un nombre **impair** de classes, et chaque classe compte un nombre **impair**
d'élèves. On forme un comité des élèves en choisissant un élève dans chaque classe.

On suppose que le nombre de classes qui ont plus de garçons que de filles est impair.

Montrer qu'il y a plus de façons de former un comité qui contient un nombre impair de garçons que
de façons de former un comité qui contient un nombre impair de filles.

## Hints

1. Note $g_i$ et $f_i$ les nombres de garçons et de filles de la classe $i$. Avec une seule
   classe, combien de comités ont un garçon, combien ont une fille ?
2. Développe $(g_1 - f_1)(g_2 - f_2)$. Que compte chacun des quatre termes, et avec quel signe ?
3. Montre que le produit $(g_1 - f_1)(g_2 - f_2) \cdots (g_n - f_n)$ est exactement la différence
   cherchée. Le fait que $n$ soit impair sert ici.
4. Quel est le signe de ce produit ?

## Solution

**Notations.**

Notons $n$ le nombre de classes ($n$ est impair) et, pour chaque classe $i$, $g_i$ son nombre de
garçons et $f_i$ son nombre de filles. Notons $G$ le nombre de comités qui contiennent un nombre
impair de garçons, et $F$ le nombre de comités qui contiennent un nombre impair de filles. Il faut
montrer que $G > F$.

**Garçons impairs ou filles paires, c'est pareil.**

Un comité a exactement $n$ membres. Si le nombre de garçons est $b$, le nombre de filles est
$n - b$. Comme $n$ est impair, $b$ et $n - b$ n'ont pas la même parité. Ainsi un comité a un
nombre impair de garçons **si et seulement si** il a un nombre pair de filles. Donc $G$ est aussi
le nombre de comités avec un nombre pair de filles.

**Un produit qui compte les comités avec un signe.**

Regardons le produit
$$P = (g_1 - f_1)(g_2 - f_2) \cdots (g_n - f_n) .$$
Pour le développer, on choisit dans chaque parenthèse soit le terme $g_i$, soit le terme $-f_i$,
on multiplie les nombres choisis, et on additionne tous les résultats obtenus.

Prenons par exemple deux classes :
$$(g_1 - f_1)(g_2 - f_2) = g_1 g_2 - g_1 f_2 - f_1 g_2 + f_1 f_2 .$$
Le terme $g_1 g_2$ est le nombre de comités formés d'un garçon de la classe $1$ et d'un garçon de
la classe $2$. Le terme $g_1 f_2$ est le nombre de comités formés d'un garçon de la classe $1$ et
d'une fille de la classe $2$, et il apparaît avec un signe moins, car on a pris une fille. En
général, chaque façon de choisir dans les parenthèses correspond à une façon de décider, classe
par classe, si l'on prend un garçon ou une fille ; le produit correspondant compte les comités de
ce genre, avec un signe moins pour chaque fille.

Finalement, $P$ est la somme, sur tous les comités, de $+1$ pour un comité avec un nombre pair de
filles et de $-1$ pour un comité avec un nombre impair de filles :
$$P = (\text{nombre de comités avec un nombre pair de filles}) - F = G - F .$$

**Le signe de $P$.**

Chaque classe a un nombre impair d'élèves, donc $g_i \neq f_i$ : aucun facteur n'est nul. Le
facteur $g_i - f_i$ est positif pour une classe qui a plus de garçons, négatif pour une classe qui
a plus de filles.

Soit $k$ le nombre de classes qui ont plus de garçons. Par hypothèse $k$ est impair, et $n$ aussi,
donc le nombre $n - k$ de facteurs négatifs est **pair**. Un produit de nombres non nuls qui
contient un nombre pair de facteurs négatifs est strictement positif. Donc $P > 0$.

**Conclusion.**

On a $G - F = P > 0$. **Il y a plus de comités avec un nombre impair de garçons qu'avec un
nombre impair de filles.**

## Going further

Que se passe-t-il si le nombre de classes ayant plus de garçons que de filles est pair ? Et
pourquoi faut-il que chaque classe ait un nombre impair d'élèves ?
