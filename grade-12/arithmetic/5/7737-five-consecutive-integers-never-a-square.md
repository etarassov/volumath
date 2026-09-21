---
id: "7737"
title: "Le produit de cinq entiers consécutifs n'est jamais un carré"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [nombres premiers, carre parfait, principe des tiroirs, valuation]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe B"
  reference: "stage_ete_2014.pdf, « Groupe B : logique et stratégies de base », mercredi 20 matin (Alix Deleporte), exercice 8 (le document laisse plusieurs étapes en exercice et omet le cas n = 0)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Soit $n$ un entier strictement positif. Montrer que le produit de cinq entiers consécutifs

$$n(n+1)(n+2)(n+3)(n+4)$$

n'est jamais le carré d'un entier.

*L'hypothèse $n \geqslant 1$ est nécessaire : pour $n = 0$ le produit vaut $0$, qui est bien un carré.*

## Hints

1. Soit $p$ un nombre premier supérieur ou égal à $5$. Combien des cinq nombres $n, n+1, \ldots, n+4$ peuvent-ils être des multiples de $p$ ?
2. Un seul au plus, puisque deux multiples de $p$ diffèrent d'au moins $p \geqslant 5$. Que dit alors l'hypothèse « le produit est un carré » sur la puissance de $p$ contenue dans ce nombre-là ?
3. Chacun des cinq nombres s'écrit donc $2^{a} 3^{b} \times (\text{un carré})$. Selon les parités de $a$ et de $b$, combien de formes possibles ?
4. Quatre formes pour cinq nombres : le principe des tiroirs s'applique. Compare alors les deux nombres qui ont la même forme.
5. Deux nombres de la même forme diffèrent de $d(u-v)(u+v)$. Or ils diffèrent d'au plus $4$ : que cela impose-t-il ?

## Solution

**Raisonnons par l'absurde** et supposons que le produit

$$P = n(n+1)(n+2)(n+3)(n+4)$$

soit le carré d'un entier, avec $n \geqslant 1$. Les cinq facteurs sont alors des entiers strictement positifs.

**Étape 1 : les grands nombres premiers apparaissent à une puissance paire dans chaque facteur.**

Soit $p$ un nombre premier avec $p \geqslant 5$. Deux multiples distincts de $p$ diffèrent d'au moins $p \geqslant 5$, alors que nos cinq nombres diffèrent au plus de $4$. Donc **au plus un** des cinq nombres est divisible par $p$.

Notons $v_p(m)$ l'exposant de $p$ dans la décomposition en facteurs premiers de $m$. Comme $p$ ne divise au plus qu'un des cinq facteurs, on a

$$v_p(P) = v_p(n) + v_p(n+1) + \cdots + v_p(n+4) ,$$

où au plus un terme est non nul. Comme $P$ est un carré, $v_p(P)$ est pair, donc ce terme unique est pair : **pour chaque facteur $m$ et chaque premier $p \geqslant 5$, l'exposant $v_p(m)$ est pair.**

**Étape 2 : chaque facteur est de l'une des quatre formes $u^2$, $2u^2$, $3u^2$, $6u^2$.**

Soit $m$ l'un des cinq facteurs. Écrivons

$$m = 2^{a} \times 3^{b} \times c ,$$

où $c$ n'est divisible ni par $2$ ni par $3$. D'après l'étape 1, tous les exposants des premiers de $c$ sont pairs, donc $c$ est un carré parfait. Selon les parités de $a$ et de $b$, on obtient :

| $a$ | $b$ | forme de $m$ |
|---|---|---|
| pair | pair | $m = u^2$ |
| impair | pair | $m = 2u^2$ |
| pair | impair | $m = 3u^2$ |
| impair | impair | $m = 6u^2$ |

Dans chaque cas $u$ est un entier strictement positif. Appelons $d \in \{1, 2, 3, 6\}$ la **forme** du facteur $m$.

**Étape 3 : le principe des tiroirs.**

Nous avons cinq facteurs et quatre formes possibles. Deux des cinq facteurs ont donc la même forme $d$ : disons

$$x = d\,u^2 \qquad \text{et} \qquad y = d\,v^2, \qquad \text{avec } x > y \geqslant 1, \text{ donc } u > v \geqslant 1 .$$

**Étape 4 : on compare les écarts.**

D'une part, $x$ et $y$ sont deux des cinq entiers consécutifs, donc

$$x - y \leqslant 4 .$$

D'autre part,

$$x - y = d\,(u^2 - v^2) = d\,(u-v)(u+v) .$$

Comme $u > v \geqslant 1$, on a $u - v \geqslant 1$ et $u + v \geqslant 1 + 2 = 3$. Donc

$$x - y \geqslant 3d .$$

Si $d \in \{2, 3, 6\}$, on obtient $x - y \geqslant 6 > 4$ : impossible. Donc $d = 1$, c'est-à-dire que $x$ et $y$ sont **tous les deux des carrés parfaits**.

**Étape 5 : deux carrés qui diffèrent d'au plus 4.**

On a $x = u^2$, $y = v^2$ avec $u > v \geqslant 1$ et $u^2 - v^2 \leqslant 4$.

- Si $v \geqslant 2$, alors $u \geqslant 3$ et $u^2 - v^2 \geqslant 9 - 4 = 5 > 4$ : impossible.
- Donc $v = 1$, et $u^2 - 1 \leqslant 4$ donne $u^2 \leqslant 5$, donc $u = 2$.

Ainsi $y = 1$ et $x = 4$. Les cinq entiers consécutifs contiennent donc $1$ et $4$, ce qui ne laisse qu'une possibilité : ce sont $1, 2, 3, 4, 5$.

**Étape 6 : on vérifie ce dernier cas.**

$$1 \times 2 \times 3 \times 4 \times 5 = 120 .$$

Or $10^2 = 100$ et $11^2 = 121$, donc $120$ n'est pas un carré parfait. Contradiction.

**Conclusion : pour tout entier $n \geqslant 1$, le produit $n(n+1)(n+2)(n+3)(n+4)$ n'est jamais un carré parfait.**

## Going further

Le résultat est beaucoup plus général : le produit de $k$ entiers consécutifs strictement positifs n'est jamais une puissance parfaite dès que $k \geqslant 2$. C'est le théorème d'Erdős et Selfridge, démontré en 1975, et sa preuve est bien plus difficile que celle du cas $k = 5$ traité ici.

Noter où l'hypothèse « cinq » sert exactement : elle donne quatre formes pour cinq nombres (tiroirs) et un écart maximal de $4$ (petit devant $3d$). Avec six nombres consécutifs, le premier $5$ pourrait diviser deux d'entre eux et l'étape 1 tomberait.
