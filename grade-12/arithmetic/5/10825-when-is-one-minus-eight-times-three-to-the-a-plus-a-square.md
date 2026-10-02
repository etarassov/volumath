---
id: "10825"
title: "Quand 1 − 8 × 3ᵃ + 2ᵃ⁺²(2ᵃ − 1) est-il un carré ?"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 75
tags: [carre-parfait, congruences, restes, puissances, factorisation, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 3 (arithmétique)"
  reference: "2017-10_ofm-2014-2015-envoi-3.pdf, Exercices du groupe A, exercice 9 ; corrigé 2017-10_ofm-2014-2015-envoi-3-solutions.pdf (le corrigé suppose a ⩾ 8 puis conclut « pas de solution a ⩾ 9 », simple coquille ; il utilise le théorème d'Euler et l'ordre de 2 modulo 27, remplacés ici par des calculs de restes)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-3.pdf"
---

## Statement

Trouver tous les entiers $a \geqslant 1$ tels que le nombre

$$1 - 8 \times 3^a + 2^{a+2}\left(2^a - 1\right)$$

soit un carré parfait.

## Hints

1. Calcule ce nombre pour $a = 1, 2, \ldots, 7$.
2. Montre que le nombre s'écrit $\left(2^{a+1} - 1\right)^2 - 8 \times 3^a$. S'il vaut $s^2$, factorise la différence de deux carrés.
3. Tu dois arriver à deux entiers $U$ et $V$ avec $U \times V = 2 \times 3^a$ et $U + V = 2^{a+1} - 1$. L'un est une puissance de $3$, l'autre le double d'une puissance de $3$. Pour $a \geqslant 8$, montre que $27$ divise $2^{a+1} - 1$.
4. Calcule les restes des puissances de $2$ modulo $27$ : tu dois trouver que $18$ divise $a + 1$. Regarde alors le nombre de départ modulo $19$.

## Solution

**Réponse : $a = 3$ et $a = 5$.**

Notons $A = 1 - 8 \times 3^a + 2^{a+2}\left(2^a - 1\right)$.

### Un rappel sur les restes

On écrit $u \equiv v \pmod k$, et on lit « $u$ est congru à $v$ modulo $k$ », quand $u - v$ est un multiple de $k$. On peut ajouter et multiplier ces relations comme des égalités. En particulier, $u \equiv v$ donne $u^j \equiv v^j \pmod k$.

### Étape 1 : une autre écriture

En développant, $2^{a+2}\left(2^a - 1\right) = 2^{2a+2} - 2^{a+2}$, donc
$$A = 2^{2a+2} - 2^{a+2} + 1 - 8 \times 3^a .$$
Or $\left(2^{a+1} - 1\right)^2 = 2^{2a+2} - 2 \times 2^{a+1} + 1 = 2^{2a+2} - 2^{a+2} + 1$. Ainsi
$$A = \left(2^{a+1} - 1\right)^2 - 8 \times 3^a .$$

### Étape 2 : les petites valeurs

| $a$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ |
|---|---|---|---|---|---|---|---|
| $A$ | $-15$ | $-23$ | $9$ | $313$ | $2025$ | $10\,297$ | $47\,529$ |

On a $9 = 3^2$ et $2025 = 45^2$. Les autres ne sont pas des carrés : les deux premiers sont négatifs, et
$$17^2 = 289 < 313 < 324 = 18^2, \qquad 101^2 = 10\,201 < 10\,297 < 10\,404 = 102^2, \qquad 218^2 = 47\,524 < 47\,529 < 47\,961 = 219^2 .$$
**Parmi $a = 1, \ldots, 7$, seuls $a = 3$ et $a = 5$ conviennent.** Il reste à montrer qu'aucun $a \geqslant 8$ ne convient.

### Étape 3 : on factorise

Soit $a \geqslant 8$, et supposons $A = s^2$ avec $s \geqslant 0$ entier. Le nombre $A$ est impair, donc $s$ aussi. D'après l'étape 1,
$$\left(2^{a+1} - 1\right)^2 - s^2 = 8 \times 3^a, \qquad \text{donc} \qquad \left(2^{a+1} - 1 - s\right)\left(2^{a+1} - 1 + s\right) = 8 \times 3^a .$$
Les deux facteurs sont pairs (différence et somme de deux nombres impairs). Écrivons-les $2U$ et $2V$. Alors
$$U \times V = 2 \times 3^a \qquad \text{et} \qquad U + V = 2^{a+1} - 1 .$$
Comme $V > 0$ et $UV > 0$, on a aussi $U > 0$. La somme $U + V$ est impaire, donc l'un des deux nombres est impair et l'autre pair. Le nombre impair divise $2 \times 3^a$ sans avoir le facteur $2$ : c'est une puissance de $3$, disons $3^{\alpha}$. L'autre vaut alors $2 \times 3^{\beta}$, avec $\alpha + \beta = a$. On a donc
$$3^{\alpha} + 2 \times 3^{\beta} = 2^{a+1} - 1 . \qquad (\star)$$

### Étape 4 : $27$ divise $2^{a+1} - 1$

D'après $(\star)$, $3^{\alpha} < 2^{a+1}$ et $3^{\beta} < 2^{a+1}$. Notons $M$ le plus grand des deux exposants $\alpha$, $\beta$, et $\mu$ le plus petit. On a $3^{M} < 2^{a+1}$, et $\mu = a - M$ puisque $\alpha + \beta = a$.

*Pour $a \geqslant 8$, on a $2^{a+1} \leqslant 3^{a-2}$.* C'est vrai pour $a = 8$ : $2^9 = 512 \leqslant 729 = 3^6$. Et quand $a$ augmente de $1$, le membre de gauche est multiplié par $2$ et celui de droite par $3$, donc l'inégalité reste vraie.

Ainsi $3^{M} < 2^{a+1} \leqslant 3^{a-2}$, donc $M \leqslant a - 3$, et $\mu = a - M \geqslant 3$. Or $3^{\mu}$ divise les deux termes $3^{\alpha}$ et $2 \times 3^{\beta}$ du membre de gauche de $(\star)$. Il divise donc $2^{a+1} - 1$, et comme $\mu \geqslant 3$ : **$27$ divise $2^{a+1} - 1$.**

### Étape 5 : $18$ divise $a + 1$

On calcule les restes des puissances de $2$ dans la division par $27$, en multipliant chaque fois par $2$ :

| $r$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ |
|---|---|---|---|---|---|---|---|---|---|
| reste de $2^r$ | $1$ | $2$ | $4$ | $8$ | $16$ | $5$ | $10$ | $20$ | $13$ |

| $r$ | $9$ | $10$ | $11$ | $12$ | $13$ | $14$ | $15$ | $16$ | $17$ |
|---|---|---|---|---|---|---|---|---|---|
| reste de $2^r$ | $26$ | $25$ | $23$ | $19$ | $11$ | $22$ | $17$ | $7$ | $14$ |

En particulier $2^9 \equiv 26 \equiv -1$, donc $2^{18} \equiv 1 \pmod{27}$. Écrivons la division euclidienne $a + 1 = 18q + r$, avec $0 \leqslant r \leqslant 17$. Alors
$$2^{a+1} = \left(2^{18}\right)^q \times 2^r \equiv 2^r \pmod{27} .$$
D'après l'étape 4, ce reste vaut $1$. Dans le tableau, le reste $1$ n'apparaît que pour $r = 0$. **Donc $18$ divise $a + 1$.**

### Étape 6 : une contradiction modulo $19$

*Les puissances de $2$ et de $3$ modulo $19$.* On a $2^9 = 512 = 19 \times 26 + 18 \equiv -1$, donc $2^{18} \equiv 1 \pmod{19}$. De même $3^3 = 27 \equiv 8$ et $3^9 \equiv 8^3 = 512 \equiv -1$, donc $3^{18} \equiv 1 \pmod{19}$. Comme $18$ divise $a + 1$, on en déduit
$$2^{a+1} \equiv 1 \qquad \text{et} \qquad 3^{a+1} \equiv 1 \pmod{19} .$$

*Le reste de $3^a$.* On a $3 \times 13 = 39 = 2 \times 19 + 1 \equiv 1 \pmod{19}$. Donc
$$3^a \equiv 3^a \times (3 \times 13) = 3^{a+1} \times 13 \equiv 13 \pmod{19} .$$

*Le reste de $A$.* D'après l'étape 1,
$$A = \left(2^{a+1} - 1\right)^2 - 8 \times 3^a \equiv 0 - 8 \times 13 = -104 \equiv -104 + 6 \times 19 = 10 \pmod{19} .$$

*Les carrés modulo $19$.* Tout entier est congru modulo $19$ à un entier $r$ entre $-9$ et $9$, et $r^2 = (-r)^2$. Il suffit donc de regarder $r = 0, 1, \ldots, 9$ :

| $r$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ |
|---|---|---|---|---|---|---|---|---|---|---|
| reste de $r^2$ | $0$ | $1$ | $4$ | $9$ | $16$ | $6$ | $17$ | $11$ | $7$ | $5$ |

Le reste $10$ n'apparaît pas. **Donc $A$ n'est pas un carré**, ce qui contredit l'hypothèse $A = s^2$.

### Conclusion

Aucun $a \geqslant 8$ ne convient, et parmi les petites valeurs seuls $3$ et $5$ conviennent. **Les entiers cherchés sont $a = 3$ et $a = 5$.**

## Going further

1. Pourquoi a-t-on eu besoin de $27$, et pas seulement de $9$ ? *Indication : modulo $9$, on trouverait seulement que $6$ divise $a + 1$. Or $a = 5$ est une vraie solution, et $6$ divise $5 + 1$.*
2. Pour $a = 3$ et $a = 5$, retrouve les valeurs de $U$ et $V$ de l'étape 3.
