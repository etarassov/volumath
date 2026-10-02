---
id: "11046"
title: "Quentin, Timothé et les sommes de puissances"
grade: 10
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [jeu, strategie-gagnante, restes, puissances, tiroirs, nombres-premiers]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 3 (arithmétique)"
  reference: "2023-01_Sujet-envoi-3.pdf, Exercices Juniors, exercice 9 ; corrigé 2023-03_corrige.pdf. Le corrigé utilise le petit théorème de Fermat ; la solution ci-dessous le remplace par un argument des tiroirs."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/01/Sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-01_Sujet-envoi-3.pdf"
---

## Statement

Quentin et Timothé jouent à un jeu.

* D'abord, Quentin choisit un nombre premier $p > 2$, puis Timothé choisit un entier $n_0 \geqslant 1$.
* Quentin choisit alors un entier $n_1 > n_0$ et calcule $s_1 = n_0^{n_1} + n_1^{n_0}$.
* Puis Timothé choisit un entier $n_2 > n_1$ et calcule $s_2 = n_1^{n_2} + n_2^{n_1}$.
* Les joueurs continuent chacun à leur tour : au tour $k$, le joueur choisit un entier $n_k > n_{k-1}$ et
  calcule $s_k = n_{k-1}^{n_k} + n_k^{n_{k-1}}$. Quentin joue donc aux tours impairs, Timothé aux tours
  pairs.

Le premier joueur qui choisit un entier $n_k$ tel que $p$ divise

$$s_k \times (s_1 + 2s_2 + 3s_3 + \cdots + k s_k)$$

gagne la partie. Lequel des deux joueurs possède une stratégie gagnante ?

## Hints

1. Si $n_{k-1}$ et $n_k$ sont tous les deux des multiples de $p$, que dire de $s_k$ ? Qu'est-ce que cela signifie si Quentin choisit un multiple de $p$ ?
2. Timothé aimerait que tous les $s_k$ aient le même reste dans la division par $p$. Cherche des entiers $g$ tels que $x^g + g^x$ ait toujours pour reste $2$ quand $p$ ne divise pas $x$. Il faut que $g$ ait pour reste $1$, et que $x^g$ aussi.
3. Si $p$ ne divise pas $x$, regarde les restes de $x, x^2, \ldots, x^p$ dans la division par $p$. Deux d'entre eux sont égaux : qu'en déduis-tu ?
4. Si tous les $s_j$ ont pour reste $2$, quel est le reste de $s_k(s_1 + 2s_2 + \cdots + ks_k)$ ? Pour quel premier $k$ est-il nul, et qui joue à ce tour-là ?

## Solution

**Réponse :** c'est Timothé qui a une stratégie gagnante.

Notons $T_k = s_1 + 2s_2 + \cdots + k s_k$ : le joueur qui choisit $n_k$ gagne si $p$ divise $s_k T_k$
(et si personne n'a gagné avant). Dans toute la solution, « le reste » veut dire le reste dans la division
par $p$. Le reste d'une somme ou d'un produit se calcule à partir des restes des termes. On utilise aussi
le lemme d'Euclide : si le nombre premier $p$ divise un produit, il divise l'un des facteurs.

### Trois lemmes

**Lemme 1.** Si $p$ ne divise pas $x$, il existe un entier $\beta$ avec $1 \leqslant \beta \leqslant p - 1$
tel que $p$ divise $x^\beta - 1$. Par conséquent, $p$ divise $x^N - 1$ dès que $N$ est un multiple de
$(p - 1)!$.

*Preuve.* Aucune des puissances $x, x^2, \ldots, x^p$ n'est divisible par $p$ (lemme d'Euclide). Leurs
restes sont donc parmi les $p - 1$ nombres $1, 2, \ldots, p - 1$. Comme il y a $p$ puissances, deux d'entre
elles ont le même reste (principe des tiroirs) : $x^i$ et $x^j$ avec $i < j \leqslant p$. Alors $p$ divise
$x^j - x^i = x^i(x^{j-i} - 1)$, et comme $p$ ne divise pas $x^i$, il divise $x^{j-i} - 1$. On prend
$\beta = j - i$, qui est entre $1$ et $p - 1$.

Si maintenant $(p - 1)!$ divise $N$, alors $\beta$ divise $N$ (car $\beta \leqslant p - 1$). En écrivant
$N = \beta m$, le nombre $x^N - 1 = (x^\beta)^m - 1$ est divisible par $x^\beta - 1$ (car
$y^m - 1 = (y - 1)(y^{m-1} + \cdots + 1)$), donc par $p$. $\square$

**Lemme 2.** Appelons *bon* un entier $g \geqslant 1$ tel que $g - 1$ soit un multiple de $p$ et que $g$
soit un multiple de $(p - 1)!$. Il existe des bons entiers aussi grands que l'on veut.

