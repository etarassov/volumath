---
id: "8210"
title: "Si x + 1/x est entier, alors xⁿ + 1/xⁿ aussi"
grade: 11
theme: algebra
difficulty: 3
duration_min: 30
tags: [recurrence double, calcul algebrique, entiers, inverse]
adapted_from: null
see_also: ["7076"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe A et de Groupe B"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », première partie, « TD manipulations algébriques, récurrence » (Yohann D'Anello), exercice 5 ; le même exercice est repris au chapitre IV « Groupe B », « Principe des tiroirs, récurrence », exercice 22"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Soit $x$ un nombre réel non nul tel que $x + \dfrac{1}{x}$ soit un **entier**.

Montrer que, pour tout entier naturel $n$, le nombre

$$x^n + \frac{1}{x^n}$$

est lui aussi un entier.

## Hints

1. Vérifie d'abord les tout premiers cas : que valent $x^0 + \dfrac1{x^0}$ et $x^1 + \dfrac1{x^1}$ ?
2. Note $S_n = x^n + \dfrac1{x^n}$. On veut montrer que tous les $S_n$ sont entiers, en sachant que $S_0$ et $S_1$ le sont. Cela sent la récurrence : il faut relier $S_{n+2}$ aux termes précédents.
3. Pour faire apparaître $S_{n+2}$, essaie de multiplier $S_1$ par $S_{n+1}$ et regarde ce que donne le développement.
4. Tu obtiendras quatre termes. Deux d'entre eux se recollent en $S_{n+2}$, les deux autres en $S_n$.
5. Comme la relation fait intervenir **deux** rangs précédents, c'est une récurrence double : il faut initialiser à deux rangs.

## Solution

**Notation.** Posons, pour tout entier naturel $n$,

$$S_n = x^n + \frac{1}{x^n} .$$

C'est bien défini puisque $x \ne 0$. On veut montrer que $S_n$ est entier pour tout $n$.

**La relation de récurrence.**

Multiplions $S_1$ par $S_{n+1}$ et développons :

$$\left(x + \frac{1}{x}\right)\left(x^{n+1} + \frac{1}{x^{n+1}}\right) = x \cdot x^{n+1} + x \cdot \frac{1}{x^{n+1}} + \frac{1}{x}\cdot x^{n+1} + \frac{1}{x}\cdot\frac{1}{x^{n+1}} .$$

Traitons les quatre morceaux :

- $x \cdot x^{n+1} = x^{n+2}$ ;
- $\dfrac{1}{x}\cdot\dfrac{1}{x^{n+1}} = \dfrac{1}{x^{n+2}}$ ;
- $x \cdot \dfrac{1}{x^{n+1}} = \dfrac{1}{x^{n}}$ ;
- $\dfrac{1}{x}\cdot x^{n+1} = x^{n}$.

Les deux premiers se recollent en $S_{n+2}$, les deux derniers en $S_n$. Donc

$$S_1 \, S_{n+1} = S_{n+2} + S_n ,$$

c'est-à-dire

$$S_{n+2} = S_1 \, S_{n+1} - S_n . \qquad (\star)$$

**La récurrence double.**

Montrons par récurrence double la propriété $P_n$ : « $S_n$ est un entier ».

*Initialisation.* Il faut deux rangs, car la relation $(\star)$ en utilise deux.

- $S_0 = x^0 + \dfrac{1}{x^0} = 1 + 1 = 2$, qui est entier. Donc $P_0$ est vraie.
- $S_1 = x + \dfrac1x$ est entier **par hypothèse**. Donc $P_1$ est vraie.

*Hérédité.* Soit $n$ un entier naturel tel que $P_n$ et $P_{n+1}$ soient vraies, c'est-à-dire tel que $S_n$ et $S_{n+1}$ soient des entiers. La relation $(\star)$ donne

$$S_{n+2} = S_1 \, S_{n+1} - S_n .$$

Le membre de droite est obtenu à partir des trois entiers $S_1$, $S_{n+1}$ et $S_n$ par une multiplication et une soustraction. C'est donc un entier. Ainsi $P_{n+2}$ est vraie.

*Conclusion.* Par le principe de récurrence double, $P_n$ est vraie pour tout entier naturel $n$ :

$$\boxed{x^n + \frac{1}{x^n} \text{ est un entier, pour tout } n \in \mathbb{N} .}$$

**Un exemple.** Prenons $x + \dfrac1x = 3$, c'est-à-dire $x = \dfrac{3 + \sqrt5}{2}$, un nombre parfaitement irrationnel. La relation $(\star)$ donne

$$S_0 = 2, \quad S_1 = 3, \quad S_2 = 3 \times 3 - 2 = 7, \quad S_3 = 3 \times 7 - 3 = 18, \quad S_4 = 3 \times 18 - 7 = 47, \ \ldots$$

Tous entiers, sans avoir jamais calculé une seule racine carrée.

## Going further

Que devient le résultat si l'on suppose seulement que $x + \dfrac1x$ est **rationnel** ? Et si $x + \dfrac1x$ est entier, le nombre $x^n - \dfrac1{x^n}$ est-il entier lui aussi ?
