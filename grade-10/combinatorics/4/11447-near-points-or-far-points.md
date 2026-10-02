---
id: "11447"
title: "Des points proches ou des points éloignés"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [distances, inegalite-triangulaire, construction, tiroirs, demonstration]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 4 (combinatoire)"
  reference: "2023-02_Sujet-envoi-4.pdf, Exercices Seniors, exercice 16 ; corrigé 2023-03_corrige-envoi-4.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/02/Sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-02_Sujet-envoi-4.pdf"
---

## Statement

Soit $k \geqslant 1$ un entier. Quel est le plus petit entier $n$ ayant la propriété suivante ?

> Quelle que soit la façon de placer $n$ points distincts dans le plan, on peut toujours en choisir
> $k$ qui sont **tous à distance au plus $2$** les uns des autres, ou bien $k$ qui sont **tous à
> distance strictement plus grande que $1$** les uns des autres.

## Hints

1. Traite $k = 2$, puis $k = 3$. Pour $k = 3$, essaie de placer $4$ points de façon qu'on ne puisse
   en choisir $3$ ni d'une façon ni de l'autre.
2. Si un point $P$ a au moins $k$ points du dessin à distance au plus $1$ de lui, que dire des
   distances entre ces points ?
3. Sinon, choisis des points éloignés un par un. Chaque point choisi « interdit » les points à
   distance au plus $1$ de lui. Combien de points sont interdits au plus quand tu en as choisi $j$ ?

## Solution

La réponse est $n = (k - 1)^2 + 1$.

**Étape 1 : avec $(k - 1)^2 + 1$ points, on y arrive toujours.** Prenons $(k - 1)^2 + 1$ points
distincts du plan. Pour un point $P$ du dessin, appelons **voisins** de $P$ les points du dessin à
distance au plus $1$ de $P$, en comptant $P$ lui-même.

*Premier cas : un point $P$ a au moins $k$ voisins.* Choisissons $k$ de ces voisins. Pour deux
d'entre eux $Q$ et $R$, l'inégalité triangulaire donne

$$QR \leqslant QP + PR \leqslant 1 + 1 = 2 .$$

Ces $k$ points sont tous à distance au plus $2$ les uns des autres.

*Second cas : chaque point a au plus $k - 1$ voisins.* Choisissons des points un par un.

- On prend pour $P_1$ un point quelconque.
- Supposons choisis $P_1, \ldots, P_j$, avec $j \leqslant k - 1$, tous à distance strictement plus
  grande que $1$ les uns des autres. Les voisins de $P_1$, de $P_2$, ..., de $P_j$ sont au plus
  $j\,(k - 1) \leqslant (k - 1)^2$ en tout. Comme il y a $(k - 1)^2 + 1$ points, il en reste au
  moins un qui n'est voisin d'aucun des points $P_1, \ldots, P_j$. On le prend pour $P_{j+1}$ : il
  est à distance strictement plus grande que $1$ de chacun d'eux.

On continue ainsi jusqu'à avoir choisi $k$ points $P_1, \ldots, P_k$. Ils sont tous à distance
strictement plus grande que $1$ les uns des autres.

Dans les deux cas, on trouve $k$ points qui conviennent.

**Étape 2 : avec $(k - 1)^2$ points, on peut échouer.** Pour $k = 1$, il n'y a aucun point et l'on ne
peut pas en choisir un. Supposons $k \geqslant 2$, et formons $k - 1$ **paquets** de $k - 1$ points
chacun :

- dans chaque paquet, les points sont sur un segment de longueur $1$, donc à distance au plus $1$ les
  uns des autres ;
- les paquets sont très loin les uns des autres, par exemple sur une même droite avec $10$ entre deux
  paquets voisins, de sorte que deux points de paquets différents sont à distance plus grande que $2$.

Prenons alors $k$ points du dessin.

- Ils ne sont pas tous à distance au plus $2$ les uns des autres. Sinon ils seraient tous dans le même
  paquet, qui n'a que $k - 1$ points.
- Ils ne sont pas tous à distance strictement plus grande que $1$ les uns des autres. Sinon ils
  seraient tous dans des paquets différents, et il n'y a que $k - 1$ paquets.

Avec $(k - 1)^2$ points, la propriété peut donc être fausse. Avec moins de points encore, il suffit
d'enlever des points à cet exemple : les deux raisonnements restent valables.

**Conclusion.** Le plus petit entier $n$ qui convient est $(k - 1)^2 + 1$.

Par exemple, pour $k = 3$, il faut $5$ points : les $4$ points $(0, 0)$, $(\text{0,5}\,; 0)$,
$(10, 0)$ et $(\text{10,5}\,; 0)$ montrent que $4$ ne suffisent pas.
