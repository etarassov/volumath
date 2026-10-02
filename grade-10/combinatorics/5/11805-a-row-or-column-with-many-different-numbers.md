---
id: "11805"
title: "Une ligne ou une colonne bien variée"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [double comptage, inegalite arithmetico-geometrique, grille, tiroirs]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 5 (pot-pourri)"
  reference: "2020-02_sujet-envoi-5.pdf, Exercices Juniors, exercice 7, repris à l'identique en exercice 14 (Seniors) ; corrigé 2020-04_corrige-commente-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/02/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-02_sujet-envoi-5.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. Une grille carrée de $n$ lignes et $n$ colonnes contient $n^2$ cases. Dans chaque case on écrit un entier compris entre $1$ et $n$, de sorte que chacun des entiers $1, 2, \ldots, n$ soit écrit **exactement $n$ fois** dans la grille.

Montrer qu'il existe une ligne ou une colonne de la grille qui contient au moins $\sqrt{n}$ nombres différents.

## Hints

1. Regarde un cas qui semble « défavorable » : pour $n = 9$, que se passe-t-il si chaque nombre occupe un carré $3 \times 3$ ?
2. Fixe un nombre $i$. Note $r_i$ le nombre de lignes qui contiennent au moins une fois $i$, et $c_i$ le nombre de colonnes qui le contiennent. Montre que $r_i \times c_i \geqslant n$.
3. Déduis-en que $r_i + c_i \geqslant 2\sqrt{n}$. Pour cela, démontre d'abord que $a + b \geqslant 2\sqrt{ab}$ pour tous réels positifs $a$ et $b$.
4. Compte de deux façons le nombre de couples (une ligne ou une colonne, un nombre qui y apparaît).

## Solution

**Un outil : l'inégalité $a + b \geqslant 2\sqrt{ab}$.** Pour deux réels positifs $a$ et $b$,
$$a + b - 2\sqrt{ab} = \left(\sqrt{a} - \sqrt{b}\right)^2 \geqslant 0 .$$

**Ce que dit l'hypothèse sur un nombre $i$.** Fixons un nombre $i$ entre $1$ et $n$. Appelons $r_i$ le nombre de lignes qui contiennent $i$ au moins une fois, et $c_i$ le nombre de colonnes qui contiennent $i$ au moins une fois.

Chaque case où est écrit $i$ est à la croisée d'une de ces $r_i$ lignes et d'une de ces $c_i$ colonnes. Il y a seulement $r_i \times c_i$ telles croisées. Comme $i$ est écrit dans $n$ cases, on a
$$r_i \times c_i \geqslant n .$$
Avec l'outil :
$$r_i + c_i \geqslant 2\sqrt{r_i\, c_i} \geqslant 2\sqrt{n} .$$
Autrement dit, chaque nombre apparaît dans au moins $2\sqrt{n}$ « rangées », en appelant rangée une ligne ou une colonne.

**Un double comptage.** Comptons les couples $(R, i)$ formés d'une rangée $R$ et d'un nombre $i$ qui apparaît au moins une fois dans $R$. Appelons $T$ ce nombre de couples.

- *En regroupant par nombre.* Le nombre $i$ apparaît dans $r_i + c_i$ rangées, donc
$$T = (r_1 + c_1) + (r_2 + c_2) + \cdots + (r_n + c_n) \geqslant n \times 2\sqrt{n} .$$

- *En regroupant par rangée.* Pour une rangée $R$, le nombre de couples $(R, i)$ est le nombre $d_R$ de nombres différents écrits dans $R$. Il y a $2n$ rangées ($n$ lignes et $n$ colonnes), donc $T$ est la somme des $2n$ nombres $d_R$.

**Conclusion.** La somme des $2n$ nombres $d_R$ vaut au moins $2n\sqrt{n}$. Si tous les $d_R$ étaient strictement inférieurs à $\sqrt{n}$, leur somme serait strictement inférieure à $2n \times \sqrt{n}$. C'est impossible. Donc l'un d'eux au moins vaut $\sqrt{n}$ ou plus : **il existe une ligne ou une colonne contenant au moins $\sqrt{n}$ nombres différents.**

## Going further

Pour $n = 9$, construis une grille où **chaque** ligne et **chaque** colonne contient exactement $3$ nombres différents. Cela montre que la borne $\sqrt{n}$ ne peut pas être améliorée quand $n$ est un carré parfait.
