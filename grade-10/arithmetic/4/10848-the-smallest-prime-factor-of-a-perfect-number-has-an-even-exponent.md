---
id: "10848"
title: "Le plus petit facteur premier d'un nombre parfait"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [diviseurs, nombres-premiers, decomposition-en-facteurs-premiers, somme-geometrique, factorisation, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 2 (arithmétique)"
  reference: "2018-11_envoi-2.pdf, Exercices Juniors, exercice 3 ; corrigé 2018-12_corrige-envoi-2.pdf (le corrigé recopie l'énoncé sans la condition n > 6, sans laquelle il est faux : 6 = 2 × 3)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/11/envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-11_envoi-2.pdf"
---

## Statement

On dit qu'un entier $n \geqslant 2$ est **parfait** si la somme de tous ses diviseurs positifs, $1$ et $n$ compris, vaut $2n$. Par exemple $6$ est parfait, car $1 + 2 + 3 + 6 = 12$.

Soit $n > 6$ un nombre parfait, et soit $p$ le plus petit nombre premier qui divise $n$.

Montrer que l'exposant de $p$ dans la décomposition de $n$ en produit de facteurs premiers est **pair**.

## Hints

1. Vérifie l'énoncé sur le nombre parfait $28$. Pourquoi faut-il exclure $6$ ?
2. Écris $n = p^a \times r$, où $p$ ne divise pas $r$. Montre que la somme des diviseurs de $n$ vaut $\left(1 + p + \cdots + p^a\right) \times (\text{la somme des diviseurs de } r)$.
3. Si $a$ est impair, regroupe les termes de $1 + p + \cdots + p^a$ deux par deux. Montre que $p + 1$ divise alors $2n$.
4. Si $p$ est impair, regarde le nombre $(p + 1)/2$. Si $p = 2$, montre que $6$ divise $n$, puis trouve cinq diviseurs de $n$ dont la somme dépasse $2n$.

## Solution

Pour un entier $m \geqslant 1$, notons $\sigma(m)$ la somme des diviseurs positifs de $m$. Ainsi $n$ est parfait quand $\sigma(n) = 2n$. Écrivons
$$n = p^a \times r, \qquad \text{avec } a \geqslant 1 \text{ et } p \text{ qui ne divise pas } r .$$
Il faut montrer que $a$ est pair. On raisonne par l'absurde : **supposons $a$ impair.**

### Étape 1 : la somme des diviseurs se factorise

**Lemme.** $\sigma(n) = \left(1 + p + p^2 + \cdots + p^a\right) \times \sigma(r)$.

*Preuve.* Un diviseur de $n$ n'a pas d'autres facteurs premiers que ceux de $n$, et son exposant de $p$ est au plus $a$. Il s'écrit donc $p^i \times d$, avec $0 \leqslant i \leqslant a$ et $d$ un diviseur de $r$. Réciproquement, chacun de ces produits divise $n$. Enfin, deux couples $(i, d)$ différents donnent deux nombres différents : comme $p$ ne divise pas $d$, l'exposant de $p$ dans $p^i \times d$ est exactement $i$, ce qui détermine $i$, puis $d$. Les diviseurs de $n$ sont donc exactement les produits $p^i \times d$, chacun une seule fois, et
$$\sigma(n) = \sum_{i = 0}^{a} \ \sum_{d \text{ divise } r} p^i\,d = \left(1 + p + \cdots + p^a\right) \times \sigma(r) .$$

### Étape 2 : $p + 1$ divise $2n$

Comme $a$ est impair, la somme $1 + p + \cdots + p^a$ a un nombre pair de termes, $a + 1$. On les regroupe deux par deux :
$$1 + p + \cdots + p^a = (1 + p) + p^2 (1 + p) + \cdots + p^{a-1}(1 + p) = (1 + p)\left(1 + p^2 + \cdots + p^{a-1}\right) .$$
Donc $p + 1$ divise $1 + p + \cdots + p^a$. D'après le lemme, il divise $\sigma(n)$, c'est-à-dire **$p + 1$ divise $2n$.**

### Étape 3 : le cas où $p$ est impair

Si $p$ est impair, alors $2$ ne divise pas $n$ (sinon $2$ serait un facteur premier de $n$ plus petit que $p$).

Le nombre $p + 1$ est pair : écrivons $p + 1 = 2s$, avec $s = (p + 1)/2$. Comme $p \geqslant 3$, on a $s \geqslant 2$ et
$$s = \frac{p + 1}{2} < p .$$
D'après l'étape 2, $2s$ divise $2n$, donc $s$ divise $n$. Soit $q$ un nombre premier qui divise $s$. Alors $q$ divise $n$, et $q \leqslant s < p$. C'est impossible, puisque $p$ est le plus petit facteur premier de $n$.

### Étape 4 : le cas $p = 2$

Si $p = 2$, l'étape 2 dit que $3$ divise $2n$. Comme $3$ est premier et ne divise pas $2$, il divise $n$. Ainsi $2$ et $3$ divisent $n$, donc $6$ divise $n$.

Les nombres
$$1, \qquad \frac{n}{6}, \qquad \frac{n}{3}, \qquad \frac{n}{2}, \qquad n$$
sont alors des diviseurs de $n$. Ils sont tous différents, car $n > 6$ donne $n/6 > 1$, et $n/6 < n/3 < n/2 < n$. Donc
$$\sigma(n) \geqslant 1 + \frac{n}{6} + \frac{n}{3} + \frac{n}{2} + n = 1 + n + n = 2n + 1 ,$$
car $1/6 + 1/3 + 1/2 = 1$. C'est impossible, puisque $\sigma(n) = 2n$.

### Conclusion

Dans les deux cas, supposer $a$ impair mène à une contradiction. **L'exposant de $p$ dans la décomposition de $n$ est donc pair.**

## Going further

1. Où a-t-on utilisé la condition $n > 6$ ? Vérifie que l'énoncé est faux pour $n = 6$.
2. Les nombres parfaits connus sont tous pairs : $6$, $28 = 2^2 \times 7$, $496 = 2^4 \times 31$, $8128 = 2^6 \times 127$, … Vérifie l'énoncé sur ces exemples. *On ne sait pas aujourd'hui s'il existe un nombre parfait impair : c'est l'un des plus vieux problèmes ouverts des mathématiques.*
