---
id: "12869"
title: "Anna, Baptiste et les coefficients d'un polynôme"
grade: 11
theme: algebra
difficulty: 4
duration_min: 50
tags: [jeu, strategie-gagnante, polynome, racines, signe, appariement, encadrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 20 novembre 2024"
  reference: "2025-10_Sujet-Test-1-2024-2025.pdf, test senior, exercice 3 ; corrigé 2025-10_Corrige-Test-1-2024-2025.pdf (on suit la première solution ; le lemme est démontré ici en séparant deux intervalles, au lieu de l'inégalité des moyennes ou d'une dérivée)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-1-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-1-2024-2025.pdf"
---

## Statement

Soit $d \geq 1$ un entier. Anna et Baptiste jouent au jeu suivant. Chacun à son tour, en commençant par Anna, un joueur choisit un entier $k$ tel que $0 \leq k \leq 2d - 1$, qui n'a encore été choisi par aucun des deux joueurs, ainsi qu'un réel strictement positif, que l'on note $a_k$.

Lorsque tous les entiers de $0$ à $2d - 1$ ont été choisis, Anna écrit le polynôme

$$P(X) = a_0 + a_1 X + a_2 X^2 + \cdots + a_{2d-1} X^{2d-1} + X^{2d}.$$

Anna gagne s'il existe un réel $c$ tel que $P(c) = 0$. Sinon, c'est Baptiste qui gagne.

Déterminer, en fonction de $d$, lequel des deux joueurs peut gagner à coup sûr, quels que soient les coups de son adversaire.

## Hints

1. Commencez par $d = 1$ : le polynôme est $a_0 + a_1 X + X^2$. Qui gagne ?
2. Baptiste veut que $P(x) > 0$ pour tout réel $x$. Regroupez les coefficients par paires : $(a_0, a_1)$, $(a_2, a_3)$, ..., et découpez $X^{2d}$ en $d$ morceaux égaux.
3. On a $P(X) = \sum_{k=0}^{d-1} X^{2k} \left(a_{2k} + a_{2k+1} X + X^{2d-2k}/d\right)$. Quand Anna joue dans une paire, Baptiste répond dans la même paire.
4. Pour montrer que $a + bx + x^n/d > 0$ avec $n$ pair, séparez les cas $x \geq 0$, $-T \leq x < 0$ et $x < -T$, pour un nombre $T$ bien choisi.

## Solution

La réponse : **Baptiste gagne, quel que soit $d$.**

### Le cas d = 1

Le polynôme est $a_0 + a_1 X + X^2$, de discriminant $a_1^2 - 4a_0$. Si Anna choisit $a_0$, Baptiste choisit $a_1$ assez petit pour que $a_1^2 < 4a_0$. Si Anna choisit $a_1$, Baptiste choisit $a_0 > a_1^2/4$. Dans les deux cas le discriminant est strictement négatif, et le polynôme n'a pas de racine réelle. On va généraliser cette idée.

### Une écriture de P

Comme $X^{2d}$ est la somme de $d$ termes égaux à $X^{2d}/d$, on peut écrire

$$P(X) = \sum_{k=0}^{d-1} X^{2k}\, Q_k(X), \qquad \text{où} \qquad Q_k(X) = a_{2k} + a_{2k+1} X + \frac{X^{2d-2k}}{d}.$$

En effet, en développant $X^{2k} Q_k(X)$, on obtient $a_{2k} X^{2k} + a_{2k+1} X^{2k+1} + X^{2d}/d$. En sommant pour $k = 0, \ldots, d - 1$, on retrouve chaque coefficient $a_j$ une fois, et $d$ fois $X^{2d}/d$.

Le polynôme $Q_k$ ne dépend que des deux coefficients $a_{2k}$ et $a_{2k+1}$ de la paire $\{2k, 2k + 1\}$. Son terme de plus haut degré est $X^{n}/d$, avec $n = 2d - 2k$ pair et $n \geq 2$.

### Un lemme

**Lemme.** Soit $n \geq 2$ un entier pair, et $a$, $b$, $T$ des réels strictement positifs tels que

$$a > bT \qquad \text{et} \qquad bd \leq T^{n-1}.$$

Alors $a + bx + x^n/d > 0$ pour tout réel $x$.

*Preuve.* On sépare trois cas.

- Si $x \geq 0$ : les trois termes sont positifs ou nuls, et $a > 0$.
- Si $-T \leq x < 0$ : on a $bx \geq -bT$ et $x^n \geq 0$, car $n$ est pair. Donc $a + bx + x^n/d \geq a - bT > 0$.
- Si $x < -T$ : posons $t = -x$, de sorte que $t > T$ et $x^n = t^n$. Comme $n - 1 \geq 1$, on a $t^{n-1} > T^{n-1} \geq bd$, donc

$$bx + \frac{x^n}{d} = t \left(\frac{t^{n-1}}{d} - b\right) > 0,$$

et $a + bx + x^n/d > a > 0$.

### La stratégie de Baptiste

On regroupe les $2d$ indices en $d$ paires $\{0, 1\}$, $\{2, 3\}$, ..., $\{2d - 2, 2d - 1\}$. À chaque fois qu'Anna choisit un indice d'une paire, Baptiste choisit l'autre indice de **la même paire**, et il choisit son coefficient de façon que $Q_k(x) > 0$ pour tout réel $x$.

Il peut toujours choisir cet indice. En effet, au début du jeu, aucune paire n'est entamée. Chaque fois qu'Anna entame une paire, Baptiste la termine aussitôt. Donc, à chaque tour d'Anna, chaque paire est soit complète, soit intacte : Anna entame une paire intacte, et l'autre indice de cette paire est libre.

Il reste à voir que Baptiste peut choisir son coefficient comme annoncé. Notons $n = 2d - 2k$, pair et au moins égal à $2$.

**Si Anna a choisi $a_{2k} = a$**, Baptiste prend $a_{2k+1} = b$ avec

$$b = \min\left(\frac{a}{2}, \frac{1}{d}\right).$$

Avec $T = 1$ : on a $bT = b \leq a/2 < a$, et $bd \leq 1 = T^{n-1}$. Le lemme donne $Q_k(x) > 0$ pour tout $x$.

**Si Anna a choisi $a_{2k+1} = b$**, Baptiste pose $T = \max(1, bd)$ et prend $a_{2k} = a = bT + 1$. Alors $a > bT$, et, comme $T \geq 1$ et $n - 1 \geq 1$, on a $T^{n-1} \geq T \geq bd$. Le lemme donne encore $Q_k(x) > 0$ pour tout $x$.

### Baptiste gagne

À la fin du jeu, toutes les paires sont complètes, et $Q_k(x) > 0$ pour tout réel $x$ et tout $k$.

- Si $x \neq 0$, chaque $x^{2k}$ est strictement positif, donc $P(x) = \sum_{k} x^{2k} Q_k(x) > 0$.
- Si $x = 0$, $P(0) = a_0 > 0$.

Le polynôme $P$ n'a donc aucune racine réelle. **Baptiste gagne, quel que soit $d$, en suivant cette stratégie.**

## Going further

1. On échange les buts : Anna gagne si $P$ n'a pas de racine réelle, Baptiste s'il en a une. Montrez que, pour $d = 1$, c'est encore Baptiste qui gagne. Que se passe-t-il pour $d = 2$ ?
2. Où la solution utilise-t-elle que le degré de $P$ est pair ? Que se passe-t-il si le polynôme se termine par $X^{2d+1}$ au lieu de $X^{2d}$ ?
