---
id: "8037"
title: "L'équation x⁵ = y² + 4"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [congruences, petit-theoreme-de-fermat, carres, puissances-cinquiemes]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, groupe A : arithmétique, mercredi 23 après-midi (Rémi Lesbats), exercice 9"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Montrer qu'il n'existe aucun couple d'entiers naturels $(x, y)$ tel que

$$x^5 = y^2 + 4 .$$

## Hints

1. On cherche un nombre $N$ modulo lequel les puissances cinquièmes et les carrés prennent très
   peu de valeurs. Que vaut $10$ par rapport à $5$ et à $2$ ?
2. Le petit théorème de Fermat donne $a^{10} \equiv 1 \pmod{11}$ dès que $11$ ne divise pas
   $a$. Qu'en déduis-tu sur $a^5$ ?
3. Dresse la liste des carrés modulo $11$, puis ajoute $4$.
4. Compare les deux listes.

## Solution

**Le bon module est $11$.** On le choisit parce que $11 - 1 = 10$ est à la fois un multiple de
$5$ et un multiple de $2$ : les puissances cinquièmes et les carrés y sont donc très
contraints.

**Les puissances cinquièmes modulo $11$.** Soit $x$ un entier.

- Si $11$ divise $x$, alors $x^5 \equiv 0 \pmod{11}$.
- Sinon, le petit théorème de Fermat donne $x^{10} \equiv 1 \pmod{11}$, c'est-à-dire
  $\left(x^5\right)^2 \equiv 1 \pmod{11}$. Posons $t = x^5$ ; alors $11$ divise
  $t^2 - 1 = (t-1)(t+1)$. Comme $11$ est premier, il divise $t - 1$ ou $t + 1$, donc
  $t \equiv 1$ ou $t \equiv -1 \equiv 10 \pmod{11}$.

**Une puissance cinquième est donc congrue à $0$, $1$ ou $10$ modulo $11$.**

**Les carrés modulo $11$.** Calculons $a^2$ pour $a = 0, 1, \ldots, 10$ (au-delà, cela se
répète) :

| $a$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ | $10$ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| $a^2 \bmod 11$ | $0$ | $1$ | $4$ | $9$ | $5$ | $3$ | $3$ | $5$ | $9$ | $4$ | $1$ |

Les valeurs possibles sont donc $0$, $1$, $3$, $4$, $5$, $9$.

**Le membre de droite.** En ajoutant $4$ à chacune de ces valeurs et en réduisant modulo
$11$ :

$$0+4 = 4, \quad 1+4 = 5, \quad 3+4 = 7, \quad 4+4 = 8, \quad 5+4 = 9, \quad 9+4 = 13 \equiv 2 .$$

Donc $y^2 + 4$ est congru à l'un des nombres $2$, $4$, $5$, $7$, $8$, $9$ modulo $11$.

**La contradiction.** Les deux listes

$$\{0,\ 1,\ 10\} \qquad \text{et} \qquad \{2,\ 4,\ 5,\ 7,\ 8,\ 9\}$$

n'ont aucun élément commun. L'égalité $x^5 = y^2 + 4$ est donc impossible modulo $11$, et a
fortiori impossible dans les entiers.

**L'équation n'a aucune solution.**

## Going further

Le choix de $11$ est le cœur de l'affaire. Modulo un nombre premier $p$, les puissances
$k$-ièmes prennent environ $\dfrac{p-1}{\mathrm{PGCD}(k,\, p-1)}$ valeurs non nulles. Pour que
les puissances cinquièmes soient rares, on veut donc que $5$ divise $p - 1$ : les premiers
candidats sont $p = 11$, $p = 31$, $p = 41$. Et pour que les carrés soient rares aussi, tout
premier impair convient. Le plus petit premier qui remplit les deux conditions est $11$, et
c'est celui qui marche.

Cette démarche vaut d'être retenue : devant une équation du type $x^k = y^2 + c$, on cherche un
premier $p$ tel que $k$ divise $p-1$.
