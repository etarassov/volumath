---
id: "12837"
title: "Les entiers olympiques"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [suites, recurrence, restes, divisibilite, multiples-de-3]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 22 novembre 2023"
  reference: "2025-01_Enonce-Test-1.pdf, test senior, exercice 4 ; corrigé 2025-01_Corrige-Test-1.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Enonce-Test-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-01_Enonce-Test-1.pdf"
---

## Statement

On dit qu'une suite d'entiers $a_0, a_1, a_2, \ldots$ est **olympique** lorsque $a_0 = 0$, $a_1 = 1$ et

$$\left(a_{n+2} - 3a_{n+1} + 2a_n\right)\left(a_{n+2} - 4a_{n+1} + 3a_n\right) = 0$$

pour tout entier $n \geq 0$. On dit qu'un entier est **olympique** s'il est l'un des termes d'au moins une suite olympique.

Soit $m$ un entier tel que $m$ et $m + 1$ soient tous deux olympiques. Démontrer que $m$ est un multiple de $3$, et que $\frac{m}{3}$ est lui aussi olympique.

## Hints

1. Un produit est nul quand l'un des facteurs est nul. Réécrivez la condition à l'aide des écarts $a_{n+1} - a_n$. Dessinez l'arbre de toutes les suites olympiques possibles jusqu'à $a_4$.
2. Regardez les restes des termes dans la division par $3$. Quel reste n'apparaît jamais ?
3. Attention : rien ne dit que $m$ et $m + 1$ sont dans la même suite olympique. Il faut un résultat qui parle d'un seul entier olympique à la fois.
4. Soit $(a_n)$ une suite olympique. Que dire de la suite $b_k = (a_{k+1} - 1) / (a_2 - 1)$ ? Déduisez-en que si $n \geq 1$ est olympique, alors $\frac{n-1}{2}$ ou $\frac{n-1}{3}$ est un entier olympique.

## Solution

### Étape 1 : la règle en termes d'écarts

Un produit est nul si et seulement si l'un des facteurs est nul. Pour chaque $n$, on a donc

- ou bien $a_{n+2} = 3a_{n+1} - 2a_n$, c'est-à-dire $a_{n+2} - a_{n+1} = 2\left(a_{n+1} - a_n\right)$,
- ou bien $a_{n+2} = 4a_{n+1} - 3a_n$, c'est-à-dire $a_{n+2} - a_{n+1} = 3\left(a_{n+1} - a_n\right)$.

Une suite olympique est donc obtenue en choisissant, à chaque étape, un facteur $d_n$ égal à $2$ ou à $3$, et en posant

$$a_{n+2} - a_{n+1} = d_n \left(a_{n+1} - a_n\right).$$

Par exemple, en prenant toujours $d_n = 2$ on obtient $0, 1, 3, 7, 15, \ldots$, et en prenant toujours $d_n = 3$ on obtient $0, 1, 4, 13, 40, \ldots$

Le premier écart vaut $a_1 - a_0 = 1$, et chaque écart est le précédent multiplié par $2$ ou $3$. Tous les écarts sont donc positifs : une suite olympique est croissante, et **tout entier olympique est positif ou nul**.

### Étape 2 : aucun entier olympique n'a pour reste 2 dans la division par 3

Dans le premier cas, $a_{n+2} - a_n = 3a_{n+1} - 3a_n$ est un multiple de $3$ : $a_{n+2}$ a le même reste que $a_n$ dans la division par $3$. Dans le second cas, $a_{n+2} - a_{n+1} = 3a_{n+1} - 3a_n$ est un multiple de $3$ : $a_{n+2}$ a le même reste que $a_{n+1}$.

Ainsi, chaque terme à partir de $a_2$ a le même reste que l'un des deux termes qui le précèdent. Comme $a_0 = 0$ et $a_1 = 1$ ont pour restes $0$ et $1$, une récurrence montre que **tous les termes ont pour reste $0$ ou $1$**. Aucun entier olympique n'a pour reste $2$.

### Étape 3 : le lemme clé

