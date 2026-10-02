---
id: "10822"
title: "Quand 2²ⁿ⁺² + 2ᵐ⁺² + 1 est-il un carré ?"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [carre-parfait, puissances-de-deux, parite, encadrement, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 3 (arithmétique)"
  reference: "2017-10_ofm-2014-2015-envoi-3.pdf, Exercices communs, exercice 6 ; corrigé 2017-10_ofm-2014-2015-envoi-3-solutions.pdf (solution réécrite, plus courte)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-3.pdf"
---

## Statement

Soient $m$ et $n$ deux entiers tels que $0 \leqslant m \leqslant 2n$.

Montrer que le nombre

$$2^{2n+2} + 2^{m+2} + 1$$

est un carré parfait si et seulement si $m = n$.

## Hints

1. Pour $m = n$, développe $\left(2^{n+1} + 1\right)^2$.
2. Si le nombre est un carré $s^2$, explique pourquoi $s$ est impair et plus grand que $2^{n+1}$. Écris $s = 2^{n+1} + j$.
3. Tu dois obtenir $2^{m+2} = 2^{n+2}\,j + (j - 1)(j + 1)$. Si $j \geqslant 3$, montre que l'un des nombres $j - 1$, $j + 1$ est un multiple de $2^{n+1}$.
4. Alors $s$ est très grand. Compare $s^2$ avec $2^{2n+2} + 2^{2n+2} + 1$.

## Solution

Notons $A = 2^{2n+2} + 2^{m+2} + 1$. Remarquons que $2^{2n+2} = \left(2^{n+1}\right)^2$.

### Étape 1 : si $m = n$, c'est un carré

On développe :
$$\left(2^{n+1} + 1\right)^2 = 2^{2n+2} + 2 \times 2^{n+1} + 1 = 2^{2n+2} + 2^{n+2} + 1 .$$
Pour $m = n$, c'est exactement $A$. **Donc $A$ est un carré.**

### Étape 2 : on écrit la racine carrée

Supposons maintenant que $A = s^2$, avec $s \geqslant 0$ entier. Le nombre $A$ est impair, donc $s$ aussi. De plus $A > \left(2^{n+1}\right)^2$, donc $s > 2^{n+1}$. On peut donc écrire
$$s = 2^{n+1} + j, \qquad \text{avec } j \geqslant 1 .$$
Comme $s$ est impair et $2^{n+1}$ pair, **$j$ est impair**. En développant,
$$s^2 = 2^{2n+2} + 2^{n+2}\,j + j^2 .$$
L'égalité $A = s^2$ donne $2^{m+2} + 1 = 2^{n+2}\,j + j^2$, c'est-à-dire
$$2^{m+2} = 2^{n+2}\,j + (j - 1)(j + 1) . \qquad (\star)$$

**Si $j = 1$**, l'égalité $(\star)$ devient $2^{m+2} = 2^{n+2}$, donc $m = n$. C'est ce qu'on voulait.

Il reste à montrer que $j \geqslant 3$ est impossible.

### Étape 3 : si $j \geqslant 3$, alors $j$ est grand

Supposons $j \geqslant 3$. D'après $(\star)$, $2^{m+2} > 2^{n+2}$, donc $m > n$. Alors $2^{n+2}$ divise $2^{m+2}$ et $2^{n+2}\,j$, donc il divise aussi leur différence :
$$2^{n+2} \text{ divise } (j - 1)(j + 1) .$$
Les nombres $j - 1$ et $j + 1$ sont pairs, et ils ne peuvent pas être tous les deux multiples de $4$, sinon leur différence $2$ le serait aussi. L'un des deux s'écrit donc $2 \times (\text{un nombre impair})$ : il n'apporte qu'un seul facteur $2$ au produit. Les $n + 1$ autres facteurs $2$ viennent de l'autre nombre, qui est donc un multiple de $2^{n+1}$. Comme $j - 1 \geqslant 2 > 0$, ce multiple est au moins égal à $2^{n+1}$. Dans les deux cas, $j + 1 \geqslant 2^{n+1}$, c'est-à-dire
$$j \geqslant 2^{n+1} - 1 .$$

### Étape 4 : alors $s^2$ est trop grand

On en déduit $s = 2^{n+1} + j \geqslant 2^{n+2} - 1$, donc
$$s^2 \geqslant \left(2^{n+2} - 1\right)^2 = 2^{2n+4} - 2^{n+3} + 1 .$$
D'autre part, comme $m \leqslant 2n$,
$$A = 2^{2n+2} + 2^{m+2} + 1 \leqslant 2^{2n+2} + 2^{2n+2} + 1 = 2^{2n+3} + 1 .$$
L'égalité $A = s^2$ donne donc $2^{2n+4} - 2^{n+3} + 1 \leqslant 2^{2n+3} + 1$. Comme $2^{2n+4} - 2^{2n+3} = 2^{2n+3}$, cela s'écrit
$$2^{2n+3} \leqslant 2^{n+3}, \qquad \text{donc} \qquad 2n + 3 \leqslant n + 3, \qquad \text{donc} \qquad n = 0 .$$
Mais si $n = 0$, la condition $0 \leqslant m \leqslant 2n$ impose $m = 0$, ce qui contredit $m > n$. **Le cas $j \geqslant 3$ est donc impossible.**

### Conclusion

Si $A$ est un carré, alors $j = 1$ et $m = n$. Réciproquement, si $m = n$, alors $A = \left(2^{n+1} + 1\right)^2$. **Le nombre $2^{2n+2} + 2^{m+2} + 1$ est un carré parfait si et seulement si $m = n$.**

## Going further

1. La condition $m \leqslant 2n$ est nécessaire. Montre que pour $m = 4n$, le nombre $2^{2n+2} + 2^{m+2} + 1$ est aussi un carré. *Indication : développe $\left(2^{2n+1} + 1\right)^2$.*
2. Où la condition $m \leqslant 2n$ a-t-elle servi dans la solution ?
