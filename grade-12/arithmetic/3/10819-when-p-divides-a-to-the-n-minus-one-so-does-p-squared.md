---
id: "10819"
title: "Quand p divise aⁿ − 1, p² le divise aussi"
grade: 12
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [nombres-premiers, congruences, petit-theoreme-de-fermat, factorisation, somme-geometrique, maths-expertes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 3 (arithmétique)"
  reference: "2017-10_ofm-2014-2015-envoi-3.pdf, Exercices du groupe B, exercice 3 ; corrigé 2017-10_ofm-2014-2015-envoi-3-solutions.pdf. Le même problème est l'exercice 7 du test d'entraînement de novembre 2012 (2017-10_ofm-2012-2013-test-novembre.pdf)."
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-3.pdf"
---

## Statement

Soit $p$ un nombre premier. Trouver tous les entiers $n \geqslant 1$ qui ont la propriété suivante :

> pour tout entier $a \geqslant 1$, si $a^n - 1$ est divisible par $p$, alors $a^n - 1$ est aussi divisible par $p^2$.

## Hints

1. Prends $p = 3$. La propriété est-elle vraie pour $n = 1$ ? pour $n = 2$ ? Essaie $a = 4$, puis $a = 2$.
2. Factorise $a^n - 1$ par $a - 1$. Si $a \equiv 1 \pmod p$, que vaut l'autre facteur modulo $p$ ?
3. Si $p$ ne divise pas $n$, essaie $a = p + 1$.
4. Si $n = pm$, utilise le petit théorème de Fermat pour montrer que $a^n \equiv a^m \pmod p$.

## Solution

**Réponse : ce sont exactement les multiples de $p$.**

### Un outil : la somme géométrique

Pour tout entier $x$ et tout entier $k \geqslant 1$,
$$x^k - 1 = (x - 1)\left(1 + x + x^2 + \cdots + x^{k-1}\right) .$$
En effet, en développant le membre de droite, tous les termes se simplifient deux à deux sauf $x^k$ et $-1$.

Si de plus $x \equiv 1 \pmod p$, alors chaque puissance $x^i$ est congrue à $1$, donc
$$1 + x + x^2 + \cdots + x^{k-1} \equiv \underbrace{1 + 1 + \cdots + 1}_{k \text{ termes}} = k \pmod p . \qquad (\star)$$

### Étape 1 : si $p$ ne divise pas $n$, la propriété est fausse

Prenons $a = p + 1$. Alors $a - 1 = p$, et d'après la somme géométrique,
$$a^n - 1 = p \times S, \qquad \text{avec } S = 1 + a + \cdots + a^{n-1} .$$
Donc $p$ divise $a^n - 1$. Mais $a \equiv 1 \pmod p$, donc d'après $(\star)$, $S \equiv n \pmod p$. Comme $p$ ne divise pas $n$, il ne divise pas $S$. Le nombre $a^n - 1 = p \times S$ contient donc le facteur premier $p$ une seule fois : **il n'est pas divisible par $p^2$.**

L'entier $n$ ne convient pas.

### Étape 2 : si $n$ est un multiple de $p$, la propriété est vraie

Écrivons $n = pm$, avec $m \geqslant 1$. Soit $a \geqslant 1$ un entier tel que $p$ divise $a^n - 1$.

*On montre d'abord que $a^m \equiv 1 \pmod p$.* Le **petit théorème de Fermat** dit que $x^p \equiv x \pmod p$ pour tout entier $x$. Avec $x = a^m$ :
$$a^n = \left(a^m\right)^p \equiv a^m \pmod p .$$
Comme $a^n \equiv 1 \pmod p$, on en déduit $a^m \equiv 1 \pmod p$.

*On conclut.* Posons $x = a^m$. D'après la somme géométrique,
$$a^n - 1 = x^p - 1 = (x - 1)\left(1 + x + \cdots + x^{p-1}\right) .$$
Le premier facteur $x - 1$ est divisible par $p$. Le second est congru à $p$ modulo $p$ d'après $(\star)$, c'est-à-dire à $0$ : il est aussi divisible par $p$. Le produit de deux multiples de $p$ est un multiple de $p^2$. **Donc $p^2$ divise $a^n - 1$.**

### Conclusion

La propriété est vraie si et seulement si **$n$ est un multiple de $p$**.

*Exemple avec $p = 3$ :* pour $n = 2$ et $a = 2$, on a $a^2 - 1 = 3$, divisible par $3$ mais pas par $9$. Pour $n = 3$ et $a = 4$, on a $a^3 - 1 = 63 = 7 \times 9$.

## Going further

1. L'étape 2 contient un résultat utile : si $p$ divise $x - 1$, alors $p^2$ divise $x^p - 1$. Montre par récurrence que $p^{j+1}$ divise $x^{p^j} - 1$ pour tout $j \geqslant 0$.
2. Pour $p = 2$, la réponse dit que $n$ doit être pair. Vérifie directement que, si $a$ est impair, alors $a^2 - 1$ est même divisible par $8$.
