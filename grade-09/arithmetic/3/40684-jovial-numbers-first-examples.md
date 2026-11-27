---
id: "40684"
title: "Les nombres joviaux : premiers exemples"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 50
tags: [fractions-egyptiennes, fractions, nombres-premiers, decomposition-en-facteurs-premiers, raisonnement-par-l-absurde, construction, disjonction-de-cas]
adapted_from: null
see_also: ["40685", "40686", "40687", "8678", "11202"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2019, mathématiques, série S"
  reference: "cg-2019-s-sujet.pdf, problème 2 « Les nombres joviaux », partie I « Quelques exemples », questions 1 à 7"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2019.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2019-s-sujet.pdf"
---

## Statement

Soient $n \geqslant 1$ et $p \geqslant 2$ deux entiers. On dit que $p$ est *jovial d'ordre $n$*
s'il existe des entiers $a_1, \ldots, a_n$ tels que
$$2 \leqslant a_1 < a_2 < \cdots < a_n, \qquad a_n = p \qquad \text{et} \qquad \frac{1}{a_1} + \frac{1}{a_2} + \cdots + \frac{1}{a_n} = 1.$$
Autrement dit, on écrit $1$ comme une somme de fractions de numérateur $1$, toutes différentes,
et le plus grand dénominateur est $p$. Par exemple, $12$ est jovial d'ordre $4$ car
$$\frac{1}{2} + \frac{1}{4} + \frac{1}{6} + \frac{1}{12} = 1.$$
Un entier $p \geqslant 2$ est dit *jovial* s'il existe un entier $n \geqslant 1$ tel que $p$ soit
jovial d'ordre $n$.

1. Montrer que, si l'entier $p$ est jovial d'ordre $n$, alors $n \leqslant p - 1$.
2. Existe-t-il des entiers joviaux d'ordre $2$ ? Montrer que $2$ et $4$ ne sont pas joviaux.
3. Montrer qu'un nombre premier n'est pas jovial.
4. Quel est le plus petit entier jovial ?
5. Déterminer tous les entiers joviaux d'ordre $3$.
6. Soit $p$ un entier jovial. Montrer que $2p$ et $p(p + 1)$ sont joviaux.
7. Montrer que le produit de deux entiers joviaux est jovial.

## Hints

1. **Question 1.** Les $a_i$ sont des entiers distincts compris entre $2$ et $p$. Combien y en
   a-t-il au plus ?
2. **Question 2.** Si $2 \leqslant a_1 < a_2$, quelle est la plus grande valeur possible de
   $\frac{1}{a_1} + \frac{1}{a_2}$ ?
3. **Question 2.** Pour $4$, la question 1 limite l'ordre à $3$ : il reste peu de cas à essayer.
4. **Question 3.** Raisonner par l'absurde et multiplier l'égalité par le produit de tous les
   dénominateurs.
5. **Question 3.** Dans l'égalité obtenue, tous les termes sauf un sont des multiples de $p$.
   Lequel ? Peut-il être un multiple de $p$ ?
6. **Question 5.** Montrer d'abord que $a_1 = 2$, en majorant la somme quand $a_1 \geqslant 3$.
7. **Question 6.** Pour $2p$ : diviser par $2$ une écriture de $1$, puis ajouter $\frac{1}{2}$.
8. **Question 6.** Pour $p(p + 1)$ : calculer $\frac{1}{p} - \frac{1}{p + 1}$.
9. **Question 7.** Une écriture de $1$ avec le plus grand dénominateur $q$, divisée par $p$, donne
   une écriture de $\frac{1}{p}$.

## Solution

**1.** Les entiers $a_1 < a_2 < \cdots < a_n$ sont distincts et compris entre $2$ et $a_n = p$.
Or il n'y a que $p - 1$ entiers entre $2$ et $p$. Donc $n \leqslant p - 1$.

**2.** Si $2 \leqslant a_1 < a_2$, alors $a_1 \geqslant 2$ et $a_2 \geqslant 3$, donc
$$\frac{1}{a_1} + \frac{1}{a_2} \leqslant \frac{1}{2} + \frac{1}{3} = \frac{5}{6} < 1.$$
**Il n'existe donc aucun entier jovial d'ordre $2$.**

*L'entier $2$.* D'après la question 1, il ne pourrait être jovial que d'ordre $1$, c'est-à-dire
avec $\frac{1}{2} = 1$ : c'est faux. Donc $2$ n'est pas jovial.

*L'entier $4$.* Il ne pourrait être jovial que d'ordre $1$, $2$ ou $3$. L'ordre $1$ est exclu
($\frac{1}{4} \neq 1$), l'ordre $2$ aussi. À l'ordre $3$, il faudrait trois entiers distincts
entre $2$ et $4$, donc $2$, $3$ et $4$ ; or
$\frac{1}{2} + \frac{1}{3} + \frac{1}{4} = \frac{13}{12} \neq 1$. Donc $4$ n'est pas jovial.

**3.** Soit $p$ un nombre premier. Supposons, par l'absurde, que $p$ est jovial d'ordre $n$. Comme
$\frac{1}{p} \neq 1$, on a $n \geqslant 2$, et
$$\frac{1}{a_1} + \cdots + \frac{1}{a_{n-1}} + \frac{1}{p} = 1, \qquad \text{avec } 2 \leqslant a_i \leqslant p - 1 \text{ pour } i \leqslant n - 1.$$
Notons $M = a_1 a_2 \cdots a_{n-1}$ et multiplions l'égalité par $Mp$ :
$$\frac{Mp}{a_1} + \cdots + \frac{Mp}{a_{n-1}} + M = Mp.$$
Pour chaque $i \leqslant n - 1$, le nombre $\frac{Mp}{a_i}$ est le produit de $p$ et des
$a_j$ autres que $a_i$ : c'est un multiple de $p$. Le membre de droite $Mp$ aussi. Donc
$M = Mp - \frac{Mp}{a_1} - \cdots - \frac{Mp}{a_{n-1}}$ est un multiple de $p$.

Mais chaque $a_i$ est compris entre $2$ et $p - 1$, donc tous ses facteurs premiers sont
strictement plus petits que $p$. La décomposition de $M$ en produit de facteurs premiers
s'obtient en mettant bout à bout celles des $a_i$ : elle ne contient pas $p$. Par unicité de la
décomposition, $M$ n'est pas un multiple de $p$. C'est une contradiction.

**Conclusion :** un nombre premier n'est jamais jovial.

**4.** Les entiers $2$ et $4$ ne sont pas joviaux (question 2), ni $3$ et $5$, qui sont premiers
(question 3). En revanche
$$\frac{1}{2} + \frac{1}{3} + \frac{1}{6} = \frac{3 + 2 + 1}{6} = 1,$$
donc $6$ est jovial d'ordre $3$. **Le plus petit entier jovial est $6$.**

**5.** Soient $2 \leqslant a_1 < a_2 < a_3$ avec $\frac{1}{a_1} + \frac{1}{a_2} + \frac{1}{a_3} = 1$.

Si $a_1 \geqslant 3$, alors $a_2 \geqslant 4$ et $a_3 \geqslant 5$, et la somme vaut au plus
$\frac{1}{3} + \frac{1}{4} + \frac{1}{5} = \frac{47}{60} < 1$. Donc $a_1 = 2$, et
$\frac{1}{a_2} + \frac{1}{a_3} = \frac{1}{2}$.

Comme $a_2 < a_3$, on a $\frac{1}{a_3} < \frac{1}{a_2}$, donc $\frac{1}{2} < \frac{2}{a_2}$,
c'est-à-dire $a_2 < 4$. Avec $a_2 > a_1 = 2$, il reste $a_2 = 3$, puis
$\frac{1}{a_3} = \frac{1}{2} - \frac{1}{3} = \frac{1}{6}$, soit $a_3 = 6$.

**Conclusion :** la seule écriture possible est $\frac{1}{2} + \frac{1}{3} + \frac{1}{6}$, et le
seul entier jovial d'ordre $3$ est $6$.

**6.** Soit $p$ jovial d'ordre $n$ : $\frac{1}{a_1} + \cdots + \frac{1}{a_n} = 1$ avec
$2 \leqslant a_1 < \cdots < a_n = p$.

*L'entier $2p$.* En divisant par $2$ et en ajoutant $\frac{1}{2}$ :
$$\frac{1}{2} + \frac{1}{2a_1} + \frac{1}{2a_2} + \cdots + \frac{1}{2a_n} = \frac{1}{2} + \frac{1}{2} = 1.$$
Comme $a_1 \geqslant 2$, on a $2 < 2a_1 < 2a_2 < \cdots < 2a_n = 2p$. Donc $2p$ est jovial (d'ordre
$n + 1$).

*L'entier $p(p + 1)$.* On a
$$\frac{1}{p} = \frac{1}{p + 1} + \frac{1}{p(p + 1)}, \qquad \text{car} \qquad \frac{1}{p} - \frac{1}{p + 1} = \frac{(p + 1) - p}{p(p + 1)} = \frac{1}{p(p + 1)}.$$
En remplaçant $\frac{1}{p}$ par ces deux fractions :
$$\frac{1}{a_1} + \cdots + \frac{1}{a_{n-1}} + \frac{1}{p + 1} + \frac{1}{p(p + 1)} = 1.$$
Les dénominateurs sont bien rangés dans l'ordre strictement croissant :
$a_{n-1} < p < p + 1 < p(p + 1)$ (car $p \geqslant 2$). Donc $p(p + 1)$ est jovial (d'ordre
$n + 1$).

**7.** Soient $p$ jovial d'ordre $n$ et $q$ jovial d'ordre $m$ :
$$\frac{1}{a_1} + \cdots + \frac{1}{a_{n-1}} + \frac{1}{p} = 1 \qquad \text{et} \qquad \frac{1}{b_1} + \cdots + \frac{1}{b_m} = 1,$$
avec $2 \leqslant a_1 < \cdots < a_{n-1} < p$ et $2 \leqslant b_1 < \cdots < b_m = q$. En divisant
la seconde égalité par $p$ :
$$\frac{1}{p} = \frac{1}{p b_1} + \frac{1}{p b_2} + \cdots + \frac{1}{p b_m}.$$
On remplace $\frac{1}{p}$ dans la première égalité :
$$\frac{1}{a_1} + \cdots + \frac{1}{a_{n-1}} + \frac{1}{p b_1} + \cdots + \frac{1}{p b_m} = 1.$$
Les dénominateurs sont rangés dans l'ordre strictement croissant, car
$a_{n-1} < p < 2p \leqslant p b_1 < p b_2 < \cdots < p b_m = pq$. Donc $pq$ est jovial (d'ordre
$n + m - 1$).

**Bilan.** Le plus petit entier jovial est $6$, seul jovial d'ordre $3$ ; il n'y en a aucun
d'ordre $2$ ; un nombre premier n'est jamais jovial. Si $p$ est jovial, alors $2p$ et $p(p + 1)$
le sont, et le produit de deux entiers joviaux est jovial.

## Going further

- Avec la question 6, à partir de $6$, on obtient que $6 \times 7 = 42$ est jovial d'ordre $4$,
  puis $42 \times 43 = 1806$ d'ordre $5$, et ainsi de suite. Dans la suite du sujet, on
  démontrait que ce sont les **plus grands** entiers joviaux de chaque ordre (exercices 40685,
  40686 et 40687).
- Montrer que $15$ est jovial. Est-il le plus petit entier jovial impair ?
- Le même genre de question, plus ouvert : exercices 11202 (cent fractions de numérateur $1$ de
  somme $1$) et 8678.
