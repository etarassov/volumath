---
id: "12471"
title: "Atteindre chaque intervalle [r, r + 2] avec des nombres de somme 2n"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [sommes, inegalites, recurrence, ordre, choix-de-nombres]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 19 et 20 février 2020"
  reference: "2020-11_Enonce-Test-Fevrier-2020.pdf, exercice 8 (groupe EGMO) ; corrigé 2020-03_Correction-Web.pdf (dans le dernier cas, le corrigé écrit x_k au lieu de x_{k-1}, simple faute de frappe)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/11/Enonce-Test-Fevrier-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2020-11_Enonce-Test-Fevrier-2020.pdf"
---

## Statement

Noémie a écrit $n$ nombres réels sur son cahier. Chacun est supérieur ou égal à $1$, et la somme de
ces $n$ nombres est égale à $2n$.

Démontrer que, pour tout réel $r$ tel que $0 \leqslant r \leqslant 2n$, Noémie peut choisir certains
des nombres qu'elle a écrits de sorte que leur somme appartienne à l'intervalle $[r, r + 2]$.

## Hints

1. Range les nombres dans l'ordre croissant : $x_1 \leqslant x_2 \leqslant \cdots \leqslant x_n$.
   Pourquoi le plus grand ne peut-il pas être trop grand ? Montre plus précisément que
   $x_k \leqslant k + 1$ pour tout $k$.
2. Essaie de démontrer plus que demandé : pour tout $k$ et pour tout $r$ entre $0$ et
   $x_1 + \cdots + x_k$, on peut atteindre $[r, r + 2]$ en choisissant seulement parmi les $k$
   premiers nombres. Raisonne par récurrence sur $k$.
3. Pour passer de $k - 1$ à $k$, sépare trois cas : $r \leqslant x_k - 2$, puis
   $x_k - 2 \leqslant r \leqslant x_k$, puis $r > x_k$. Dans le dernier cas, utilise les $k - 1$
   premiers nombres pour le réel $r - x_k$, puis ajoute $x_k$.

## Solution

Rangeons les nombres de Noémie dans l'ordre croissant :
$$1 \leqslant x_1 \leqslant x_2 \leqslant \cdots \leqslant x_n, \qquad x_1 + x_2 + \cdots + x_n = 2n.$$
Pour $0 \leqslant k \leqslant n$, notons $s_k = x_1 + \cdots + x_k$ la somme des $k$ premiers, avec
$s_0 = 0$. On a $s_n = 2n$.

### Étape 1 : $x_k \leqslant k + 1$ pour tout $k$

Soit $k$ entre $1$ et $n$, et supposons que $x_k > k + 1$. Les $n - k + 1$ nombres
$x_k, x_{k+1}, \ldots, x_n$ sont tous plus grands que $k + 1$, et les $k - 1$ nombres
$x_1, \ldots, x_{k-1}$ sont au moins égaux à $1$. Donc
$$2n = x_1 + \cdots + x_n > (k - 1) + (n - k + 1)(k + 1).$$
Développons : $(n - k + 1)(k + 1) = nk + n - k^2 + 1$, donc le membre de droite vaut
$$nk + n - k^2 + k = 2n + (k - 1)(n - k).$$
Comme $1 \leqslant k \leqslant n$, on a $(k - 1)(n - k) \geqslant 0$, et on obtient $2n > 2n$, ce
qui est impossible. Donc **$x_k \leqslant k + 1$**.

### Étape 2 : une propriété plus forte, démontrée par récurrence

Pour $0 \leqslant k \leqslant n$, appelons $\mathcal{P}(k)$ la propriété suivante :

> pour tout réel $r$ tel que $0 \leqslant r \leqslant s_k$, on peut choisir certains des nombres
> $x_1, \ldots, x_k$ (éventuellement aucun) dont la somme appartient à $[r, r + 2]$.

**Initialisation.** Pour $k = 0$, on a $s_0 = 0$, donc $r = 0$. En ne choisissant aucun nombre, on
obtient la somme $0$, qui est dans $[0, 2]$.

**Hérédité.** Soit $k$ entre $1$ et $n$ tel que $\mathcal{P}(k - 1)$ est vraie, et soit $r$ un
réel tel que $0 \leqslant r \leqslant s_k$. On sépare trois cas.

- **Si $r \leqslant x_k - 2$.** D'après l'étape 1, $r \leqslant (k + 1) - 2 = k - 1$. Comme chaque
  nombre est au moins égal à $1$, on a $s_{k-1} \geqslant k - 1$, donc $0 \leqslant r \leqslant s_{k-1}$.
  La propriété $\mathcal{P}(k - 1)$ donne des nombres parmi $x_1, \ldots, x_{k-1}$ dont la somme
  est dans $[r, r + 2]$.
- **Si $x_k - 2 \leqslant r \leqslant x_k$.** On choisit le seul nombre $x_k$. Sa somme $x_k$
  vérifie $r \leqslant x_k \leqslant r + 2$.
- **Si $x_k < r \leqslant s_k$.** Posons $\delta = r - x_k$. On a
  $0 < \delta \leqslant s_k - x_k = s_{k-1}$. La propriété $\mathcal{P}(k - 1)$ donne des nombres
  parmi $x_1, \ldots, x_{k-1}$ dont la somme $\sigma$ vérifie $\delta \leqslant \sigma \leqslant \delta + 2$.
  On leur ajoute $x_k$. La nouvelle somme $\sigma + x_k$ vérifie
  $$r = \delta + x_k \leqslant \sigma + x_k \leqslant \delta + x_k + 2 = r + 2.$$

Ces trois cas couvrent tous les réels $r$ entre $0$ et $s_k$. Donc $\mathcal{P}(k)$ est vraie. Par
récurrence, $\mathcal{P}(k)$ est vraie pour tout $k$ entre $0$ et $n$.

### Conclusion

La propriété $\mathcal{P}(n)$, avec $s_n = 2n$, est exactement ce que demande l'énoncé. Le choix
n'est jamais vide : si $r > 0$, la somme choisie est au moins égale à $r$, donc non nulle, et si
$r = 0$, on peut prendre le seul nombre $x_1$, qui vérifie $1 \leqslant x_1 \leqslant 2$ d'après
l'étape 1.

**Pour tout réel $r$ entre $0$ et $2n$, Noémie peut choisir des nombres dont la somme est dans
$[r, r + 2]$.**

## Going further

1. Montrer qu'on ne peut pas remplacer l'intervalle $[r, r + 2]$ par un intervalle plus court. (On
   pourra regarder le cas où tous les nombres valent $2$.)
2. Que devient le résultat si l'on suppose seulement que la somme des $n$ nombres est égale à $3n$ ?
   Trouver un exemple qui montre que l'intervalle $[r, r + 2]$ ne suffit plus.