*Preuve.* Posons $c = (p - 1)!$. C'est un produit d'entiers plus petits que $p$, donc $p$ ne le divise pas,
et $c \geqslant 2$ car $p \geqslant 3$. D'après le lemme 1, il existe $\gamma \geqslant 1$ tel que $p$
divise $c^\gamma - 1$. Pour tout $j \geqslant 1$, le nombre $g = c^{\gamma j}$ est un multiple de $c$, et
$g - 1 = (c^\gamma)^j - 1$ est divisible par $c^\gamma - 1$, donc par $p$. Ces nombres sont bons, et ils
deviennent aussi grands qu'on veut quand $j$ augmente. $\square$

**Lemme 3.** Soit $g$ un bon entier et $x \geqslant 1$ un entier. Alors $x^g + g^x$ a pour reste $2$ si
$p$ ne divise pas $x$, et pour reste $1$ si $p$ divise $x$.

*Preuve.* $g^x - 1$ est divisible par $g - 1$, donc par $p$ : $g^x$ a pour reste $1$. Si $p$ ne divise pas
$x$, le lemme 1 (avec $N = g$) montre que $x^g$ a pour reste $1$, et la somme a pour reste $2$. Si $p$
divise $x$, alors $x^g$ est un multiple de $p$, et la somme a pour reste $1$. $\square$

### La stratégie de Timothé

* Il choisit pour $n_0$ un bon entier.
* À chaque tour pair $2k$ : si le nombre $n_{2k-1}$ que Quentin vient de jouer est un multiple de $p$,
  Timothé choisit un multiple de $p$ plus grand que lui. Sinon, il choisit un bon entier plus grand que
  lui (c'est possible d'après le lemme 2).

### Pourquoi elle gagne

Remarquons que $s_j$ fait toujours intervenir un nombre de Quentin et un nombre de Timothé, et que
l'expression $x^y + y^x$ ne change pas si on échange $x$ et $y$.

**Tant que Quentin ne joue pas de multiple de $p$**, Timothé ne joue que des bons entiers, et chaque $s_j$
est de la forme $x^g + g^x$, avec $g$ bon et $x$ non multiple de $p$. D'après le lemme 3, tous les $s_j$ ont
pour reste $2$. Donc $T_j$ a le même reste que $2(1 + 2 + \cdots + j) = j(j + 1)$, et $s_j T_j$ le même
reste que $2j(j + 1)$.

Comme $p$ est premier et impair, $p$ divise $2j(j + 1)$ exactement quand $p$ divise $j$ ou $j + 1$. Pour
$1 \leqslant j \leqslant p - 2$, les nombres $j$ et $j + 1$ sont entre $1$ et $p - 1$, donc personne ne
gagne. Le premier tour où cela arrive est $j = p - 1$, et comme $p$ est impair, $p - 1$ est pair : c'est
Timothé qui joue, et il gagne.

**Si Quentin joue un multiple de $p$**, disons pour la première fois au tour $2k + 1$ (forcément
$2k + 1 \leqslant p - 2$, sinon la partie est déjà finie). Jusqu'au tour $2k$, tous les $s_j$ ont pour
reste $2$ et personne n'a gagné. Au tour $2k + 1$, le nombre $n_{2k}$ de Timothé est bon et $n_{2k+1}$ est
un multiple de $p$, donc $s_{2k+1}$ a pour reste $1$ (lemme 3). Alors $T_{2k+1}$ a le même reste que

$$2k(2k + 1) + (2k + 1) \times 1 = (2k + 1)^2 ,$$

et $s_{2k+1} T_{2k+1}$ aussi. Comme $1 \leqslant 2k + 1 \leqslant p - 2$, le nombre premier $p$ ne divise
pas $2k + 1$, donc pas $(2k + 1)^2$ : Quentin ne gagne pas. Au tour suivant, Timothé joue un multiple de
$p$. Alors $s_{2k+2} = n_{2k+1}^{n_{2k+2}} + n_{2k+2}^{n_{2k+1}}$ est une somme de deux multiples de $p$,
donc $p$ divise $s_{2k+2}$ et aussi $s_{2k+2} T_{2k+2}$ : Timothé gagne.

**Conclusion.** Quel que soit le nombre premier $p$ choisi par Quentin et quels que soient ses coups,
Timothé gagne au plus tard au tour $p - 1$. C'est donc Timothé qui a une stratégie gagnante.

## Going further

Dans le cas $p = 3$, donner explicitement une valeur possible pour $n_0$, et décrire toute la partie.
(Ici $(p - 1)! = 2$, et $2^2 = 4$ a pour reste $1$ dans la division par $3$.)
