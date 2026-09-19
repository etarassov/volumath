---
id: "0690"
title: "Un nombre à cinq chiffres et son renversé"
grade: 9
theme: arithmetic
difficulty: 5
duration_min: 45
tags: [chiffres, parite, retenues, addition]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Inégalités. Égalités. Équations et systèmes d'équations », 3 novembre 2023"
  reference: "Inégalités.pdf, exercice 50, d'après la Coupe Animath de printemps 2017, problème 2"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Inégalités.pdf"
---

## Statement

Soit $n$ un nombre entier à cinq chiffres, et soit $m$ le nombre obtenu en renversant l'ordre de ses chiffres. Par exemple, si $n = 34170$, alors $m = 07143$, c'est-à-dire $7143$.

Montrer que l'écriture de $n + m$ comporte au moins un chiffre pair.

## Hints

1. Note $a$, $b$, $c$, $d$, $e$ les cinq chiffres de $n$, de gauche à droite. Quels sont, dans le même ordre, les chiffres de $m$ ?
2. Pose l'addition $n + m$ en colonnes. Que remarques-tu sur la colonne du milieu ? Et sur les deux colonnes qui contiennent $b$ et $d$ ?
3. Raisonne par l'absurde : suppose que tous les chiffres de $n + m$ soient impairs, et cherche une contradiction.
4. Note $r_u$, $r_d$, $r_c$, $r_m$ les retenues qui sortent respectivement de la colonne des unités, des dizaines, des centaines, des milliers. Chacune vaut $0$ ou $1$.
5. Commence par la colonne des centaines : elle contient $c + c = 2c$, un nombre pair. Que doit valoir la retenue qui y entre pour que le chiffre obtenu soit impair ?
6. Tu obtiens $r_d = 1$, ce qui veut dire que la colonne des dizaines dépasse $10$. Or cette colonne et celle des milliers contiennent toutes les deux $b + d$. Compare-les.

## Solution

**Étape 1. Poser l'addition.**

Écrivons $n$ avec ses chiffres : $n = \overline{abcde}$, où $a$ est le chiffre des dizaines de mille et $e$ celui des unités (avec $a \neq 0$). Alors $m = \overline{edcba}$, où le chiffre $e$ peut être nul, comme dans l'exemple de l'énoncé.

Posons l'addition colonne par colonne. De droite à gauche, les colonnes contiennent :

| colonne | unités | dizaines | centaines | milliers | dizaines de mille |
|---------|--------|----------|-----------|----------|-------------------|
| chiffres de $n$ | $e$ | $d$ | $c$ | $b$ | $a$ |
| chiffres de $m$ | $a$ | $b$ | $c$ | $d$ | $e$ |
| somme de la colonne | $a + e$ | $b + d$ | $2c$ | $b + d$ | $a + e$ |

C'est le point de départ : **la somme $b + d$ apparaît deux fois**, dans la colonne des dizaines et dans celle des milliers ; de même $a + e$ apparaît deux fois ; et la colonne du milieu vaut $2c$, qui est pair.

Notons $s_0, s_1, s_2, s_3, s_4$ les chiffres de $n + m$ (unités, dizaines, centaines, milliers, dizaines de mille), et $r_u, r_d, r_c, r_m$ les retenues sortant respectivement des colonnes des unités, des dizaines, des centaines et des milliers. Chaque retenue vaut $0$ ou $1$. La règle de l'addition posée s'écrit alors :

$$\begin{aligned}
a + e &= 10\,r_u + s_0, \\
b + d + r_u &= 10\,r_d + s_1, \\
2c + r_d &= 10\,r_c + s_2, \\
b + d + r_c &= 10\,r_m + s_3, \\
a + e + r_m &= 10\,s_5 + s_4,
\end{aligned}$$

où $s_5$ est l'éventuel sixième chiffre (il vaut $0$ ou $1$).

**Étape 2. Raisonner par l'absurde.**

Supposons que tous les chiffres de $n + m$ soient impairs. En particulier $s_0$, $s_1$, $s_2$, $s_3$ et $s_4$ sont impairs.

**Étape 3. La colonne des centaines force $r_d = 1$.**

La troisième ligne donne $s_2 = 2c + r_d - 10\,r_c$. Les nombres $2c$ et $10\,r_c$ sont pairs. Pour que $s_2$ soit impair, il faut donc que $r_d$ soit impair, c'est-à-dire

$$r_d = 1.$$

**Étape 4. Donc la colonne des dizaines vaut au moins $11$.**

La deuxième ligne devient $b + d + r_u = 10 + s_1$. Comme $s_1$ est impair, $s_1 \geq 1$, donc

$$b + d + r_u \geq 11.$$

Et comme $r_u \leq 1$, on en déduit

$$b + d \geq 10.$$

**Étape 5. La colonne des unités et celle des dizaines de mille forcent $r_m = 0$.**

La première ligne donne $a + e = 10\,r_u + s_0$. Comme $10\,r_u$ est pair et $s_0$ impair, la somme $a + e$ est **impaire**.

La cinquième ligne donne $a + e + r_m = 10\,s_5 + s_4$. Comme $10\,s_5$ est pair et $s_4$ impair, le nombre $a + e + r_m$ est impair. Or $a + e$ est déjà impair, donc $r_m$ est pair, c'est-à-dire

$$r_m = 0.$$

**Étape 6. Donc la colonne des milliers vaut au plus $9$.**

La quatrième ligne devient $b + d + r_c = s_3$. Or $s_3$ est un chiffre, donc $s_3 \leq 9$, et $r_c \geq 0$ :

$$b + d \leq 9.$$

**Étape 7. La contradiction.**

L'étape 4 donne $b + d \geq 10$ et l'étape 6 donne $b + d \leq 9$. C'est impossible.

**Conclusion.** L'hypothèse « tous les chiffres de $n + m$ sont impairs » est absurde. Donc l'écriture de $n + m$ comporte toujours au moins un chiffre pair.

*Exemple.* Avec $n = 34170$ et $m = 7143$, on obtient $n + m = 41313$, dont le premier chiffre, $4$, est bien pair.

## Going further

1. Reprends l'étape 1 dans le cas particulier où l'addition se fait sans aucune retenue. Les chiffres de $n + m$ sont alors $a + e$, $b + d$, $2c$, $b + d$, $a + e$ : lequel est à coup sûr pair ?
2. L'énoncé est-il encore vrai pour un nombre à trois chiffres ? Cherche un contre-exemple parmi les nombres qui se terminent par $9$.
3. Et pour un nombre à quatre chiffres ? (Essaie $n = 1010$.) Quelle étape de la démonstration cesse de fonctionner dans ces deux cas ?
