---
id: "10801"
title: "Le produit des diviseurs propres vaut-il 2013 ?"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [diviseurs, nombres-premiers, decomposition]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 3 (arithmétique)"
  reference: "2017-10_ofm-2012-2013-envoi3.pdf, Exercices Juniors, exercice 1 ; corrigé 2017-10_ofm-2012-2013-envoi3-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi3.pdf"
---

## Statement

On appelle **diviseur propre** d'un entier $n$ un diviseur positif de $n$ qui est différent de $1$ et de $n$.

Par exemple, les diviseurs propres de $12$ sont $2$, $3$, $4$ et $6$, et leur produit vaut $2 \times 3 \times 4 \times 6 = 144$.

Existe-t-il un entier $n$ dont le produit des diviseurs propres est égal à $2013$ ?

## Hints

1. Commence par décomposer $2013$ en produit de nombres premiers.
2. Si $d$ est un diviseur propre de $n$, que peux-tu dire du nombre $n/d$ ?
3. Les diviseurs propres vont donc par paires dont le produit vaut $n$. Déduis-en que $n$ doit lui-même diviser $2013$, puis essaie les quelques valeurs possibles.

## Solution

**Réponse : non, un tel entier n'existe pas.**

**La décomposition de 2013.** On a $2013 = 3 \times 671 = 3 \times 11 \times 61$, et $3$, $11$, $61$ sont des nombres premiers. Les diviseurs de $2013$ sont donc
$$1, \quad 3, \quad 11, \quad 33, \quad 61, \quad 183, \quad 671, \quad 2013 .$$

**Les diviseurs propres vont par paires.** Supposons qu'un entier $n$ convienne. Le produit de ses diviseurs propres vaut $2013$, qui n'est pas $1$, donc $n$ a au moins un diviseur propre $d$.

Alors $n/d$ est aussi un entier qui divise $n$. Il n'est pas égal à $n$ (car $d \neq 1$) et pas égal à $1$ (car $d \neq n$). C'est donc lui aussi un diviseur propre de $n$. Et le produit de ces deux diviseurs vaut $d \times n/d = n$.

**Premier cas : on peut trouver un diviseur propre $d$ avec $n/d \neq d$.** Alors $d$ et $n/d$ sont deux facteurs différents du produit des diviseurs propres. Ce produit s'écrit donc
$$2013 = n \times (\text{produit des autres diviseurs propres}),$$
ce qui montre que $n$ divise $2013$. Comme $n$ a des diviseurs propres, $n$ n'est ni $1$ ni un nombre premier. Il reste quatre possibilités, que l'on vérifie une par une :

| $n$ | diviseurs propres | produit |
|---|---|---|
| $33$ | $3$, $11$ | $33$ |
| $183$ | $3$, $61$ | $183$ |
| $671$ | $11$, $61$ | $671$ |
| $2013$ | $3$, $11$, $33$, $61$, $183$, $671$ | bien plus que $2013$ |

Pour $n = 2013$, le produit vaut même $(3 \times 671) \times (11 \times 183) \times (33 \times 61) = 2013 \times 2013 \times 2013$. Aucune des quatre valeurs ne donne $2013$.

**Second cas : pour tout diviseur propre $d$, on a $n/d = d$.** Alors chaque diviseur propre vérifie $d \times d = n$, donc il n'y en a qu'un seul, et le produit des diviseurs propres est ce seul nombre $d$. Il faudrait $d = 2013$ et $n = 2013 \times 2013$. Mais ce nombre $n$ est aussi divisible par $3$, qui est un autre diviseur propre. C'est impossible.

**Conclusion.** Dans tous les cas on aboutit à une contradiction : **aucun entier $n$ n'a des diviseurs propres dont le produit vaut $2013$.**

## Going further

1. Montre que si un entier $n$ a exactement deux diviseurs propres, alors leur produit vaut $n$. Trouve trois tels entiers.
2. Existe-t-il un entier $n$ dont le produit des diviseurs propres vaut $2025$ ? *Indication : $2025 = 45 \times 45$. Écris la liste des diviseurs propres de $45$.*
