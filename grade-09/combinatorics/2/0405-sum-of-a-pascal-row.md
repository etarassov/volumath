---
id: "0405"
title: "La somme d'une ligne du triangle de Pascal"
grade: 9
theme: combinatorics
difficulty: 2
duration_min: 20
tags: [triangle de pascal, sommes, puissances de deux]
adapted_from: null
see_also: ["0156"]
created: 2026-09-18
source:
  name: "Математический кружок (8–9 класс), второе полугодие, часть II, методические указания. Сост. Е. А. Асташов, Я. А. Верёвкин, О. А. Манжина, Д. А. Удимов, МГУ, 2015"
  reference: "AU2.pdf, листок 12, задачи 5 и 8"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU2.pdf"
---

## Statement

On construit le **triangle de Pascal** ainsi : au sommet et le long des deux côtés on écrit des $1$ ; chaque ligne contient un nombre de plus que la précédente ; tout autre nombre est la somme des deux nombres situés juste au-dessus de lui, à gauche et à droite.

$$
\begin{array}{c}
1\\
1 \quad 1\\
1 \quad 2 \quad 1\\
1 \quad 3 \quad 3 \quad 1\\
1 \quad 4 \quad 6 \quad 4 \quad 1\\
1 \quad 5 \quad 10 \quad 10 \quad 5 \quad 1\\
\dots
\end{array}
$$

La ligne du sommet, celle qui ne contient qu'un seul $1$, est appelée ligne $0$ ; la suivante est la ligne $1$, et ainsi de suite.

1. Calculez la somme des nombres de la ligne $0$, puis de la ligne $1$, de la ligne $2$, de la ligne $3$, de la ligne $4$. Que remarquez-vous ?
2. Montrez que la somme des nombres d'une ligne est toujours le double de la somme des nombres de la ligne précédente.
3. Combien vaut la somme des nombres de la ligne $n$ ? Et celle de la ligne $2025$ ?

## Hints

1. Pour la question 2, prenez un nombre au milieu d'une ligne, par exemple le $3$ de la ligne $3$. Dans quels nombres de la ligne suivante intervient-il ?
2. Chaque nombre d'une ligne sert deux fois pour fabriquer la ligne suivante : une fois pour son voisin d'en dessous à gauche, une fois pour son voisin d'en dessous à droite. Vérifiez-le aussi pour les $1$ des deux bouts.
3. Notez les nombres de la ligne $n$ par des lettres : $a_0, a_1, \dots, a_n$. Écrivez avec ces lettres tous les nombres de la ligne $n+1$, puis additionnez-les.
4. Pour la question 3, partez de la somme de la ligne $0$ et appliquez le doublement autant de fois qu'il faut.

## Solution

**1. Les premières sommes.**

$$1 ; \quad 1+1 = 2 ; \quad 1+2+1 = 4 ; \quad 1+3+3+1 = 8 ; \quad 1+4+6+4+1 = 16.$$

À chaque ligne, la somme double. On reconnaît $1, 2, 4, 8, 16$, c'est-à-dire des puissances de $2$.

**2. Pourquoi la somme double.**

Appelons $a_0, a_1, \dots, a_n$ les nombres de la ligne $n$, de gauche à droite, et $S$ leur somme.

La ligne $n+1$ contient $n+2$ nombres, et la règle de construction les donne tous :
$$a_0, \quad a_0 + a_1, \quad a_1 + a_2, \quad \dots, \quad a_{n-1} + a_n, \quad a_n.$$
(Aux deux bouts, il n'y a qu'un seul nombre au-dessus : on recopie donc le $1$ du bord, c'est-à-dire $a_0$ à gauche et $a_n$ à droite.)

Additionnons tout cela :
$$a_0 + (a_0 + a_1) + (a_1 + a_2) + \dots + (a_{n-1} + a_n) + a_n.$$

Regardons combien de fois chaque lettre apparaît. Le terme $a_0$ apparaît une fois tout seul au début et une fois dans $a_0 + a_1$ : deux fois. Le terme $a_1$ apparaît dans $a_0 + a_1$ et dans $a_1 + a_2$ : deux fois. De même pour chacun des suivants, et $a_n$ apparaît dans $a_{n-1} + a_n$ et tout seul à la fin : deux fois.

Chaque nombre de la ligne $n$ est donc compté exactement deux fois, et la somme de la ligne $n+1$ vaut
$$2(a_0 + a_1 + \dots + a_n) = 2S.$$

**3. La somme de la ligne $n$.**

La somme de la ligne $0$ vaut $1$. En passant d'une ligne à la suivante on multiplie par $2$, donc après $n$ lignes on a multiplié $n$ fois par $2$ :
$$\text{somme de la ligne } n = 1 \times \underbrace{2 \times 2 \times \dots \times 2}_{n \text{ facteurs}} = 2^n.$$

En particulier, la somme des nombres de la ligne $2025$ vaut $2^{2025}$. C'est un nombre gigantesque, mais on connaît sa valeur exacte sans avoir écrit une seule ligne du triangle.

## Going further

1. Dans la ligne $100$, on place les signes $-$ et $+$ en alternant : $1 - 100 + 4950 - \dots$ Montrez que le résultat vaut $0$. (Pour une ligne de numéro impair, la symétrie du triangle suffit ; pour la ligne $100$, regroupez les nombres comme dans la question 2.)
2. Quel lien voyez-vous entre ce résultat et le nombre de façons de lire un mot écrit en triangle ?
