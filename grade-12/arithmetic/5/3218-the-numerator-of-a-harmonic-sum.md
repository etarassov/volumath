---
id: "3218"
title: "Le numérateur d'une somme de dix-sept fractions"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 45
tags: [ppcm, congruences, nombres premiers, fractions, reste]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Math Competitions Training, Number theory review"
  reference: "Handout-4813-5008.pdf, exercice 2, d'après AMC 10A 2022, problème 19 (réponse dans Handout-4815-5008.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4813-5008.pdf"
---

## Statement

Pour un entier $n \ge 1$, on note $L_n$ le PPCM des entiers $1, 2, \ldots, n$.

Il existe un unique entier $h$ tel que

$$\frac11 + \frac12 + \frac13 + \cdots + \frac{1}{17} = \frac{h}{L_{17}} .$$

Quel est le reste de $h$ dans la division euclidienne par $17$ ?

*(Il n'est pas demandé de calculer $h$, qui a huit chiffres.)*

## Hints

1. Écris $L_{17}$ sous forme de produit de puissances de nombres premiers. Quelle est la puissance de $17$ qui y figure ?
2. Mets la somme au même dénominateur $L_{17}$. Que vaut alors $h$ ?
3. Regarde un terme $\dfrac{L_{17}}{k}$ pour $k \le 16$. Contient-il encore le facteur $17$ ?
4. Un seul des dix-sept termes perd le facteur $17$. Lequel ?
5. Il reste à calculer un produit modulo $17$. Remplace $16$ par $-1$, cela simplifie.

## Solution

**Le PPCM.**

Le PPCM de $1, 2, \ldots, 17$ s'obtient en prenant, pour chaque nombre premier $p \le 17$, la plus grande puissance de $p$ qui est $\le 17$ :

$$L_{17} = 2^4 \times 3^2 \times 5 \times 7 \times 11 \times 13 \times 17 .$$

Le point important est que **$17$ y figure à la puissance $1$ exactement**.

**Le numérateur.**

En mettant toutes les fractions au dénominateur commun $L_{17}$ :

$$\frac11 + \frac12 + \cdots + \frac{1}{17} = \frac{\dfrac{L_{17}}{1} + \dfrac{L_{17}}{2} + \cdots + \dfrac{L_{17}}{17}}{L_{17}} ,$$

donc

$$h = \sum_{k=1}^{17} \frac{L_{17}}{k} .$$

Chaque $\dfrac{L_{17}}{k}$ est bien un entier, puisque $k$ divise $L_{17}$.

**Seize termes sur dix-sept disparaissent modulo $17$.**

Soit $k$ compris entre $1$ et $16$. Comme $17$ est premier et $k < 17$, l'entier $k$ n'a pas $17$ dans sa décomposition. En divisant $L_{17}$ par $k$, le facteur $17$ reste donc intact :

$$17 \ \text{divise} \ \frac{L_{17}}{k} \qquad \text{pour } 1 \le k \le 16 .$$

Ces seize termes sont donc congrus à $0$ modulo $17$.

Il ne reste que le terme $k = 17$ :

$$h \equiv \frac{L_{17}}{17} \pmod{17}, \qquad \text{avec} \qquad \frac{L_{17}}{17} = 2^4 \times 3^2 \times 5 \times 7 \times 11 \times 13 = 16 \times 9 \times 5 \times 7 \times 11 \times 13 .$$

**Le calcul modulo $17$.**

On remplace $16$ par $-1$ (car $16 \equiv -1 \pmod{17}$) et on réduit au fur et à mesure :

$$16 \times 9 \equiv (-1) \times 9 = -9 \pmod{17}$$
$$-9 \times 5 = -45 \equiv -45 + 51 = 6 \pmod{17}$$
$$6 \times 7 = 42 \equiv 42 - 34 = 8 \pmod{17}$$
$$8 \times 11 = 88 \equiv 88 - 85 = 3 \pmod{17}$$
$$3 \times 13 = 39 \equiv 39 - 34 = 5 \pmod{17} .$$

**Conclusion.** Le reste de $h$ dans la division par $17$ vaut

$$5 .$$

*(Pour information, $L_{17} = 12\,252\,240$ et $h = 42\,142\,223$ ; on vérifie que $42\,142\,223 = 17 \times 2\,478\,954 + 5$.)*

## Going further

1. Refaire le raisonnement avec $\dfrac11 + \dfrac12 + \cdots + \dfrac{1}{13}$ et le reste modulo $13$.
2. Pour la même somme, chercher cette fois le reste de $h$ modulo $13$. Pourquoi la méthode fonctionne-t-elle encore ? Et pourquoi ne fonctionne-t-elle pas modulo $2$ ?
3. En déduire que la somme $\dfrac11 + \dfrac12 + \cdots + \dfrac{1}{17}$ n'est pas un entier. Généraliser : montrer que $\dfrac11 + \cdots + \dfrac1n$ n'est jamais entier pour $n \ge 2$, en utilisant cette fois la plus grande puissance de $2$ inférieure ou égale à $n$.
