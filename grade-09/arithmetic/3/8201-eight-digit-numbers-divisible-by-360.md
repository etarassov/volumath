---
id: "8201"
title: "Les nombres à huit chiffres ab2019cd divisibles par 360"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 35
tags: [divisibilite, criteres-de-divisibilite, chiffres, denombrement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, Coupe Animath de printemps 2019"
  reference: "PolycopieV1-1.pdf, chapitre II « Coupe Animath de printemps 2019 », énoncés destinés aux élèves de collège, exercice 2"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

On cherche des nombres à huit chiffres dont l'écriture décimale est

$$\overline{a\,b\,2\,0\,1\,9\,c\,d}$$

c'est-à-dire : un premier chiffre $a$, un deuxième chiffre $b$, puis les quatre chiffres $2$, $0$, $1$, $9$ dans cet ordre, puis un chiffre $c$ et enfin un chiffre $d$.

Comme le nombre a bien huit chiffres, on impose $a > 0$. Les chiffres $b$, $c$ et $d$ peuvent valoir n'importe quoi entre $0$ et $9$.

Combien de ces nombres sont divisibles par $360$ ?

## Hints

1. $360$ est un grand nombre, et on n'a pas de critère de divisibilité par $360$. Décompose-le en facteurs plus commodes : $360 = 10 \times 36$, et $36 = 4 \times 9$.
2. Commence par la divisibilité par $10$. Elle règle le chiffre $d$ d'un seul coup.
3. Une fois $d$ connu, le nombre s'écrit $10 \times M$ où $M = \overline{a\,b\,2\,0\,1\,9\,c}$. À quelle condition sur $M$ le nombre $10M$ est-il divisible par $360$ ?
4. *Rappel* : un entier est divisible par $4$ exactement quand le nombre formé par ses **deux derniers chiffres** l'est. (Parce que tout ce qui précède est un multiple de $100$, et $100 = 4 \times 25$.)
5. *Rappel* : un entier est divisible par $9$ exactement quand la **somme de ses chiffres** l'est.
6. Les deux conditions portent sur des choses différentes : l'une ne contraint que $c$, l'autre ne contraint que la somme $a + b + c$. Traite $c$ d'abord, puis compte les couples $(a, b)$ possibles pour chaque valeur de $c$.

## Solution

**Découper $360$.**

On écrit $360 = 10 \times 36$. Notons $N = \overline{a\,b\,2\,0\,1\,9\,c\,d}$ le nombre cherché.

*Le chiffre $d$.* Si $N$ est divisible par $360$, il est en particulier divisible par $10$, donc son dernier chiffre est nul :

$$d = 0.$$

*Ce qui reste.* Avec $d = 0$, le nombre $N$ s'écrit $N = 10 \times M$, où

$$M = \overline{a\,b\,2\,0\,1\,9\,c}$$

est le nombre à sept chiffres obtenu en effaçant le zéro final. Et

$$360 \mid 10M \quad \Longleftrightarrow \quad 36 \mid M .$$

Il reste donc à compter les $M$ de la forme $\overline{a\,b\,2\,0\,1\,9\,c}$ divisibles par $36$. Comme $36 = 4 \times 9$ et que $4$ et $9$ n'ont aucun diviseur commun autre que $1$, cela revient à demander que $M$ soit divisible **à la fois** par $4$ et par $9$.

**La divisibilité par $4$ : elle ne parle que de $c$.**

Un entier est divisible par $4$ exactement quand le nombre formé par ses deux derniers chiffres l'est. Ici, les deux derniers chiffres de $M$ sont $9$ et $c$, donc il faut que $90 + c$ soit un multiple de $4$.

Passons les dix chiffres en revue : $90, 91, 92, \ldots, 99$. Les multiples de $4$ dans cette liste sont $92$ et $96$. Donc

$$c = 2 \qquad \text{ou} \qquad c = 6 .$$

**La divisibilité par $9$ : elle ne parle que de la somme $a + b + c$.**

Un entier est divisible par $9$ exactement quand la somme de ses chiffres l'est. Ici la somme des chiffres de $M$ vaut

$$a + b + 2 + 0 + 1 + 9 + c = a + b + c + 12 .$$

Ce nombre doit être un multiple de $9$. Comme $12 = 9 + 3$, cela revient à dire que $a + b + c + 3$ est un multiple de $9$.

Or $a$, $b$, $c$ sont trois chiffres, donc $0 \le a + b + c \le 27$, et par conséquent $3 \le a+b+c+3 \le 30$. Les multiples de $9$ dans cet intervalle sont $9$, $18$ et $27$, d'où

$$a + b + c = 6, \quad 15 \quad \text{ou} \quad 24 .$$

**Premier cas : $c = 2$.**

Alors $a + b$ vaut $4$, $13$ ou $22$. Comme $a$ et $b$ sont des chiffres, $a + b \le 18$, donc $a+b = 22$ est impossible. Il reste :

- $a + b = 4$, avec $a \ge 1$ : les couples $(1,3)$, $(2,2)$, $(3,1)$, $(4,0)$, soit **4** possibilités.
- $a + b = 13$ : les couples $(4,9)$, $(5,8)$, $(6,7)$, $(7,6)$, $(8,5)$, $(9,4)$, soit **6** possibilités.

Cela fait $4 + 6 = 10$ nombres :

$$13201920,\ 22201920,\ 31201920,\ 40201920,$$
$$49201920,\ 58201920,\ 67201920,\ 76201920,\ 85201920,\ 94201920 .$$

**Second cas : $c = 6$.**

Alors $a + b$ vaut $0$, $9$ ou $18$. Comme $a \ge 1$, la valeur $a+b = 0$ est impossible. Il reste :

- $a + b = 9$ : les couples $(1,8)$, $(2,7)$, $(3,6)$, $(4,5)$, $(5,4)$, $(6,3)$, $(7,2)$, $(8,1)$, $(9,0)$, soit **9** possibilités.
- $a + b = 18$ : le seul couple $(9,9)$, soit **1** possibilité.

Cela fait $9 + 1 = 10$ nombres :

$$18201960,\ 27201960,\ 36201960,\ 45201960,\ 54201960,$$
$$63201960,\ 72201960,\ 81201960,\ 90201960,\ 99201960 .$$

**Conclusion.**

Les deux cas sont bien séparés, puisque $c$ vaut $2$ dans l'un et $6$ dans l'autre. Il y a donc

$$\boxed{20}$$

nombres à huit chiffres de la forme $\overline{a\,b\,2\,0\,1\,9\,c\,d}$ divisibles par $360$.

## Going further

Reprendre le problème en remplaçant $360$ par $1125 = 9 \times 125$. Le découpage change : il n'y a plus de facteur $2$, mais un facteur $125$, et le critère à utiliser porte sur les **trois** derniers chiffres.