**Lemme.** Soit $n \geq 1$ un entier olympique. Alors il existe $d \in \{2, 3\}$ tel que $\frac{n - 1}{d}$ soit un entier olympique.

*Démonstration.* Soit $(a_k)$ une suite olympique qui contient $n$, et $d_0, d_1, d_2, \ldots$ ses facteurs, comme à l'étape 1. Écrivons $n = a_\ell$. Comme $a_0 = 0 \neq n$, on a $\ell \geq 1$. Posons $d = d_0$, et définissons une nouvelle suite par

$$b_k = \frac{a_{k+1} - 1}{d_0} \qquad \text{pour tout } k \geq 0.$$

Vérifions que cette suite est olympique.

- $b_0 = (a_1 - 1)/d_0 = 0$.
- $a_2 = a_1 + d_0\left(a_1 - a_0\right) = 1 + d_0$, donc $b_1 = (a_2 - 1)/d_0 = 1$.
- Pour tout $k \geq 0$,
$$b_{k+2} - b_{k+1} = \frac{a_{k+3} - a_{k+2}}{d_0} = \frac{d_{k+1}\left(a_{k+2} - a_{k+1}\right)}{d_0} = d_{k+1}\left(b_{k+1} - b_k\right).$$

La suite $(b_k)$ commence par $0, 1$ et suit la règle de l'étape 1, avec les facteurs $d_1, d_2, d_3, \ldots$ Ses termes sont des entiers : c'est vrai pour $b_0$ et $b_1$, et si $b_k$ et $b_{k+1}$ sont entiers, alors $b_{k+2} = b_{k+1} + d_{k+1}\left(b_{k+1} - b_k\right)$ l'est aussi. **La suite $(b_k)$ est donc olympique.**

Son terme $b_{\ell - 1} = (a_\ell - 1)/d_0 = (n - 1)/d$ est donc un entier olympique. $\square$

Par exemple, $13$ est olympique (il est dans la suite $0, 1, 4, 13, \ldots$), et $\frac{13 - 1}{3} = 4$ est olympique.

### Étape 4 : conclusion

Si $m = 0$, alors $m$ est un multiple de $3$ et $\frac{m}{3} = 0$ est olympique. Supposons désormais $m \neq 0$. Comme $m$ est olympique, il est positif ou nul (étape 1), donc $m \geq 1$.

**$m$ est un multiple de $3$.** D'après l'étape 2, ni $m$ ni $m + 1$ n'a pour reste $2$ dans la division par $3$. Si $m$ avait pour reste $1$, alors $m + 1$ aurait pour reste $2$. Le reste de $m$ est donc $0$.

**$m$ est impair.** On applique le lemme à $n = m$. Il existe $u \in \{2, 3\}$ tel que $\frac{m - 1}{u}$ soit un entier. Or $m - 1$ a pour reste $2$ dans la division par $3$, donc n'est pas un multiple de $3$. Ainsi $u = 2$ : $m - 1$ est pair, et $m$ est impair.

**$\frac{m}{3}$ est olympique.** On applique le lemme à $n = m + 1$. Il existe $v \in \{2, 3\}$ tel que $\frac{m}{v}$ soit un entier olympique. Comme $m$ est impair, $\frac{m}{2}$ n'est pas un entier, donc $v = 3$.

**Conclusion : $m$ est un multiple de $3$, et $\frac{m}{3}$ est un entier olympique.**

## Going further

1. Les entiers olympiques inférieurs à $50$ sont $0, 1, 3, 4, 7, 9, 10, 13, 15, 19, 21, 22, 27, 28, 31, 39, 40, 43, 45, 46$. Retrouvez quelques-uns d'entre eux dans l'arbre des suites olympiques, et vérifiez le résultat sur les couples $(m, m + 1)$ de cette liste.
2. Montrez que si $a_2 = 4$ dans une suite olympique, alors tous ses termes sauf $a_0$ ont pour reste $1$ dans la division par $3$, et que si $a_2 = 3$, alors tous ses termes sauf $a_0$ sont impairs.
