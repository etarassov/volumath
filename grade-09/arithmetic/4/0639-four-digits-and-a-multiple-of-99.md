---
id: "0639"
title: "Quatre chiffres et un multiple de 99"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [divisibilite, chiffres, ecriture-decimale, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Ensembles. Géométrie »"
  reference: "Ensembles.Geometry.pdf, 22 septembre 2023, problème P 33, section « Ensembles »"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Ensembles.Geometry.pdf"
---

## Statement

On note $\overline{abcd}$ le nombre entier de quatre chiffres dont les chiffres sont $a$, $b$, $c$, $d$, dans cet ordre (avec $a \neq 0$). On considère l'ensemble

$$M = \{\, \overline{abcd} \mid a - d = b - c \,\}.$$

Combien d'éléments de $M$ sont divisibles par $99$ ?

## Hints

1. La condition $a - d = b - c$ peut s'écrire autrement, en faisant passer $c$ et $d$ du même côté. Que devient-elle ?
2. Coupe le nombre en deux blocs de deux chiffres : $\overline{abcd} = 100 \times \overline{ab} + \overline{cd}$. Comme $100 = 99 + 1$, que peux-tu dire de la divisibilité par $99$ ?
3. Tu obtiens un critère très simple : un nombre de quatre chiffres est divisible par $99$ exactement quand la somme de ses deux moitiés $\overline{ab} + \overline{cd}$ l'est. Entre quelles valeurs cette somme peut-elle se trouver ?
4. Combine ce critère avec la condition de l'énoncé : en posant $s = a + c = b + d$, calcule $\overline{ab} + \overline{cd}$ en fonction de $s$.
5. Il ne reste plus qu'à compter les chiffres possibles pour chaque valeur de $s$. Attention, $a$ ne peut pas être nul.

## Solution

**Étape 1 : réécrire la condition de l'énoncé.**

$$a - d = b - c \iff a + c = b + d.$$

Notons $s$ cette valeur commune : $s = a + c = b + d$. Comme les chiffres vont de $0$ à $9$, on a $0 \leqslant s \leqslant 18$.

**Étape 2 : un critère de divisibilité par 99.**

Coupons le nombre en deux blocs de deux chiffres :

$$\overline{abcd} = 100 \times \overline{ab} + \overline{cd}, \qquad \text{où } \overline{ab} = 10a + b \text{ et } \overline{cd} = 10c + d.$$

Comme $100 = 99 + 1$ :

$$\overline{abcd} = 99 \times \overline{ab} + \overline{ab} + \overline{cd}.$$

Le premier terme est un multiple de $99$. Donc

$$99 \text{ divise } \overline{abcd} \iff 99 \text{ divise } \overline{ab} + \overline{cd}.$$

**Étape 3 : les deux conditions ensemble.**

Calculons cette somme en utilisant $a + c = b + d = s$ :

$$\overline{ab} + \overline{cd} = (10a + b) + (10c + d) = 10(a + c) + (b + d) = 10s + s = 11s.$$

Il faut donc que $99$ divise $11s$, c'est-à-dire que $9$ divise $s$. Comme $0 \leqslant s \leqslant 18$, cela laisse trois valeurs : $s = 0$, $s = 9$ ou $s = 18$.

Le cas $s = 0$ est impossible : il donnerait $a + c = 0$, donc $a = 0$, alors que $a$ est le chiffre des milliers d'un nombre de quatre chiffres.

**Étape 4 : compter.**

*Cas $s = 9$.*

- Pour le couple $(a, c)$ : il faut $a + c = 9$ avec $a \geqslant 1$. On peut prendre $a = 1, 2, \ldots, 9$, et $c = 9 - a$ est alors déterminé, et bien compris entre $0$ et $8$. Cela fait $9$ possibilités.
- Pour le couple $(b, d)$ : il faut $b + d = 9$ sans autre contrainte. On peut prendre $b = 0, 1, \ldots, 9$, et $d = 9 - b$ suit. Cela fait $10$ possibilités.

Les deux choix sont indépendants, d'où

$$9 \times 10 = 90 \text{ nombres.}$$

*Cas $s = 18$.*

Il faut $a + c = 18$, donc $a = c = 9$, et $b + d = 18$, donc $b = d = 9$. Un seul nombre : $9999$.

$$1 \text{ nombre.}$$

**Conclusion.**

$$90 + 1 = 91.$$

Il y a $91$ éléments de $M$ divisibles par $99$.

Les plus petits sont $1089$, $1188$, $1287$, $1386$, ... et le plus grand est $9999$. On vérifie par exemple sur $1089$ : $1 + 8 = 9 = 0 + 9$ ✔, et $1089 = 99 \times 11$ ✔.

## Going further

1. Démontre le critère de l'étape 2 sous sa forme générale : un nombre est divisible par $99$ si et seulement si la somme de ses blocs de deux chiffres, découpés à partir de la droite, est divisible par $99$. Teste-le sur $123453$.
2. Combien y a-t-il d'éléments de $M$ en tout, sans la condition de divisibilité ?
3. Même question que dans l'exercice, mais avec $11$ à la place de $99$. Le compte change-t-il ?
