---
id: "8332"
title: "9n⁶ = 2ᵏ + 5m² + 2"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [congruences, carres, puissances-de-deux, equation-diophantienne]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, entraînement du Groupe A"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe A, entraînement de fin de parcours, exercice 3. Le corrigé publié écrit « pour k = 0, (n, m) = (1, 1) est solution », ce qui est une coquille : c'est pour k = 1."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

Trouver tous les entiers $k \geqslant 1$ pour lesquels il existe un couple d'entiers $(n, m)$ tel
que

$$9n^6 = 2^k + 5m^2 + 2 .$$

## Hints

1. L'équation contient deux carrés déguisés : $n^6 = (n^3)^2$, et $m^2$. Cherche un module où les carrés sont très contraints.
2. Modulo $4$, un carré ne peut valoir que $0$ ou $1$. C'est une piste sérieuse.
3. Mais attention : modulo $4$, le terme $2^k$ ne disparaît que si $k \geqslant 2$. Traite donc séparément les petites valeurs de $k$.
4. Pour $k \geqslant 2$, réduis toute l'équation modulo $4$ et compare les valeurs possibles des deux membres.
5. Il ne reste plus qu'à examiner $k = 1$ à la main. Essaie $n = 1$.

## Solution

**Le cas $k \geqslant 2$ est impossible.**

Supposons $k \geqslant 2$. Alors $4$ divise $2^k$, donc modulo $4$ l'équation devient

$$9n^6 \equiv 5m^2 + 2 \pmod 4 .$$

Comme $9 \equiv 1$ et $5 \equiv 1$ modulo $4$, cela se simplifie en

$$n^6 \equiv m^2 + 2 \pmod 4 .$$

Or $n^6 = \left(n^3\right)^2$ est un carré, et les carrés modulo $4$ ne valent que $0$ ou $1$ :

| $x \bmod 4$ | $0$ | $1$ | $2$ | $3$ |
|---|---|---|---|---|
| $x^2 \bmod 4$ | $0$ | $1$ | $0$ | $1$ |

Donc le membre de gauche vaut $0$ ou $1$ modulo $4$, tandis que le membre de droite vaut
$0 + 2 = 2$ ou $1 + 2 = 3$. Les deux listes sont disjointes : l'égalité est impossible.

**Le cas $k = 1$ marche.**

Pour $k = 1$, l'équation devient

$$9n^6 = 2 + 5m^2 + 2 = 5m^2 + 4 .$$

Essayons $n = 1$ : il vient $9 = 5m^2 + 4$, donc $5m^2 = 5$, donc $m^2 = 1$ et $m = 1$ convient.

Vérification : $9 \times 1^6 = 9$ et $2^1 + 5 \times 1^2 + 2 = 2 + 5 + 2 = 9$. C'est bien égal.

**Conclusion.** Le seul entier $k \geqslant 1$ qui convient est

$$\boxed{k = 1} .$$

## Going further

Le raisonnement modulo $4$ a coupé l'infinité des cas $k \geqslant 2$ d'un seul coup, et il n'est
resté qu'une valeur à tester. C'est le schéma habituel de ce genre de problème : un argument de
congruence pour éliminer presque tout, puis un examen à la main du petit reste.

Remarquons que le choix du module n'était pas libre. Modulo $3$, par exemple, le membre de
gauche disparaît et on obtient $2^k + 5m^2 + 2 \equiv 0$, ce qui laisse encore beaucoup de
possibilités selon la parité de $k$. Modulo $4$ était le bon choix parce que c'est là que les
deux carrés de l'équation sont le plus contraints.
