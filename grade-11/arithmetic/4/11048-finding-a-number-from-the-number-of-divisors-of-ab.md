---
id: "11048"
title: "Retrouver l'entier d'Anna grâce à un nombre de diviseurs"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [nombre-de-diviseurs, facteurs-premiers, numeration, base, construction, jeu]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 3 (arithmétique)"
  reference: "2023-01_Sujet-envoi-3.pdf, Exercices Seniors, exercice 14 ; corrigé 2023-03_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/01/Sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-01_Sujet-envoi-3.pdf"
---

## Statement

Anna et Élie jouent à un jeu. On leur donne à tous les deux le même ensemble $A$, formé d'un nombre fini
d'entiers strictement positifs distincts. Anna choisit en secret un entier $a$ de $A$. Élie choisit alors
un entier $b \geqslant 1$ (pas forcément dans $A$) et le donne à Anna, qui lui annonce le nombre de
diviseurs strictement positifs de $ab$.

Montrer qu'Élie peut choisir $b$ de façon à retrouver à coup sûr l'entier choisi par Anna.

## Hints

1. Rappelle-toi (ou démontre) que si $N = p_1^{f_1} \times \cdots \times p_r^{f_r}$, alors $N$ a $(f_1 + 1)(f_2 + 1) \cdots (f_r + 1)$ diviseurs positifs.
2. Essaie $A = \{1, 2, 3, 6\}$. Avec $b = 1$, Élie ne peut pas distinguer $2$ de $3$. Essaie $b = 2 \times 3^3$.
3. Le nombre annoncé est un produit $(x_1 + e_1)(x_2 + e_2) \cdots$, où les $e_i$ sont les exposants (petits) de $a$, et où Élie choisit les $x_i$ à travers $b$. Pense à l'écriture d'un nombre dans une base.
4. Si les $x_i$ sont des puissances bien choisies d'un grand entier $N$, le produit développé s'écrit en base $N$, et ses chiffres font apparaître les $e_i$.

## Solution

**Le nombre de diviseurs.** Si $M = p_1^{f_1} \times \cdots \times p_r^{f_r}$ (nombres premiers distincts),
un diviseur positif de $M$ est, par unicité de la décomposition, un nombre $p_1^{g_1} \times \cdots \times
p_r^{g_r}$ avec $0 \leqslant g_i \leqslant f_i$ pour chaque $i$. Il y a $f_i + 1$ choix pour chaque
exposant, donc $M$ a $(f_1 + 1)(f_2 + 1) \cdots (f_r + 1)$ diviseurs positifs.

**Un exemple pour voir l'idée.** Avec $A = \{1, 2, 3, 6\}$ et $b = 2 \times 3^3 = 54$, Anna annonce
$(e_1 + 2)(e_2 + 4)$, où $a = 2^{e_1} 3^{e_2}$. Cela donne $8, 12, 10, 15$ pour $a = 1, 2, 3, 6$, soit en
base $2$ : $1000$, $1100$, $1010$, $1111$. Les deux chiffres du milieu sont exactement $e_1$ et $e_2$.

### La construction en général

Si $A = \{1\}$, il n'y a rien à faire. Sinon, notons $p_1, \ldots, p_r$ les nombres premiers qui divisent
au moins un élément de $A$, et $n \geqslant 1$ le plus grand exposant qui apparaît dans leurs
décompositions. Tout $a$ de $A$ s'écrit

$$a = p_1^{e_1} p_2^{e_2} \cdots p_r^{e_r}, \quad \text{avec } 0 \leqslant e_i \leqslant n ,$$

et connaître les exposants $e_1, \ldots, e_r$, c'est connaître $a$.

Posons $N = n^r + 1$, et pour $i = 1, \ldots, r$, posons $x_i = N^{2^{i-1}}$, c'est-à-dire
$x_1 = N$, $x_2 = N^2$, $x_3 = N^4$, et ainsi de suite. Élie choisit

$$b = p_1^{x_1 - 1} \, p_2^{x_2 - 1} \cdots p_r^{x_r - 1} .$$

Alors $ab = p_1^{e_1 + x_1 - 1} \cdots p_r^{e_r + x_r - 1}$, et Anna annonce

$$D = (x_1 + e_1)(x_2 + e_2) \cdots (x_r + e_r) .$$

### Comment Élie lit la réponse

Développons ce produit. On obtient une somme de $2^r$ termes : pour chaque facteur, on prend soit $x_i$,
soit $e_i$. Si $S$ est l'ensemble des indices où l'on a pris $x_i$, le terme correspondant vaut

$$N^{s} \times c_S, \quad \text{avec } s = \sum_{i \in S} 2^{i-1} \quad \text{et} \quad c_S = \prod_{i \notin S} e_i$$

(un produit vide vaut $1$).

* Chaque entier $s$ entre $0$ et $2^r - 1$ s'écrit d'une seule façon comme somme de puissances de $2$
  distinctes parmi $1, 2, 4, \ldots, 2^{r-1}$ (c'est l'écriture en base $2$). Donc chaque exposant $s$
  correspond à un seul ensemble $S$, et on obtient $D = \sum_{s=0}^{2^r - 1} c_S N^s$ avec des exposants tous
  différents.
* Chaque coefficient vérifie $0 \leqslant c_S \leqslant n^r < N$, puisque c'est un produit d'au plus $r$
  nombres entre $0$ et $n$.

C'est donc exactement l'écriture de $D$ en base $N$ : les $c_S$ sont ses chiffres. Comme l'écriture d'un
entier en base $N$ (avec des chiffres entre $0$ et $N - 1$) est unique, Élie, qui connaît $D$ et $N$, peut
calculer tous les chiffres $c_S$.

Il regarde alors, pour chaque $i$, l'ensemble $S$ formé de tous les indices sauf $i$. Le chiffre
correspondant est $c_S = e_i$, situé à la position $s = (2^r - 1) - 2^{i-1}$. Élie retrouve ainsi tous les
exposants $e_1, \ldots, e_r$, donc l'entier $a$.

**Conclusion.** Avec ce choix de $b$, Élie retrouve à coup sûr l'entier choisi par Anna.

## Going further

Dans l'exemple $A = \{1, 2, 3, 6\}$, le choix $b = 2 \times 3 = 6$ suffit-il ? Et $b = 3$ ? Trouver le plus
petit $b$ qui permet à Élie de gagner.
