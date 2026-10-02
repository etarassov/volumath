---
id: "12804"
title: "Un produit de deux termes pondérés par des puissances de 2"
grade: 12
theme: algebra
difficulty: 5
duration_min: 60
tags: [inegalite, puissances-de-deux, majoration, suites-geometriques, convexite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 23 novembre 2022"
  reference: "2023-01_Enonce-Web-Test-1.pdf, exercice 4 ; corrigé 2023-01_Corrige-Web-Test-1.pdf (solution suivie : la « solution alternative n° 1 », simplifiée)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/01/Énoncé-Web-Test-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2023-01_Enonce-Web-Test-1.pdf"
---

## Statement

Soit $n \geq 3$ un entier et $x_1, x_2, \ldots, x_n$ des réels de l'intervalle $[0, 1]$. On suppose que leur somme

$$s = x_1 + x_2 + \cdots + x_n$$

vérifie $s \geq 3$. Démontrer qu'il existe deux indices $i$ et $j$ entre $1$ et $n$ (éventuellement égaux) tels que

$$2^{j-i}\, x_i\, x_j > 2^{s-3}.$$

## Hints

1. Le produit se sépare en deux facteurs : $2^{j-i} x_i x_j = \left(2^{-i} x_i\right) \times \left(2^{j} x_j\right)$, et les indices $i$ et $j$ se choisissent indépendamment. Que vaut le plus grand de ces produits ?
2. Notez $F$ le plus grand des nombres $2^{-t} x_t$ et $G$ le plus grand des nombres $2^{t} x_t$. Par définition, chaque $x_t$ est majoré par $2^t F$, par $2^{-t} G$ et par $1$. Posez $p = 2F$ et $q = 2^{-n} G$, et réécrivez ces trois majorations.
3. Les premiers termes sont donc majorés par $p, 2p, 4p, \ldots$ tant que ces nombres restent au plus égaux à $1$, et les derniers par $\ldots, 4q, 2q, q$. Appelez $a$ le plus grand entier tel que $2^{a-1} p \leq 1$, et $b$ le plus grand entier tel que $2^{b-1} q \leq 1$.
4. Montrez d'abord que $a + b \leq n$ : sinon, la somme $s$ serait plus petite que $3$.
5. Ensuite, majorez $s$ en coupant la liste en trois blocs, de longueurs $a$, $n - a - b$ et $b$. Pour finir, il vous faudra l'inégalité $2^x \leq 2x$, vraie pour tout $x \in [1, 2]$.

## Solution

### Étape 1 : se ramener à deux maxima

Pour $1 \leq t \leq n$, posons $f_t = 2^{-t} x_t$ et $g_t = 2^{t} x_t$, et notons

$$F = \max_{1 \leq t \leq n} f_t, \qquad G = \max_{1 \leq t \leq n} g_t.$$

Pour tous $i$ et $j$, on a $2^{j-i} x_i x_j = f_i \times g_j \leq F \times G$, et il y a égalité si l'on choisit pour $i$ un indice où $f$ atteint son maximum et pour $j$ un indice où $g$ atteint le sien. Il suffit donc de démontrer

$$F \times G > 2^{s-3}.$$

Comme $s \geq 3$, l'un des $x_t$ au moins est non nul, donc $F > 0$ et $G > 0$.

### Étape 2 : trois majorations de chaque terme

Posons $p = 2F$ et $q = 2^{-n} G$. Pour tout $t$, on a $f_t \leq F$ et $g_t \leq G$, ce qui s'écrit

$$x_t \leq 2^{t} F = 2^{t-1} p, \qquad x_t \leq 2^{-t} G = 2^{n-t} q, \qquad x_t \leq 1. \qquad (1)$$

De plus $0 < p \leq 1$, car chaque $f_t = 2^{-t} x_t$ vaut au plus $\frac{1}{2}$, et $0 < q \leq 1$, car $2^{-n} g_t = 2^{t-n} x_t \leq 1$. Enfin

$$F \times G = \frac{p}{2} \times 2^n q = 2^{n-1}\, p\, q. \qquad (2)$$

Appelons $a$ le plus grand entier $k \geq 1$ tel que $2^{k-1} p \leq 1$. Il existe, car $k = 1$ convient et $2^{k-1} p$ devient plus grand que $1$ pour $k$ grand. Par définition de $a$,

$$2^{a-1} p \leq 1 < 2^{a} p, \qquad \text{donc} \qquad 1 < 2^a p \leq 2.$$

De même, soit $b$ le plus grand entier $k \geq 1$ tel que $2^{k-1} q \leq 1$, de sorte que $1 < 2^b q \leq 2$.

On utilisera deux fois la somme d'une suite géométrique : $1 + 2 + 4 + \cdots + 2^{k-1} = 2^k - 1$.

### Étape 3 : on a a + b ≤ n

Supposons au contraire $a + b \geq n + 1$. Posons $a' = \min(a, n)$ et $b' = n - a'$. Alors $b' \leq b - 1$ : si $a' = a$, c'est $n - a \leq b - 1$ ; si $a' = n$, c'est $0 \leq b - 1$.

- Les $a'$ premiers termes vérifient $x_t \leq 2^{t-1} p$ d'après (1), donc
$$x_1 + \cdots + x_{a'} \leq p\left(1 + 2 + \cdots + 2^{a'-1}\right) = p\left(2^{a'} - 1\right) < 2^{a'} p \leq 2^{a} p \leq 2.$$
- Les $b'$ derniers termes vérifient $x_t \leq 2^{n-t} q$, où $n - t$ prend les valeurs $0, 1, \ldots, b'-1$, donc
$$x_{a'+1} + \cdots + x_n \leq q\left(2^{b'} - 1\right) < 2^{b'} q \leq 2^{b-1} q \leq 1.$$
(S'il n'y a aucun terme, la somme vaut $0$ et l'inégalité reste vraie.)

En additionnant, $s < 2 + 1 = 3$, ce qui contredit $s \geq 3$. Donc $a + b \leq n$.

### Étape 4 : la majoration de s

Posons $c = n - a - b \geq 0$, puis $A = 2^a p$ et $B = 2^b q$, deux réels de l'intervalle $]1, 2]$. On coupe la liste en trois blocs consécutifs.

- Les $a$ premiers termes : $x_1 + \cdots + x_a \leq p\left(2^a - 1\right) < A$.
- Les $c$ termes du milieu : chacun vaut au plus $1$, leur somme au plus $c$.
- Les $b$ derniers termes : $x_{n-b+1} + \cdots + x_n \leq q\left(2^b - 1\right) < B$.

Donc

$$s < A + B + c.$$

Par ailleurs, d'après (2),

$$F \times G = 2^{n-1} p q = 2^{a} p \times 2^{b} q \times 2^{c-1} = 2^{c-1} A B.$$

### Étape 5 : une inégalité sur [1, 2] et la conclusion

**Lemme.** Pour tout réel $x \in [1, 2]$, on a $2^x \leq 2x$.

*Preuve.* La fonction $h(x) = 2x - 2^x$ vérifie $h(1) = 0$ et $h(2) = 0$. Sa dérivée $h'(x) = 2 - \ln(2)\, 2^x$ est strictement décroissante, donc $h$ est d'abord croissante puis décroissante sur $[1, 2]$ (ou monotone). Une telle fonction, nulle aux deux bouts, est positive sur tout l'intervalle. Autrement dit, la courbe de la fonction convexe $x \mapsto 2^x$ est sous sa corde entre les points $(1, 2)$ et $(2, 4)$, qui est la droite $y = 2x$.

Comme la fonction $x \mapsto 2^x$ est strictement croissante, l'étape 4 et le lemme appliqué à $A$ et à $B$ donnent

$$2^{s-3} < 2^{A + B + c - 3} = 2^{c-3} \times 2^{A} \times 2^{B} \leq 2^{c-3} \times 2A \times 2B = 2^{c-1} A B = F \times G.$$

**Conclusion.** En prenant pour $i$ un indice où $2^{-i}x_i$ est maximal et pour $j$ un indice où $2^{j}x_j$ est maximal, on obtient

$$2^{j-i}\, x_i\, x_j = F \times G > 2^{s-3}.$$

## Going further

1. Le résultat ne peut pas être amélioré en multipliant $2^{s-3}$ par une constante plus grande que $1$. Pour le voir, prenez $n = 2m - 1$ et
$$x_t = 2^{t-m} \ (1 \leq t \leq m-2), \quad x_{m-1} = x_{m+1} = \tfrac{1}{2} + 2^{1-m}, \quad x_m = 1, \quad x_t = 2^{m-t} \ (m+2 \leq t \leq n).$$
Vérifiez que $s = 3$, puis que tous les produits $2^{j-i} x_i x_j$ sont au plus $\left(1 + 2^{2-m}\right)^2$, nombre aussi proche de $1$ qu'on veut.
