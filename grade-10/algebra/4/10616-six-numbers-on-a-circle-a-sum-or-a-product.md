---
id: "10616"
title: "Six nombres sur un cercle, une somme ou un produit"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [somme-et-produit, raisonnement-par-l-absurde, disjonction-de-cas, factorisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 2 (algèbre)"
  reference: "2020-11_Sujet-envoi-2.pdf, Exercices Juniors, exercice 8, posé à nouveau tel quel comme exercice 14 des Exercices Seniors ; corrigé 2021-01_Corrige-envoi-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/11/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-11_Sujet-envoi-2.pdf"
---

## Statement

Existe-t-il deux réels $S$ et $P$ ayant la propriété suivante ?

> On peut placer six réels **deux à deux distincts** sur un cercle de sorte que, pour chaque groupe de trois nombres consécutifs sur le cercle, la somme des trois vaut $S$ ou leur produit vaut $P$.

## Hints

1. Note les nombres $x_1, \ldots, x_6$ dans l'ordre du cercle. Deux groupes voisins, par exemple $(x_1, x_2, x_3)$ et $(x_2, x_3, x_4)$, peuvent-ils avoir tous les deux la somme $S$ ?
2. Et peuvent-ils avoir tous les deux le produit $P$, quand $P \neq 0$ ?
3. Si $P \neq 0$, les groupes « somme » et les groupes « produit » alternent autour du cercle. Déduis-en que deux paires de nombres ont la même somme et le même produit.
4. Si $p + q = r + s$ et $pq = rs$, calcule $(p - r)(p - s)$.
5. N'oublie pas le cas $P = 0$.

## Solution

La réponse est **non**. Raisonnons par l'absurde : supposons que $S$ et $P$ existent, et notons $x_1, x_2, \ldots, x_6$ les six nombres dans l'ordre du cercle. On lit les indices en tournant : $x_7 = x_1$, $x_8 = x_2$, et ainsi de suite. Le groupe $G_i$ est formé de $x_i$, $x_{i+1}$, $x_{i+2}$.

**Étape 1. Deux groupes voisins n'ont jamais tous les deux la somme $S$.**

Si $x_i + x_{i+1} + x_{i+2} = S$ et $x_{i+1} + x_{i+2} + x_{i+3} = S$, alors en soustrayant, $x_i = x_{i+3}$. Or $x_i$ et $x_{i+3}$ sont deux nombres différents du cercle (ils sont face à face), et ils sont distincts. C'est impossible.

**Étape 2. Le cas $P \neq 0$.**

*Deux groupes voisins n'ont jamais tous les deux le produit $P$.* Si $x_i x_{i+1} x_{i+2} = P$ et $x_{i+1} x_{i+2} x_{i+3} = P$, alors $x_{i+1} x_{i+2} \neq 0$ puisque $P \neq 0$, et en divisant, $x_i = x_{i+3}$ : impossible comme avant.

*Les deux sortes de groupes alternent.* Chaque groupe a la somme $S$ ou le produit $P$. Un groupe ne peut pas avoir les deux à la fois, sinon son voisin n'aurait ni l'un ni l'autre. Donc chaque groupe est soit un groupe « somme », soit un groupe « produit », et deux voisins sont de sortes différentes. En tournant le cercle si besoin, on peut supposer que $G_1$, $G_3$, $G_5$ sont des groupes « somme » et $G_2$, $G_4$, $G_6$ des groupes « produit » :

$$x_1 + x_2 + x_3 = x_3 + x_4 + x_5 = x_5 + x_6 + x_1 = S$$

$$x_2 x_3 x_4 = x_4 x_5 x_6 = x_6 x_1 x_2 = P$$

*Deux paires jumelles.* L'égalité $x_1 + x_2 + x_3 = x_5 + x_6 + x_1$ donne $x_2 + x_3 = x_5 + x_6$. L'égalité $x_2 x_3 x_4 = x_4 x_5 x_6$, avec $x_4 \neq 0$ (car $P \neq 0$), donne $x_2 x_3 = x_5 x_6$.

*Une petite factorisation.* Posons $p = x_2$, $q = x_3$, $r = x_5$, $s = x_6$. On a $p + q = r + s$ et $pq = rs$. Alors

$$(p - r)(p - s) = p^2 - p(r + s) + rs = p^2 - p(p + q) + pq = 0$$

Donc $p = r$ ou $p = s$, c'est-à-dire $x_2 = x_5$ ou $x_2 = x_6$. Cela contredit le fait que les six nombres sont distincts.

**Étape 3. Le cas $P = 0$.**

*Si aucun des six nombres n'est nul*, aucun produit de trois d'entre eux n'est nul, donc aucun groupe n'a le produit $P = 0$. Tous les groupes ont alors la somme $S$, en particulier deux groupes voisins, ce que l'étape 1 interdit.

*Si l'un des nombres est nul*, tournons le cercle pour que ce soit $x_1$. Les cinq autres sont différents de $x_1$, donc non nuls. Les groupes $G_2 = (x_2, x_3, x_4)$ et $G_3 = (x_3, x_4, x_5)$ ne contiennent pas $x_1$ : leurs produits ne sont pas nuls, donc ils ont tous les deux la somme $S$. Ce sont deux groupes voisins, ce que l'étape 1 interdit encore.

**Conclusion : dans tous les cas on aboutit à une contradiction. Il n'existe pas de réels $S$ et $P$ ayant cette propriété.**
