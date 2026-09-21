---
id: "8306"
title: "Cartes vertes et cartes rouges"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [reordonnement, maximum, principe-des-tiroirs, permutation]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, Coupe Animath de printemps 2020"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Coupe Animath de printemps 2020, exercice 7 (collège)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

Le jeu du *mathinal* se joue à $n$ joueurs, avec $n \geqslant 2$, et avec $n$ cartes vertes et
$n$ cartes rouges.

Au départ, chaque joueur prend une carte verte et une carte rouge, et écrit un entier sur
chacune des deux, éventuellement le même entier sur les deux. Chaque joueur calcule ensuite la
somme des deux nombres qu'il a écrits, et on note $M$ la plus grande de ces $n$ sommes.

On redistribue alors les cartes rouges, et seulement les cartes rouges, de la façon suivante :

- le joueur dont la carte verte porte le plus petit nombre reçoit la carte rouge qui porte le plus grand nombre ;
- le joueur dont la carte verte porte le deuxième plus petit nombre reçoit la carte rouge qui porte le deuxième plus grand nombre ;
- et ainsi de suite jusqu'au dernier.

Chaque joueur calcule de nouveau la somme de ses deux cartes, et on note $M'$ la plus grande
de ces $n$ nouvelles sommes.

1. Peut-on avoir $M' < M$ ?
2. Peut-on avoir $M' > M$ ?

## Hints

1. Pour la première question, il suffit d'un seul exemple bien choisi. Essaie avec $n = 2$ et de tout petits nombres.
2. Pour la seconde question, commence par essayer quelques parties à deux ou trois joueurs. Tu vas conjecturer que la réponse est non, c'est-à-dire que l'on a toujours $M' \leqslant M$.
3. Pour démontrer $M' \leqslant M$, renumérote les joueurs par ordre croissant de leur carte verte : $v_1 \leqslant v_2 \leqslant \cdots \leqslant v_n$. Note aussi $r_1 \geqslant r_2 \geqslant \cdots \geqslant r_n$ les nombres des cartes rouges rangés dans l'ordre décroissant. Que reçoit le joueur $j$ après la redistribution ?
4. Soit $k$ un joueur qui réalise le nouveau maximum : $M' = v_k + r_k$. Pour prouver $M \geqslant M'$, il suffit de trouver **un seul** joueur dont la somme de départ était déjà au moins $v_k + r_k$.
5. Il y a $n - k + 1$ joueurs d'indice $\geqslant k$, et $k$ cartes rouges parmi les plus grandes, celles de rang $\leqslant k$. Compte : $(n-k+1) + k = n+1$. Qu'en déduit le principe des tiroirs ?

## Solution

**1) Oui, $M'$ peut être strictement plus petit que $M$.**

Prenons $n = 2$.

| | carte verte | carte rouge | somme |
|---|---|---|---|
| joueur 1 | $0$ | $0$ | $0$ |
| joueur 2 | $1$ | $1$ | $2$ |

On a $M = 2$.

Le joueur 1 a la plus petite carte verte, il reçoit donc la plus grande carte rouge, celle qui
porte $1$. Le joueur 2 reçoit la carte rouge qui porte $0$.

| | carte verte | nouvelle carte rouge | somme |
|---|---|---|---|
| joueur 1 | $0$ | $1$ | $1$ |
| joueur 2 | $1$ | $0$ | $1$ |

On a $M' = 1 < 2 = M$. **La réponse à la question 1 est oui.**

**2) Non, $M'$ ne peut jamais dépasser $M$.**

*Les notations.* Renumérotons les joueurs de sorte que leurs cartes vertes soient rangées dans
l'ordre croissant :

$$v_1 \leqslant v_2 \leqslant \cdots \leqslant v_n .$$

Rangeons aussi les nombres des cartes rouges dans l'ordre **décroissant** :

$$r_1 \geqslant r_2 \geqslant \cdots \geqslant r_n .$$

Avec ces notations, la redistribution décrite par l'énoncé donne exactement la carte rouge
$r_j$ au joueur $j$. Donc

$$M' = \max_{1 \leqslant j \leqslant n} \; (v_j + r_j) .$$

Au départ, chaque joueur $j$ avait écrit sur sa carte rouge l'un des nombres $r_1, \ldots, r_n$,
chacun exactement une fois. Notons $\sigma(j)$ le rang de la carte rouge que le joueur $j$ avait
au départ : le joueur $j$ possédait donc le nombre $r_{\sigma(j)}$, et $\sigma$ est une bijection
de $\{1, \ldots, n\}$ dans lui-même. On a

$$M = \max_{1 \leqslant j \leqslant n} \; \left(v_j + r_{\sigma(j)}\right) .$$

*Le cœur de la preuve.* Choisissons un indice $k$ qui réalise le nouveau maximum :

$$M' = v_k + r_k .$$

Il suffit de trouver un joueur $j$ dont la somme de départ vérifiait déjà
$v_j + r_{\sigma(j)} \geqslant v_k + r_k$ : on aura alors $M \geqslant M'$.

Regardons les joueurs d'indice $k, k+1, \ldots, n$. Il y en a $n - k + 1$. Leurs images par
$\sigma$ sont $n-k+1$ entiers deux à deux distincts de $\{1, \ldots, n\}$.

Si toutes ces images étaient dans $\{k+1, \ldots, n\}$, on aurait $n-k+1$ entiers distincts dans
un ensemble qui n'en contient que $n-k$ : impossible, par le principe des tiroirs.

Il existe donc un indice $j$ avec

$$j \geqslant k \qquad \text{et} \qquad \sigma(j) \leqslant k .$$

*On conclut.* Pour ce joueur $j$ :

- comme $j \geqslant k$ et que la suite des $v$ est croissante, $v_j \geqslant v_k$ ;
- comme $\sigma(j) \leqslant k$ et que la suite des $r$ est décroissante, $r_{\sigma(j)} \geqslant r_k$.

En additionnant,

$$v_j + r_{\sigma(j)} \;\geqslant\; v_k + r_k \;=\; M' .$$

Or $v_j + r_{\sigma(j)}$ est l'une des sommes de départ, donc $M \geqslant v_j + r_{\sigma(j)}$.
Finalement

$$M \;\geqslant\; M' .$$

**La réponse à la question 2 est non :** on a toujours $M' \leqslant M$, quelle que soit la partie.

## Going further

Un piège fréquent dans ce problème est de croire que la plus grande somme est forcément obtenue
par le joueur qui a la plus grande carte verte. C'est faux : dans l'exemple

| | carte verte | carte rouge | somme |
|---|---|---|---|
| joueur 1 | $0$ | $10$ | $10$ |
| joueur 2 | $5$ | $0$ | $5$ |

le maximum est atteint par le joueur dont la carte verte est la plus petite. On remarquera que
les cartes vertes et les cartes rouges jouent des rôles symétriques : le même raisonnement
« prouverait » aussi que le maximum est atteint par le joueur ayant la plus grande carte rouge,
ce qui montre bien que l'argument ne tient pas.
