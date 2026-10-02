---
id: "11458"
title: "Les jetons rouges en tête"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [jetons, minimum, invariant, blocs, construction, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 4 (combinatoire)"
  reference: "2023-04_Sujet-envoi-4-2023-2024.pdf, Exercices Seniors, exercice 13 ; corrigé 2024-03_corrige-envoi-4-2023-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/04/Sujet-envoi-4-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-04_Sujet-envoi-4-2023-2024.pdf"
---

## Statement

Soit $k \geqslant 1$ un entier. On aligne $4k$ jetons : $2k$ rouges et $2k$ bleus. On note R un jeton
rouge et B un jeton bleu.

Un **mouvement** consiste à choisir un groupe de jetons rouges qui se suivent et un groupe de jetons
bleus qui se suivent, avec autant de jetons dans les deux groupes, et à échanger leurs places. Les deux
groupes n'ont pas besoin d'être voisins. Par exemple, un mouvement fait passer de RBBBRRRB à RRRBRBBB :
on a échangé les deux B en positions $2$ et $3$ avec les deux R en positions $6$ et $7$.

On veut atteindre la position où les $2k$ premiers jetons sont rouges. Quel est le plus petit nombre $n$
tel que, quelle que soit la position de départ, on puisse y arriver en au plus $n$ mouvements ?

## Hints

1. Fais le cas $k = 1$, avec $4$ jetons, puis le cas $k = 2$ avec la position BRBRBRBR.
2. Pour montrer que $n$ mouvements suffisent : compte les jetons bleus dans la première moitié. S'il y en
   a peu, échange-les un par un. S'il y en a beaucoup, fais plutôt le contraire de ce qu'on veut, puis
   un dernier grand mouvement.
3. Pour la position BRBR…BR, compte les **blocs** de jetons rouges : des jetons rouges qui se suivent,
   entourés de bleus ou du bord. De combien un mouvement peut-il faire baisser ce nombre ?

## Solution

La réponse est $n = k$.

Appelons **première moitié** les $2k$ premières places et **seconde moitié** les $2k$ dernières.

**On y arrive toujours en au plus $k$ mouvements.** Soit $b$ le nombre de jetons bleus dans la première
moitié. Il y a alors $2k - b$ jetons rouges dans la première moitié, et donc $b$ jetons rouges dans la
seconde moitié.

- Si $b \leqslant k$ : on échange, un par un, chaque jeton bleu de la première moitié avec un jeton
  rouge de la seconde moitié (un groupe d'un seul jeton est permis). Cela fait $b \leqslant k$
  mouvements, et la première moitié est alors entièrement rouge.
- Si $b \geqslant k + 1$ : la première moitié contient $2k - b \leqslant k - 1$ jetons rouges. On les
  échange un par un avec des jetons bleus de la seconde moitié, en au plus $k - 1$ mouvements. La
  première moitié est alors entièrement bleue, et la seconde entièrement rouge. Un dernier mouvement
  échange les $2k$ jetons bleus de la première moitié avec les $2k$ jetons rouges de la seconde. En
  tout, cela fait au plus $(k - 1) + 1 = k$ mouvements.

**Certaines positions demandent $k$ mouvements.** Partons de la position BRBR…BR, formée de $2k$
paires BR. Appelons **bloc rouge** un groupe de jetons rouges qui se suivent, le plus long possible
(ses voisins sont bleus, ou c'est le bord). Au départ, il y a $2k$ blocs rouges. À l'arrivée, il n'y en
a qu'un.

Montrons qu'**un mouvement fait baisser le nombre de blocs rouges d'au plus $2$**. Un mouvement revient
à faire deux choses l'une après l'autre : repeindre en bleu un groupe de rouges qui se suivent, puis
repeindre en rouge un groupe de bleus qui se suivent.

- *Repeindre en bleu un groupe de rouges qui se suivent.* Ce groupe est à l'intérieur d'un seul bloc
  rouge. Si c'est tout le bloc, celui-ci disparaît : le nombre de blocs baisse de $1$. Sinon, le bloc
  rétrécit, ou il est coupé en deux : le nombre de blocs reste le même, ou augmente de $1$.
- *Repeindre en rouge un groupe de bleus qui se suivent.* Les nouveaux jetons rouges peuvent se coller
  au bloc rouge de gauche et au bloc rouge de droite. Au pire, ces deux blocs se réunissent en un
  seul : le nombre de blocs baisse de $1$. Sinon, il reste le même, ou il augmente de $1$ si un nouveau
  bloc apparaît.

Chaque étape fait baisser le nombre de blocs d'au plus $1$, donc un mouvement le fait baisser d'au
plus $2$. Pour passer de $2k$ blocs à $1$ bloc, il faut faire baisser ce nombre de $2k - 1$. Avec
$k - 1$ mouvements, on ne peut le faire baisser que de $2k - 2$ au plus, ce qui ne suffit pas. Il faut
donc au moins $k$ mouvements.

**Conclusion.** Le plus petit nombre $n$ qui convient est $n = k$.
