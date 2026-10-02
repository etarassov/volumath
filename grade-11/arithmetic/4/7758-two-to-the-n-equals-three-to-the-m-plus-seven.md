---
id: "7758"
title: "2ⁿ = 3ᵐ + 7"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [equation-exponentielle, congruences, factorisation, parite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, la muraille"
  reference: "stage_ete_2014.pdf, « La muraille », exercice 69 (niveau 2, une étoile). Le polycopié ne donne pas de solution."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Trouver tous les couples d'entiers naturels $(n,\, m)$ tels que

$$2^n = 3^m + 7 .$$

## Hints

1. Essaie $m = 0, 1, 2, 3, 4$ et regarde si $3^m + 7$ tombe sur une puissance de $2$. Deux couples apparaissent vite.
2. Traite d'abord à part le cas $m = 0$, qui se règle en une ligne.
3. Pour $m \geqslant 1$, regarde l'égalité modulo $3$. Que peut valoir $2^n$ modulo $3$ ? Qu'en déduis-tu sur $n$ ?
4. Regarde maintenant modulo $8$. Que peut valoir $3^m$ modulo $8$ ? Qu'en déduis-tu sur $m$ ?
5. Tu sais désormais que $n$ et $m$ sont tous deux pairs. Écris $n = 2s$ et $m = 2t$, et reconnais une identité remarquable.

## Solution

**Les solutions sont $(n, m) = (3,\, 0)$ et $(n, m) = (4,\, 2)$.**

Vérification immédiate : $2^3 = 8 = 1 + 7 = 3^0 + 7$, et $2^4 = 16 = 9 + 7 = 3^2 + 7$.

Montrons qu'il n'y en a pas d'autres.

### Le cas $m = 0$

L'équation devient $2^n = 1 + 7 = 8$, donc $n = 3$. C'est la première solution.

Supposons désormais $m \geqslant 1$.

### Étape 1 : $n$ est pair

Comme $m \geqslant 1$, $3^m$ est un multiple de $3$, donc

$$2^n = 3^m + 7 \equiv 7 \equiv 1 \pmod 3 .$$

Or $2 \equiv -1 \pmod 3$, donc $2^n \equiv (-1)^n \pmod 3$. Il faut donc $(-1)^n \equiv 1$, c'est-à-dire

$$n \text{ pair} .$$

### Étape 2 : $m$ est pair

Comme $m \geqslant 1$, on a $3^m + 7 \geqslant 10$, donc $2^n \geqslant 10$ et $n \geqslant 4$. En particulier $8$ divise $2^n$, et

$$3^m \equiv -7 \equiv 1 \pmod 8 .$$

Or les puissances de $3$ modulo $8$ alternent :

$$3^1 \equiv 3, \quad 3^2 = 9 \equiv 1, \quad 3^3 \equiv 3, \quad 3^4 \equiv 1, \ \ldots$$

car $3^2 \equiv 1$. On a donc $3^m \equiv 1 \pmod 8$ exactement quand

$$m \text{ pair} .$$

### Étape 3 : on factorise

Écrivons $n = 2s$ et $m = 2t$, avec $s \geqslant 2$ et $t \geqslant 1$. L'équation devient

$$\left(2^s\right)^2 - \left(3^t\right)^2 = 7 ,$$

c'est-à-dire, par l'identité de la différence de deux carrés,

$$\left(2^s - 3^t\right)\left(2^s + 3^t\right) = 7 .$$

Les deux facteurs sont des entiers, leur produit vaut $7 > 0$ et le second, $2^s + 3^t$, est strictement positif. Donc le premier l'est aussi, et

$$0 < 2^s - 3^t < 2^s + 3^t .$$

Comme $7$ est premier, ses seules écritures en produit de deux entiers strictement positifs sont $1 \times 7$ et $7 \times 1$. La condition d'ordre ne laisse qu'une possibilité :

$$2^s - 3^t = 1 \qquad \text{et} \qquad 2^s + 3^t = 7 .$$

En additionnant : $2 \times 2^s = 8$, donc $2^s = 4$ et $s = 2$. En soustrayant : $2 \times 3^t = 6$, donc $3^t = 3$ et $t = 1$.

D'où $n = 2s = 4$ et $m = 2t = 2$.

**Conclusion : les seuls couples d'entiers naturels solutions sont $(3,\,0)$ et $(4,\,2)$.**

Si l'on impose $m \geqslant 1$, il ne reste que $(4,\, 2)$.

## Going further

La structure de cette solution se retrouve dans beaucoup d'équations où des puissances s'affrontent.

1. On récolte des informations de **parité sur les exposants**, en regardant l'égalité modulo un ou deux petits nombres bien choisis. Les bons candidats sont les nombres pour lesquels les puissances en jeu tournent en boucle courte : ici $3$ pour les puissances de $2$, et $8$ pour les puissances de $3$.
2. Une fois les exposants pairs, on écrit l'équation comme une **différence de deux carrés**, qui se factorise.
3. La factorisation transforme une équation exponentielle, difficile, en une simple décomposition d'un petit nombre en produit, qui se règle à la main.

À titre d'entraînement, la même méthode résout $2^n = 3^m + 5$ (aucune solution avec $m \geqslant 1$) et $5^n = 3^m + 16$.
