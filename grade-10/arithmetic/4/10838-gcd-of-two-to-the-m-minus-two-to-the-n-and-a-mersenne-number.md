---
id: "10838"
title: "Le PGCD de 2ᵐ − 2ⁿ et de 2ᵏ − 1, avec k = m² + mn + n²"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [pgcd, puissances-de-deux, divisibilite, nombres-premiers-entre-eux, recurrence]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 1 (arithmétique)"
  reference: "2017-10_ofm-2016-2017-envoi-1.pdf, Exercices communs, exercice 5 ; corrigé 2017-10_ofm-2016-2017-envoi-1-solutions.pdf (le corrigé passe sous silence le facteur 2ⁿ de 2ᵐ − 2ⁿ ; il est traité ici)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-1.pdf"
---

## Statement

Soient $m$ et $n$ deux entiers strictement positifs tels que $\mathrm{PGCD}(m, n) = 1$. On pose $k = m^2 + mn + n^2$.

Quelles valeurs peut prendre

$$\mathrm{PGCD}\left(2^m - 2^n,\ 2^k - 1\right) ?$$

## Hints

1. Calcule ce $\mathrm{PGCD}$ pour $(m, n) = (2, 1)$, puis pour $(m, n) = (4, 1)$.
2. Pour $a \geqslant b \geqslant 1$, montre que $\mathrm{PGCD}\left(2^a - 1, 2^b - 1\right) = \mathrm{PGCD}\left(2^{a-b} - 1, 2^b - 1\right)$. Que se passe-t-il quand on recommence ?
3. Écris $2^m - 2^n = 2^n\left(2^{m-n} - 1\right)$ quand $m \geqslant n$, et remarque que $2^k - 1$ est impair.
4. Montre que tout diviseur commun de $m - n$ et de $m^2 + mn + n^2$ divise $3$. Écris $m^2 + mn + n^2 = (m - n)^2 + 3mn$.

## Solution

**Réponse : les valeurs possibles sont $1$ et $7$.**

On utilise deux propriétés du $\mathrm{PGCD}$, valables pour tous entiers $A$, $B$, $c$ :

- les diviseurs communs de $A$ et $B$ sont les mêmes que ceux de $A - cB$ et $B$, donc $\mathrm{PGCD}(A, B) = \mathrm{PGCD}(A - cB, B)$ ;
- $\mathrm{PGCD}(A, 0) = A$ pour $A \geqslant 1$, puisque tout entier divise $0$.

### Étape 1 : un lemme sur les nombres $2^a - 1$

**Lemme.** Pour tous entiers $a \geqslant 0$ et $b \geqslant 0$, pas tous les deux nuls,
$$\mathrm{PGCD}\left(2^a - 1,\ 2^b - 1\right) = 2^{\mathrm{PGCD}(a, b)} - 1 .$$

*Preuve.* Par récurrence sur $a + b$. Si $b = 0$, alors $2^b - 1 = 0$ et les deux membres valent $2^a - 1$. De même si $a = 0$. Sinon, on peut supposer $a \geqslant b \geqslant 1$, puisque les deux membres ne changent pas quand on échange $a$ et $b$. Comme
$$\left(2^a - 1\right) - 2^{a-b}\left(2^b - 1\right) = 2^a - 1 - 2^a + 2^{a-b} = 2^{a-b} - 1,$$
la première propriété donne
$$\mathrm{PGCD}\left(2^a - 1, 2^b - 1\right) = \mathrm{PGCD}\left(2^{a-b} - 1, 2^b - 1\right) = 2^{\mathrm{PGCD}(a - b, b)} - 1,$$
la dernière égalité par hypothèse de récurrence, car $(a - b) + b < a + b$. Enfin $\mathrm{PGCD}(a - b, b) = \mathrm{PGCD}(a, b)$, toujours par la première propriété.

### Étape 2 : on se ramène aux exposants

Le $\mathrm{PGCD}$ ne change pas si on échange $m$ et $n$, car $2^n - 2^m = -\left(2^m - 2^n\right)$ et $k$ ne change pas. On peut donc supposer $m \geqslant n$, et écrire
$$2^m - 2^n = 2^n \times \left(2^{m-n} - 1\right) .$$
Le nombre $2^k - 1$ est impair, donc il n'a aucun facteur premier en commun avec $2^n$. Les diviseurs communs de $2^m - 2^n$ et de $2^k - 1$ sont donc les mêmes que ceux de $2^{m-n} - 1$ et de $2^k - 1$. Avec le lemme, en notant $g = \mathrm{PGCD}(m - n, k)$,
$$\mathrm{PGCD}\left(2^m - 2^n, 2^k - 1\right) = \mathrm{PGCD}\left(2^{m-n} - 1, 2^k - 1\right) = 2^{g} - 1 .$$

### Étape 3 : $g$ vaut $1$ ou $3$

Soit $d \geqslant 1$ un diviseur commun de $m - n$ et de $k$. Comme
$$k = m^2 + mn + n^2 = (m - n)^2 + 3mn,$$
$d$ divise $3mn$. Il divise donc aussi
$$3mn - 3n(m - n) = 3n^2 \qquad \text{et} \qquad 3mn + 3m(m - n) = 3m^2 .$$

- Si un nombre premier $q \neq 3$ divisait $d$, il diviserait $m^2$ et $n^2$, donc $m$ et $n$. C'est impossible, car $\mathrm{PGCD}(m, n) = 1$.
- Si $9$ divisait $d$, alors $9$ diviserait $3m^2$, donc $3$ diviserait $m^2$, puis $m$. De même $3$ diviserait $n$, ce qui est encore impossible.

Ainsi $d = 1$ ou $d = 3$. En particulier **$g = 1$ ou $g = 3$**, et le $\mathrm{PGCD}$ cherché vaut $2^1 - 1 = 1$ ou $2^3 - 1 = 7$.

### Étape 4 : les deux valeurs sont atteintes

- Pour $m = 2$ et $n = 1$ : $k = 7$, et $\mathrm{PGCD}(4 - 2, 127) = \mathrm{PGCD}(2, 127) = 1$.
- Pour $m = 4$ et $n = 1$ : $k = 21$, $m - n = 3$, donc $g = 3$ et le $\mathrm{PGCD}$ vaut $7$. On peut vérifier : $2^4 - 2 = 14 = 2 \times 7$, et $7$ divise $2^{21} - 1$ car $2^3 = 8$ a pour reste $1$ dans la division par $7$, donc $2^{21} = 8^7$ aussi.

On peut aussi prendre $m = n = 1$ : alors $2^m - 2^n = 0$ et le $\mathrm{PGCD}$ vaut $2^3 - 1 = 7$.

### Conclusion

**Le $\mathrm{PGCD}$ de $2^m - 2^n$ et de $2^{m^2 + mn + n^2} - 1$ vaut toujours $1$ ou $7$, et les deux valeurs sont possibles.**

## Going further

1. Calcule $\mathrm{PGCD}\left(2^{12} - 1, 2^{18} - 1\right)$ sans calculatrice.
2. Pour quels couples $(m, n)$ d'entiers premiers entre eux le $\mathrm{PGCD}$ vaut-il $7$ ? *Indication : regarde les restes de $m$ et $n$ dans la division par $3$.*
