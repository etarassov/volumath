---
id: "11252"
title: "Le plus grand écart contre le plus long bloc"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 90
tags: [bijection, parties, somme, comparaison, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2017-2018 n° 4 (combinatoire)"
  reference: "2018-01_pofm-2017-2018-envoi4.pdf, Exercices du groupe A, exercice 9 ; corrigé 2018-02_pofm-2017-2018-envoi4-corrige.pdf (le corrigé affirme que f(φ(A)) ⩽ f(A) + 1 pour toute partie A ayant au moins deux éléments ; c'est faux pour deux éléments, où f(φ(A)) = f(A) + 2 ; la solution ci-dessous tient compte de ces parties, ce qui donne m = 12 au lieu de 10 ; la conclusion du corrigé reste vraie, F(n) > G(n) dès n = 8 d'après un calcul sur ordinateur)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/01/pofm-2017-2018-envoi4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-01_pofm-2017-2018-envoi4.pdf"
---

## Statement

Soit $A$ un ensemble fini d'entiers.

- Si $A$ a au moins deux éléments, on les range dans l'ordre, $a_1 < a_2 < \cdots < a_k$, et on note
  $f(A)$ le plus grand des **écarts** $a_2 - a_1$, $a_3 - a_2$, …, $a_k - a_{k-1}$. Si $A$ est vide
  ou n'a qu'un élément, on pose $f(A) = 0$.
- On appelle **bloc** de $A$ un ensemble d'entiers consécutifs $\{i, i + 1, \ldots, j\}$ contenu dans
  $A$, et on note $g(A)$ le plus grand nombre d'éléments d'un bloc de $A$. Si $A$ est vide, on pose
  $g(A) = 0$.

Par exemple, pour $A = \{2, 3, 4, 7, 9, 10\}$, les écarts sont $1, 1, 3, 2, 1$, donc $f(A) = 3$, et le
plus long bloc est $\{2, 3, 4\}$, donc $g(A) = 3$.

Pour tout entier $n \geqslant 1$, on note $F(n)$ la somme des nombres $f(A)$, et $G(n)$ la somme des
nombres $g(A)$, pour toutes les parties $A$ de $\{1, 2, \ldots, n\}$, y compris la partie vide.

Montrer qu'il existe un entier $m$ tel que $F(n) > G(n)$ pour tout entier $n \geqslant m$.

## Hints

1. Calcule $F(n)$ et $G(n)$ pour $n = 1$, $2$, $3$. Au début, c'est $G$ qui est le plus grand.
2. Les blocs d'une partie $A$ correspondent aux trous d'une autre partie. Pour $A$ contenu dans
   $\{1, \ldots, n\}$, regarde les entiers de $1$ à $n + 2$ qui ne sont pas de la forme $x + 1$ avec
   $x$ dans $A$. Quel est leur plus grand écart ?
3. Tu dois obtenir que $G(n) + 2^n$ est la somme des $f(T)$, pour toutes les parties $T$ de
   $\{1, \ldots, n + 2\}$ qui contiennent $1$ et $n + 2$. Il reste à comparer cette somme avec
   $F(n)$ : associe à chaque partie $A$ de $\{1, \ldots, n\}$ une telle partie $T$ qui a presque le
   même plus grand écart.
4. Essaie, pour $A$ non vide de plus petit élément $a$ et de plus grand élément $b$, la partie
   formée de $1, \ldots, a$, des $x + 1$ pour $x$ dans $A$ strictement entre $a$ et $b$, et de
   $b + 2, \ldots, n + 2$. Compare les deux plus grands écarts, en faisant attention aux parties qui
   ont un ou deux éléments.
5. Les pertes ne concernent que de l'ordre de $n^2$ parties. Trouve $2^{n-5}$ parties $A$ pour
   lesquelles on gagne.

## Solution

### Notations

Notons $E_n$ l'ensemble de toutes les parties de $\{1, \ldots, n\}$ : il y en a $2^n$. Notons $S_{n+2}$
l'ensemble des parties de $\{1, \ldots, n + 2\}$ qui contiennent $1$ et $n + 2$ : une telle partie est
déterminée par ce qu'elle contient parmi $2, \ldots, n + 1$, donc il y en a aussi $2^n$. Pour une
partie $A$ et un entier $c$, on note $A + c = \{x + c : x \in A\}$.

Ainsi $F(n)$ est la somme des $f(A)$ et $G(n)$ la somme des $g(A)$, pour $A$ dans $E_n$.

### Étape 1 : transformer les blocs en écarts

Pour $A$ dans $E_n$, posons
$$T(A) = \{1, \ldots, n + 2\} \setminus (A + 1) ,$$
l'ensemble des entiers de $1$ à $n + 2$ qui ne sont pas de la forme $x + 1$ avec $x \in A$. Comme
$A + 1$ est contenu dans $\{2, \ldots, n + 1\}$, la partie $T(A)$ contient $1$ et $n + 2$ : elle est
dans $S_{n+2}$. Inversement, on retrouve $A$ à partir de $T(A)$, et toute partie de $S_{n+2}$ est
obtenue ainsi. L'application $A \mapsto T(A)$ fait donc correspondre à chaque partie de $E_n$ une
partie de $S_{n+2}$, chacune étant atteinte exactement une fois.

**Affirmation : $f(T(A)) = g(A) + 1$.** Soient $t < t'$ deux éléments consécutifs de $T(A)$. Les
entiers strictement compris entre eux, au nombre de $t' - t - 1$, ne sont pas dans $T(A)$, donc ils
sont dans $A + 1$ : ils forment un bloc de $A + 1$. Inversement, tout bloc de $A + 1$ se trouve entre
deux éléments consécutifs de $T(A)$, puisque $1$ et $n + 2$ sont dans $T(A)$. Les écarts de $T(A)$
sont donc les nombres « longueur d'un bloc maximal de $A + 1$, plus $1$ », et l'écart $1$ quand il
n'y a rien entre $t$ et $t'$. Le plus grand écart de $T(A)$ est donc $g(A + 1) + 1 = g(A) + 1$. (Si
$A$ est vide, $T(A) = \{1, \ldots, n + 2\}$ et les deux membres valent $1$.)

En additionnant sur toutes les parties $A$ de $E_n$, qui donnent chaque partie de $S_{n+2}$ une fois :
$$\sum_{T \in S_{n+2}} f(T) = \sum_{A \in E_n} (g(A) + 1) = G(n) + 2^n . \qquad (1)$$

### Étape 2 : une autre correspondance, qui respecte presque $f$

On pose $\varphi(\varnothing) = \{1, \ldots, n + 2\}$ et, pour $A$ non vide de plus petit élément $a$
et de plus grand élément $b$,
$$\varphi(A) = \{1, \ldots, a\} \cup \{x + 1 : x \in A,\ a < x < b\} \cup \{b + 2, \ldots, n + 2\} .$$

Par exemple, pour $n = 10$ et $A = \{3, 4, 7, 9\}$, on trouve
$\varphi(A) = \{1, 2, 3\} \cup \{5, 8\} \cup \{11, 12\}$.

**$\varphi(A)$ est dans $S_{n+2}$** : il contient $1$ (car $a \geqslant 1$) et $n + 2$ (car
$b + 2 \leqslant n + 2$).

**Deux parties différentes ont des images différentes.** Les éléments du milieu, $x + 1$, sont
compris entre $a + 2$ et $b$. Donc, si $A$ n'est pas vide, $a + 1$ est le plus petit entier de
$\{1, \ldots, n + 2\}$ qui manque à $\varphi(A)$, et $b + 1$ est le plus grand. Connaissant
$\varphi(A)$, on retrouve ainsi $a$ et $b$, puis les éléments de $A$ strictement entre $a$ et $b$.
Enfin, $\varphi(\varnothing)$ est la seule image à laquelle il ne manque aucun entier. Comme $E_n$ et
$S_{n+2}$ ont tous deux $2^n$ éléments, chaque partie de $S_{n+2}$ est l'image d'exactement une
partie de $E_n$, et donc
$$\sum_{T \in S_{n+2}} f(T) = \sum_{A \in E_n} f(\varphi(A)) . \qquad (2)$$

### Étape 3 : comparer $f(\varphi(A))$ et $f(A)$

- **$A$ vide** : $f(\varphi(A)) = 1 = f(A) + 1$.
- **$A = \{a\}$** : $\varphi(A) = \{1, \ldots, a\} \cup \{a + 2, \ldots, n + 2\}$, dont les écarts
  valent $1$, sauf un qui vaut $2$. Donc $f(\varphi(A)) = 2 = f(A) + 2$.
- **$A = \{a, b\}$ avec $a < b$** : $\varphi(A) = \{1, \ldots, a\} \cup \{b + 2, \ldots, n + 2\}$,
  dont le plus grand écart est $(b + 2) - a$. Donc $f(\varphi(A)) = f(A) + 2$.
- **$A$ a $k \geqslant 3$ éléments** $a_1 < \cdots < a_k$, d'écarts
  $d_1 = a_2 - a_1$, …, $d_{k-1} = a_k - a_{k-1}$. En parcourant $\varphi(A)$ dans l'ordre, on
  trouve des écarts $1$ dans $\{1, \ldots, a_1\}$, puis l'écart $(a_2 + 1) - a_1 = d_1 + 1$, puis les
  écarts $d_2, \ldots, d_{k-2}$ entre les $a_i + 1$ du milieu, puis l'écart
  $(a_k + 2) - (a_{k-1} + 1) = d_{k-1} + 1$, et enfin des écarts $1$. Donc
  $$f(\varphi(A)) = \max\left(1,\ d_1 + 1,\ d_2,\ \ldots,\ d_{k-2},\ d_{k-1} + 1\right) \leqslant f(A) + 1 .$$
  Disons que $A$ est **bonne** si, de plus, $d_1 < f(A)$ et $d_{k-1} < f(A)$. Dans ce cas,
  $d_1 + 1 \leqslant f(A)$ et $d_{k-1} + 1 \leqslant f(A)$, donc $f(\varphi(A)) \leqslant f(A)$.

En résumé, notons $e_n$ le nombre de parties bonnes. Il y a $n$ parties à un élément et
$\frac{n(n - 1)}{2}$ parties à deux éléments, donc, en additionnant :
$$\sum_{A \in E_n} f(\varphi(A)) \leqslant \sum_{A \in E_n} (f(A) + 1) + n + \frac{n(n - 1)}{2} - e_n = F(n) + 2^n + \frac{n(n + 1)}{2} - e_n .$$

Avec $(1)$ et $(2)$, on obtient
$$G(n) \leqslant F(n) + \frac{n(n + 1)}{2} - e_n . \qquad (3)$$

### Étape 4 : beaucoup de parties bonnes

Soit $n \geqslant 5$. Pour toute partie $Y$ de $\{4, 5, \ldots, n - 2\}$ (cet ensemble a $n - 5$
éléments, il est vide si $n = 5$), posons $A = \{1, 2, n - 1, n\} \cup Y$. Alors $A$ a au moins
$4$ éléments, ses écarts extrêmes sont $d_1 = 2 - 1 = 1$ et $d_{k-1} = n - (n - 1) = 1$, et $3$ n'est
pas dans $A$ (car $n - 1 \geqslant 4$), donc l'écart qui suit l'élément $2$ vaut au moins $2$ :
$f(A) \geqslant 2 > 1$. Ainsi $A$ est bonne. Ces parties sont toutes différentes, donc
$$e_n \geqslant 2^{n-5} .$$

### Étape 5 : conclusion

Montrons que $2^{n-5} > \frac{n(n + 1)}{2}$ pour tout $n \geqslant 12$. Pour $n = 12$ :
$2^7 = 128 > 78$. Si c'est vrai pour un $n \geqslant 12$, alors
$$2^{n-4} = 2 \times 2^{n-5} > n(n + 1) \geqslant \frac{(n + 1)(n + 2)}{2} ,$$
la dernière inégalité venant de $2n \geqslant n + 2$.

Pour $n \geqslant 12$, l'inégalité $(3)$ et l'étape 4 donnent alors
$$G(n) \leqslant F(n) + \frac{n(n + 1)}{2} - 2^{n-5} < F(n) .$$

**Conclusion : $m = 12$ convient, c'est-à-dire que $F(n) > G(n)$ pour tout entier $n \geqslant 12$.**

## Going further

Voici les premières valeurs, calculées par ordinateur :

| $n$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ | $10$ |
|---|---|---|---|---|---|---|---|---|---|---|
| $F(n)$ | $0$ | $1$ | $5$ | $17$ | $48$ | $122$ | $290$ | $660$ | $1458$ | $3155$ |
| $G(n)$ | $1$ | $4$ | $11$ | $27$ | $62$ | $138$ | $300$ | $643$ | $1363$ | $2866$ |

La preuve donne $m = 12$, mais en réalité $F(n) > G(n)$ dès $n = 8$. Vérifie à la main les valeurs
pour $n \leqslant 3$.
