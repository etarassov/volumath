---
id: "12013"
title: "Des nombres non premiers, deux à deux premiers entre eux"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [nombres premiers, premiers entre eux, diviseurs, maximum]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test d'entraînement de novembre 2012"
  reference: "2017-10_ofm-2012-2013-test-novembre.pdf, exercice 3 (sujet junior) ; corrigé 2017-10_ofm-2012-2013-test-novembre-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-test-novembre.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2012-2013-test-novembre.pdf"
---

## Statement

On veut choisir des entiers **tous différents** entre $1$ et $100$ (au sens large) de sorte que :

- aucun des nombres choisis n'est un nombre premier ;
- deux nombres choisis quelconques sont toujours premiers entre eux, c'est-à-dire que leur $\mathrm{PGCD}$ vaut $1$.

Combien de nombres peut-on choisir au maximum ?

Rappel : $1$ n'est pas un nombre premier.

## Hints

1. Le nombre $1$ peut-il faire partie du choix ? Est-il gênant ?
2. Un nombre choisi autre que $1$ n'est pas premier : il s'écrit $a \times b$ avec $2 \le a \le b$. Montrez que $a \le 10$, puis que ce nombre a un diviseur premier inférieur à $10$.
3. Combien y a-t-il de nombres premiers inférieurs à $10$ ? Deux nombres choisis peuvent-ils avoir le même ?

## Solution

**Réponse.** On peut choisir au maximum $5$ nombres, par exemple $1$, $4$, $9$, $25$ et $49$.

**Cinq nombres, c'est possible.** Les nombres $1$, $4 = 2^2$, $9 = 3^2$, $25 = 5^2$ et $49 = 7^2$ sont entre $1$ et $100$, et aucun n'est premier. Deux d'entre eux sont premiers entre eux : $1$ est premier avec tout entier, et deux des carrés $2^2$, $3^2$, $5^2$, $7^2$ n'ont aucun facteur premier en commun.

**On ne peut pas en choisir plus.** Considérons un choix qui respecte les deux conditions.

*Un nombre choisi autre que $1$ a un diviseur premier inférieur à $10$.* Soit $m$ un tel nombre. Il n'est pas premier et il vaut au moins $2$, donc on peut l'écrire $m = a \times b$ avec $2 \le a \le b$. Alors

$$a \times a \le a \times b = m \le 100, \qquad \text{donc} \qquad a \le 10 .$$

Un diviseur premier $p$ de $a$ divise aussi $m$, et $p \le a \le 10$. Les nombres premiers inférieurs ou égaux à $10$ sont $2$, $3$, $5$ et $7$, donc $m$ est divisible par l'un d'eux.

*Deux nombres choisis différents ne peuvent pas avoir le même.* Si deux nombres choisis étaient tous les deux divisibles par le même nombre premier $p$, leur $\mathrm{PGCD}$ serait au moins $p$, alors qu'il doit valoir $1$.

Associons à chaque nombre choisi autre que $1$ un de ses diviseurs premiers pris dans $\{2, 3, 5, 7\}$. Deux nombres choisis différents reçoivent des nombres premiers différents, donc il y a au plus $4$ nombres choisis autres que $1$. En ajoutant éventuellement le nombre $1$, cela fait au plus $5$ nombres.

**Conclusion.** On peut choisir au maximum $5$ nombres.
