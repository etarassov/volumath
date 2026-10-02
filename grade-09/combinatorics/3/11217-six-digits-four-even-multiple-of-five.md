---
id: "11217"
title: "Six chiffres, multiple de 5"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [denombrement, chiffres, parite, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 1 (combinatoire)"
  reference: "2017-10_ofm-2014-2015-envoi-1.pdf, Exercices du groupe B, exercice 3 ; corrigé 2017-10_ofm-2014-2015-envoi-1-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-1.pdf"
---

## Statement

Combien y a-t-il de nombres à six chiffres qui ont quatre chiffres pairs et deux chiffres impairs,
et qui sont des multiples de $5$ ?

Rappel : l'écriture d'un nombre ne commence jamais par un $0$.

## Hints

1. Par quel chiffre se termine un multiple de $5$ ? Ce chiffre est-il pair ou impair ?
2. Le premier chiffre ne peut pas être $0$. Combien de choix a-t-il s'il est pair ? Et s'il est
   impair ?
3. Sépare les cas selon le dernier chiffre et selon la parité du premier chiffre. Dans chaque cas,
   combien de chiffres impairs faut-il placer parmi les quatre chiffres du milieu, et de combien de
   façons peut-on choisir leurs places ?

## Solution

Écrivons le nombre $\overline{c_1 c_2 c_3 c_4 c_5 c_6}$, où $c_1$ est le premier chiffre et $c_6$
le dernier.

**Ce que l'on sait sur les chiffres.**

- Un multiple de $5$ se termine par $0$ ou par $5$. Donc $c_6 = 0$ (pair) ou $c_6 = 5$ (impair).
- Le premier chiffre $c_1$ n'est pas $0$. S'il est pair, il vaut $2$, $4$, $6$ ou $8$ : $4$ choix.
  S'il est impair, il vaut $1$, $3$, $5$, $7$ ou $9$ : $5$ choix.
- Pour les quatre chiffres du milieu $c_2, c_3, c_4, c_5$, il n'y a aucune restriction : une fois
  qu'on sait qu'un chiffre doit être pair, il a $5$ choix ($0, 2, 4, 6, 8$), et s'il doit être
  impair, il a aussi $5$ choix ($1, 3, 5, 7, 9$). Dans tous les cas, les quatre chiffres du milieu
  donnent $5 \times 5 \times 5 \times 5 = 625$ possibilités, **une fois choisies les places des
  chiffres impairs**.

Pour placer un chiffre impair parmi les quatre places du milieu, il y a $4$ façons. Pour en placer
deux, il y a $6$ façons : les places $\{2, 3\}$, $\{2, 4\}$, $\{2, 5\}$, $\{3, 4\}$, $\{3, 5\}$ et
$\{4, 5\}$.

**Les quatre cas.**

Il faut deux chiffres impairs en tout.

| Dernier chiffre | Premier chiffre | Impairs au milieu | Nombre de possibilités |
|:---:|:---:|:---:|:---:|
| $0$ | pair | $2$ | $4 \times 6 \times 625 = 15\,000$ |
| $0$ | impair | $1$ | $5 \times 4 \times 625 = 12\,500$ |
| $5$ | pair | $1$ | $4 \times 4 \times 625 = 10\,000$ |
| $5$ | impair | $0$ | $5 \times 1 \times 625 = 3\,125$ |

Par exemple, dans le premier cas, le dernier chiffre est $0$ et le premier est pair : les deux
chiffres impairs sont tous les deux au milieu. Il y a $4$ choix pour le premier chiffre, $6$ façons
de placer les deux chiffres impairs, puis $625$ façons de remplir le milieu.

Dans le dernier cas, les deux chiffres impairs sont le premier et le dernier, donc les quatre
chiffres du milieu sont pairs : il n'y a qu'une seule façon de choisir leurs places.

**Le total.**
$$15\,000 + 12\,500 + 10\,000 + 3\,125 = 40\,625 .$$

**Conclusion : il y a $40\,625$ nombres à six chiffres qui ont quatre chiffres pairs, deux chiffres
impairs, et qui sont multiples de $5$.**
