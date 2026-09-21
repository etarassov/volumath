---
id: "7153"
title: "Un multiple qui ne s'écrit qu'avec des zéros et des uns"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [tiroirs, congruences, divisibilite, numeration]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2013"
  reference: "stage_junior_2013.pdf, « Débutants : stratégies de base », mercredi et jeudi matin (François Lo Jacomo), exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2013.pdf"
---

## Statement

Montrer que pour tout entier $n \geqslant 1$, il existe un multiple de $n$ qui a au plus $n$
chiffres, tous égaux à $0$ ou à $1$.

## Hints

1. Essaie à la main avec $n = 3$, $n = 7$, $n = 6$. Les nombres $1$, $11$, $111$, $1111$,
   … sont un bon point de départ.
2. Considère les $n$ nombres $1$, $11$, $111$, …, jusqu'à celui qui compte $n$ chiffres $1$.
   Regarde leurs restes dans la division par $n$.
3. Combien de restes possibles y a-t-il ? Combien de nombres as-tu ? Sépare le cas où l'un
   des restes est nul.
4. Si deux de ces nombres ont le même reste, que peux-tu dire de leur différence ? À quoi
   ressemble-t-elle en écriture décimale ?

## Solution

Considérons les $n$ nombres

$$1, \quad 11, \quad 111, \quad \ldots, \quad \underbrace{11\cdots1}_{n \text{ chiffres}} .$$

Notons $R_k$ celui qui compte $k$ chiffres $1$, pour $k = 1, \ldots, n$. Tous s'écrivent
uniquement avec des $1$, donc avec des chiffres $0$ ou $1$, et $R_k$ a exactement $k
\leqslant n$ chiffres.

**Premier cas : l'un des $R_k$ est divisible par $n$.** C'est gagné, $R_k$ convient.

**Second cas : aucun ne l'est.** Le reste de la division de $R_k$ par $n$ est alors un entier
compris entre $1$ et $n-1$ : il n'y a que $n-1$ valeurs possibles.

Or nous avons $n$ nombres. D'après le principe des tiroirs, deux d'entre eux ont le même
reste : il existe $i < j$ tels que $R_i$ et $R_j$ laissent le même reste dans la division par
$n$. Leur différence est donc un multiple de $n$ :

$$n \ \text{divise} \ R_j - R_i .$$

**À quoi ressemble cette différence ?** Le nombre $R_j$ compte $j$ chiffres $1$, et $R_i$ en
compte $i$. En posant la soustraction, les $i$ derniers chiffres s'annulent et il reste les
$j - i$ premiers :

$$R_j - R_i = \underbrace{11\cdots1}_{j-i} \underbrace{00\cdots0}_{i} .$$

(On peut le vérifier par le calcul : $R_j = R_{j-i} \times 10^{\,i} + R_i$, donc
$R_j - R_i = R_{j-i} \times 10^{\,i}$.)

Ce nombre ne s'écrit qu'avec des $1$ et des $0$, il compte exactement $j \leqslant n$
chiffres, et c'est un multiple de $n$.

**Conclusion.** Dans les deux cas, on a trouvé un multiple de $n$ d'au plus $n$ chiffres,
tous égaux à $0$ ou $1$.

## Going further

Vérifions sur un exemple. Pour $n = 7$, les restes de $1$, $11$, $111$, $1111$, $11111$,
$111111$, $1111111$ modulo $7$ valent $1, 4, 6, 5, 2, 0, 1$. Le sixième est nul : $111111$
est bien un multiple de $7$, et en effet $111111 = 7 \times 15873$.

Pour $n = 6$, les restes de $1, 11, 111, 1111, 11111, 111111$ valent $1, 5, 3, 1, 5, 3$. Le
premier et le quatrième coïncident, donc $1111 - 1 = 1110$ est un multiple de $6$, et en
effet $1110 = 6 \times 185$.

Une question pour continuer : peut-on toujours trouver un multiple de $n$ écrit uniquement
avec des $1$ (sans aucun $0$) ? Essaie avec $n = 2$, puis avec $n = 5$.
