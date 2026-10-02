---
id: "10834"
title: "nᵏ + t n'est jamais une puissance"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [puissances, decomposition-en-facteurs-premiers, congruences, construction, pgcd, encadrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 1 (arithmétique)"
  reference: "2017-10_ofm-2015-2016-envoi-1.pdf, Exercices du groupe A, exercice 9 ; corrigé 2017-10_ofm-2015-2016-envoi-1-solutions.pdf (les deux cas du corrigé, t + 1 puissance ou non, sont réunis ici en un seul)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-1.pdf"
---

## Statement

Soit $t \geqslant 1$ un entier. Montrer qu'il existe un entier $n > 1$, premier avec $t$, tel que pour tout entier $k \geqslant 1$, le nombre

$$n^k + t$$

ne soit pas une puissance, c'est-à-dire ne s'écrive pas $m^r$ avec $m \geqslant 1$ et $r \geqslant 2$ entiers.

## Hints

1. Pour que $n$ soit premier avec $t$, cherche $n$ sous la forme $1 + t \times s$.
2. Essaie $s = (t + 1)^2$. Montre que $n^k + t = (t + 1) \times B$, où $B$ n'a aucun facteur premier commun avec $t + 1$.
3. Si $n^k + t = b^d$, compare les exposants des nombres premiers qui divisent $t + 1$. Si $t + 1$ n'est pas lui-même une puissance, c'est déjà fini.
4. Sinon, remplace $n$ par une puissance bien choisie de $n$, pour que $n^k$ soit aussi une puissance $d$-ième. Alors $t$ serait la différence de deux puissances $d$-ièmes : pourquoi est-ce impossible ?

## Solution

### Notations et rappels

On écrit $u \equiv v \pmod M$ quand $u - v$ est un multiple de $M$. On peut ajouter et multiplier ces relations comme des égalités ; en particulier $u \equiv 1$ donne $u^j \equiv 1 \pmod M$.

Pour un nombre premier $q$ et un entier $N \geqslant 1$, on appelle *exposant de $q$ dans $N$* le nombre de fois que $q$ apparaît dans la décomposition de $N$ en facteurs premiers. Dans une puissance $b^d$, l'exposant de chaque nombre premier est $d$ fois son exposant dans $b$ : c'est donc un **multiple de $d$**.

### Étape 1 : le choix de $n$

Le nombre $t + 1 \geqslant 2$ a au moins un facteur premier. Notons $r$ le $\mathrm{PGCD}$ des exposants des nombres premiers dans la décomposition de $t + 1$. Par exemple, pour $t + 1 = 12 = 2^2 \times 3$, on a $r = \mathrm{PGCD}(2, 1) = 1$, et pour $t + 1 = 36 = 2^2 \times 3^2$, on a $r = 2$. Posons
$$n_0 = 1 + t\,(t + 1)^2 \qquad \text{et} \qquad n = n_0^{\,r} .$$

*$n$ convient pour les deux premières conditions.* On a $n_0 > 1$, donc $n > 1$. Un diviseur commun de $n_0$ et de $t$ divise $n_0 - t(t + 1)^2 = 1$ : donc $n_0$ et $t$ sont premiers entre eux. Un nombre premier qui diviserait $n = n_0^{\,r}$ et $t$ diviserait $n_0$ et $t$ : il n'y en a pas. **Donc $n$ est premier avec $t$.**

Remarquons aussi que $n_0 > t$.

### Étape 2 : la forme de $n^k + t$

On a $n_0 \equiv 1 \pmod{(t + 1)^2}$, donc $n = n_0^{\,r} \equiv 1$, et $n^k \equiv 1 \pmod{(t + 1)^2}$ pour tout $k \geqslant 1$. Il existe donc un entier $A \geqslant 0$ tel que $n^k - 1 = A\,(t + 1)^2$, et
$$n^k + t = (t + 1) + \left(n^k - 1\right) = (t + 1) \times B, \qquad \text{avec } B = 1 + A\,(t + 1) .$$
Un nombre premier $q$ qui divise $t + 1$ ne divise pas $B$, puisque $B - A(t + 1) = 1$. Donc :

> **pour tout nombre premier $q$ qui divise $t + 1$, l'exposant de $q$ dans $n^k + t$ est égal à son exposant dans $t + 1$.**

### Étape 3 : si $n^k + t = b^d$, alors $d$ divise $r$

Supposons par l'absurde que $n^k + t = b^d$ pour des entiers $k \geqslant 1$, $b \geqslant 1$ et $d \geqslant 2$. Soit $q$ un nombre premier qui divise $t + 1$. D'après l'étape 2, son exposant dans $t + 1$ est égal à son exposant dans $b^d$, qui est un multiple de $d$. Ainsi $d$ divise tous les exposants de la décomposition de $t + 1$, donc **$d$ divise leur $\mathrm{PGCD}$ $r$**. Écrivons $r = d\,e$, avec $e \geqslant 1$ entier.

(Si $t + 1$ n'est pas une puissance, alors $r = 1$, et on a déjà une contradiction puisque $d \geqslant 2$ ne divise pas $1$.)

### Étape 4 : $t$ serait une différence de deux puissances $d$-ièmes

On a $n^k = n_0^{\,r k} = n_0^{\,d e k} = c^d$, avec $c = n_0^{\,e k}$. L'égalité $n^k + t = b^d$ s'écrit donc
$$t = b^d - c^d .$$
Comme $t > 0$, on a $b > c$, donc $b - c \geqslant 1$. En factorisant,
$$t = b^d - c^d = (b - c)\left(b^{d-1} + b^{d-2}\,c + \cdots + c^{d-1}\right) \geqslant 1 \times c^{d-1} \geqslant c .$$
En effet, tous les termes de la grande parenthèse sont positifs, et le dernier vaut $c^{d-1}$, qui est au moins égal à $c$ puisque $d - 1 \geqslant 1$. Enfin $c = n_0^{\,e k} \geqslant n_0$, car $e k \geqslant 1$.

On obtient $t \geqslant n_0 > t$, ce qui est absurde.

### Conclusion

Pour tout $k \geqslant 1$, le nombre $n^k + t$ n'est pas une puissance. **L'entier $n = \left(1 + t\,(t + 1)^2\right)^r$ répond à la question.**

## Going further

1. Pour $t = 1$, que vaut $n$ ? Vérifie directement que $5^k + 1$ n'est jamais un carré. *Indication : regarde les restes modulo $4$.*
2. Pour $t = 3$, la méthode donne $n = 49^2$. Montre que $n = 49$ convient déjà pour les carrés : $49^k + 3$ n'est jamais un carré parfait.
