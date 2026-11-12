---
id: "22061"
title: "2ᵖ + 3ᵖ n'est jamais une puissance"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [nombres-premiers, puissances, factorisation, restes, congruences, decomposition-en-facteurs-premiers]
adapted_from: null
see_also: ["10808"]
same_as: []
created: 2026-10-26
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B (Irlande 1996)"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Équations diophantiennes, factorisation » (Augustin & Éva), exercice 7 (l'énoncé de la source parle de « a, b des entiers positifs » au lieu de a et n, et son corrigé écrit une fois 2^n + 3^n pour 2^p + 3^p ; il passe aussi par la formule du binôme, que la solution ci-dessous évite)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $p$ un nombre premier, et soient $a$ et $n$ des entiers strictement positifs tels que
$$2^p + 3^p = a^n.$$
Montrer que $n = 1$.

## Hints

1. Calculez $2^p + 3^p$ pour $p = 2, 3, 5$, et décomposez le résultat en facteurs premiers.
2. Quand $p$ est impair, montrez que $2^p + 3^p$ est un multiple de $5$. Si de plus $n \geq 2$, pourquoi est-il un multiple de $25$ ?
3. Pour $p$ impair, vérifiez que $2^p + 3^p = 5 \times S$ avec $S = 2^{p-1} - 2^{p-2} \times 3 + 2^{p-3} \times 3^2 - \cdots + 3^{p-1}$.
4. Pour savoir si $S$ est un multiple de $5$, remplacez $3$ par $-2$ dans chaque terme : on ne change pas le reste dans la division par $5$.

## Solution

**Deux outils.**

- *Les restes.* On note $x \equiv y \pmod{5}$ quand $x - y$ est un multiple de $5$. On peut additionner et multiplier de telles relations. Par exemple $3 \equiv -2 \pmod{5}$, donc $3^i \equiv (-2)^i \pmod{5}$ pour tout entier $i \geq 0$.
- *Les puissances.* Dans la décomposition en facteurs premiers de $a^n$, chaque nombre premier apparaît avec un exposant multiple de $n$, puisque c'est $n$ fois son exposant dans $a$.

On suppose par l'absurde que $n \geq 2$.

**Le cas $p = 2$.** On a $2^2 + 3^2 = 13$, qui est premier : il apparaît avec l'exposant $1$, qui n'est pas un multiple de $n \geq 2$. C'est impossible.

**Le cas $p$ impair.**

*Étape 1 : une factorisation.* Posons
$$S = 2^{p-1} - 2^{p-2} \times 3 + 2^{p-3} \times 3^2 - \cdots - 2 \times 3^{p-2} + 3^{p-1}.$$
Cette somme a $p$ termes, de signes alternés, et elle commence et finit par un signe $+$ car $p$ est impair. Quand on développe $(2 + 3) \times S$, chaque produit par $2$ donne un terme qui s'annule avec un produit par $3$ voisin, sauf le tout premier, $2 \times 2^{p-1} = 2^p$, et le tout dernier, $3 \times 3^{p-1} = 3^p$. Donc
$$2^p + 3^p = 5\,S.$$
Par exemple, pour $p = 3$ : $5 \times (4 - 6 + 9) = 5 \times 7 = 35 = 8 + 27$.

*Étape 2 : $5$ divise $a$, donc $25$ divise $a^n$.* Le nombre premier $5$ divise $5S = a^n$, donc il apparaît dans la décomposition de $a$, et donc dans celle de $a^n$ avec un exposant au moins égal à $n \geq 2$. Ainsi $25$ divise $a^n = 5S$, et $5$ divise $S$.

*Étape 3 : le reste de $S$.* Le terme de rang $i$ de $S$ (pour $i = 0, 1, \ldots, p - 1$) est $(-1)^i \times 2^{p-1-i} \times 3^i$. Comme $3 \equiv -2 \pmod{5}$,
$$(-1)^i \times 2^{p-1-i} \times 3^i \equiv (-1)^i \times 2^{p-1-i} \times (-2)^i = (-1)^i (-1)^i \times 2^{p-1-i} \times 2^i = 2^{p-1} \pmod{5}.$$
Les $p$ termes sont donc tous congrus à $2^{p-1}$, et $S \equiv p \times 2^{p-1} \pmod{5}$.

D'après l'étape 2, $5$ divise $S$, donc $5$ divise $p \times 2^{p-1}$. Il ne divise pas $2^{p-1}$, dont le seul facteur premier est $2$. Donc $5$ divise $p$, et comme $p$ est premier, $p = 5$.

*Étape 4 : le cas $p = 5$.* On calcule $2^5 + 3^5 = 32 + 243 = 275 = 5^2 \times 11$. Le nombre premier $11$ y apparaît avec l'exposant $1$, qui n'est pas un multiple de $n \geq 2$. C'est impossible.

**Conclusion.** Dans tous les cas, supposer $n \geq 2$ mène à une contradiction. Donc $n = 1$ : le nombre $2^p + 3^p$ n'est jamais une puissance $n$-ième d'entier avec $n \geq 2$.

## Going further

1. Montrer de la même façon que, pour $p$ premier impair, $5$ divise $2^p + 3^p$ mais que $25$ ne le divise que pour $p = 5$.
2. Calculez $S$ pour $p = 5$ terme par terme, et vérifiez que $S = 55$. Pourquoi l'étape 3 annonçait-elle que $S$ serait un multiple de $5$ ?
