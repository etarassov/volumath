---
id: "40607"
title: "7a² = b² + c² + d² n'a que la solution nulle"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [carres-modulo-8, parite, somme-de-carres, descente-infinie, equation-diophantienne, raisonnement-par-l-absurde]
adapted_from: null
see_also: ["40606", "40608", "40609", "8826", "8468"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2017, mathématiques, série S"
  reference: "cg-2017-s-sujet.pdf, problème III « Dans l'espace tout entier », partie A, question 4 (a et b)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2017.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2017-s-sujet.pdf"
---

## Statement

1. Montrer que si $x$ est un entier, alors il existe un entier $t$ tel que $x^2$ soit égal à $8t$,
   à $8t + 1$ ou à $8t + 4$.
2. Montrer que si $a$, $b$, $c$ et $d$ sont des entiers tels que
   $$7a^2 = b^2 + c^2 + d^2 ,$$
   alors $a = b = c = d = 0$.

## Hints

1. **Question 1.** Distinguer $x$ pair et $x$ impair. Si $x = 2y$ est pair, distinguer encore
   $y$ pair et $y$ impair.
2. **Question 1.** Si $x = 2y + 1$, alors $x^2 = 4y(y + 1) + 1$. Que dire du produit $y(y + 1)$
   de deux entiers consécutifs ?
3. **Question 2.** D'après la question 1, quels restes peut donner $b^2 + c^2 + d^2$ dans la
   division par $8$ ? Et $7a^2$ quand $a$ est impair ?
4. **Question 2.** Donc $a$ est pair, et $b^2 + c^2 + d^2$ est un multiple de $4$. Un carré pair
   est multiple de $4$, un carré impair est de la forme $4s + 1$ : en déduire que $b$, $c$ et $d$
   sont pairs.
5. **Question 2.** Alors $\frac{a}{2}$, $\frac{b}{2}$, $\frac{c}{2}$, $\frac{d}{2}$ vérifient la
   même égalité. Que se passe-t-il si l'on recommence ? Raisonner sur une solution où $a \neq 0$
   est le plus petit possible.

## Solution

**1.** *Si $x$ est impair*, $x = 2y + 1$ et
$$x^2 = 4y^2 + 4y + 1 = 4y(y + 1) + 1 .$$
Parmi deux entiers consécutifs $y$ et $y + 1$, l'un est pair, donc $y(y + 1) = 2t$ pour un
entier $t$, et $x^2 = 8t + 1$.

*Si $x$ est pair*, $x = 2y$ et $x^2 = 4y^2$.

- Si $y$ est pair, $y = 2z$ et $x^2 = 16z^2 = 8 \times 2z^2$ : $x^2 = 8t$ avec $t = 2z^2$.
- Si $y$ est impair, $y = 2z + 1$ et $x^2 = 4(4z^2 + 4z + 1) = 8(2z^2 + 2z) + 4$ : $x^2 = 8t + 4$
  avec $t = 2z^2 + 2z$.

**Conclusion :** le reste de la division de $x^2$ par $8$ est toujours $0$, $1$ ou $4$. Retenons
aussi que $x^2 = 8t + 1$ exactement quand $x$ est impair.

**2.** *Le cas $a = 0$.* Alors $b^2 + c^2 + d^2 = 0$, et une somme de carrés n'est nulle que si
chacun l'est : $b = c = d = 0$.

*Étape 1 : $a$ est pair.* D'après la question 1, chacun des nombres $b^2$, $c^2$, $d^2$ donne le
reste $0$, $1$ ou $4$ dans la division par $8$. Le reste de leur somme est donc celui de l'une
des sommes de trois nombres pris dans $\{0, 1, 4\}$ :
$$0,\ 1,\ 2,\ 3,\ 4,\ 5,\ 6,\ 8,\ 9,\ 12 ,$$
c'est-à-dire l'un des restes $0, 1, 2, 3, 4, 5, 6$ : jamais $7$. Or, si $a$ est impair,
$a^2 = 8t + 1$ et $7a^2 = 56t + 7 = 8 \times 7t + 7$ donne le reste $7$. C'est impossible, donc
$a$ est pair.

*Étape 2 : $b$, $c$ et $d$ sont pairs.* Écrivons $a = 2a'$. Alors
$b^2 + c^2 + d^2 = 7a^2 = 4 \times 7a'^2$ est un multiple de $4$. D'après la question 1, le carré
d'un entier pair est un multiple de $4$ ($8t$ ou $8t + 4$), et le carré d'un entier impair est
$8t + 1 = 4 \times 2t + 1$. Donc $b^2 + c^2 + d^2 = 4N + q$, où $q$ est le nombre d'entiers
impairs parmi $b$, $c$, $d$. Comme $0 \leq q \leq 3$ et que la somme est un multiple de $4$, on a
$q = 0$ : $b$, $c$ et $d$ sont pairs.

*Étape 3 : une solution plus petite.* Écrivons $b = 2b'$, $c = 2c'$, $d = 2d'$. En divisant
l'égalité par $4$, on obtient
$$7a'^2 = b'^2 + c'^2 + d'^2 .$$
Les entiers $\frac{a}{2}, \frac{b}{2}, \frac{c}{2}, \frac{d}{2}$ forment encore une solution.

*Conclusion par l'absurde.* Supposons qu'il existe une solution qui n'est pas $(0, 0, 0, 0)$.
D'après le cas $a = 0$, on a alors $a \neq 0$. Parmi toutes les solutions avec $a \neq 0$,
choisissons-en une pour laquelle $|a|$ est le plus petit possible (c'est un entier naturel non
nul). D'après les étapes 1 à 3, $\left(\frac{a}{2}, \frac{b}{2}, \frac{c}{2}, \frac{d}{2}\right)$
est aussi une solution, avec $\frac{a}{2} \neq 0$ et $\frac{|a|}{2} < |a|$. Cela
contredit le choix de $a$.

**Conclusion :** la seule solution en entiers de $7a^2 = b^2 + c^2 + d^2$ est
$a = b = c = d = 0$.

**Bilan.** Un carré donne le reste $0$, $1$ ou $4$ dans la division par $8$, donc une somme de
trois carrés ne donne jamais le reste $7$. Cela force $a$, puis $b$, $c$, $d$, à être pairs ; on
peut alors tout diviser par $2$, indéfiniment, ce qui n'est possible que pour des nombres tous
nuls. C'est une *descente infinie*.

## Going further

- Le même argument montre qu'aucun entier de la forme $8t + 7$ n'est une somme de trois carrés.
  Vérifier que $1, 2, 3, 4, 5, 6$ sont des sommes de trois carrés, mais pas $7$, ni $15$.
- L'exercice 8826 demande le plus petit entier $n$ pour lequel $a^2 + b^2 + c^2 = n\,d^2$ n'a que
  la solution nulle. Le résultat ci-dessus en est l'étape principale.
- Dans le sujet, ce résultat servait à montrer qu'aucun triangle à sommets entiers de l'espace
  n'a les mêmes angles que le triangle isocèle de côtés $2$, $2$ et $3$ : voir l'exercice 40609.
