---
id: "8451"
title: "Une fraction toujours irréductible"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [fraction-irreductible, pgcd, diviseur-commun, combinaisons]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe B"
  reference: "Poly-2021-Valbonne.pdf, Groupe B, « Factorisation et divisibilité » (Antoine Derimay), exercice 1 (problème 1 de l'OIM 1959)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Montrer que, pour tout entier $n$, la fraction

$$\frac{21n + 4}{14n + 3}$$

est irréductible, c'est-à-dire qu'on ne peut jamais la simplifier.

## Hints

1. Dire que la fraction est irréductible, c'est dire que le numérateur et le dénominateur n'ont aucun diviseur commun autre que $1$ et $-1$.
2. Soit $d$ un diviseur commun de $21n+4$ et de $14n+3$. Alors $d$ divise aussi toute somme et toute différence de multiples de ces deux nombres. Sers-t'en pour faire disparaître le $n$.
3. Cherche deux entiers $u$ et $v$ tels que $u \times (21n+4) + v \times (14n+3)$ ne contienne plus de $n$. Les coefficients $21$ et $14$ ont $42$ comme plus petit multiple commun.

## Solution

Notons $d$ un diviseur commun de $21n + 4$ et de $14n + 3$. Nous allons montrer que $d$ divise $1$.

**L'idée : faire disparaître le $n$.** Comme $21 \times 2 = 42$ et $14 \times 3 = 42$, multiplions le premier nombre par $2$ et le second par $3$ :

$$2(21n + 4) = 42n + 8, \qquad 3(14n + 3) = 42n + 9.$$

Le nombre $d$ divise $21n+4$, donc il divise $42n + 8$. Il divise $14n+3$, donc il divise $42n+9$. Par conséquent, il divise leur différence :

$$(42n + 9) - (42n + 8) = 1.$$

Donc $d$ divise $1$, c'est-à-dire $d = 1$ ou $d = -1$.

**Conclusion.** Les seuls diviseurs communs de $21n + 4$ et de $14n + 3$ sont $1$ et $-1$ :

$$\mathrm{PGCD}(21n + 4, \; 14n + 3) = 1.$$

La fraction $\dfrac{21n+4}{14n+3}$ ne peut donc jamais être simplifiée : elle est irréductible pour tout entier $n$.

(Au passage, le dénominateur ne s'annule jamais : $14n + 3 = 0$ donnerait $n = -3/14$, qui n'est pas entier.)

## Going further

Ce problème est le tout premier problème de la toute première Olympiade Internationale de Mathématiques, en 1959.

La méthode se généralise : pour une fraction $\dfrac{an + b}{cn + d}$ avec $a$, $b$, $c$, $d$ entiers, un diviseur commun $k$ du numérateur et du dénominateur divise

$$c(an+b) - a(cn+d) = bc - ad.$$

Donc $k$ divise le nombre fixe $ad - bc$. Ici $ad - bc = 21 \times 3 - 4 \times 14 = 63 - 56 = 7$… mais attention, cela ne donne que « $d$ divise $7$ », ce qui est plus faible que ce qu'on a obtenu. Le calcul direct avec $42$ est meilleur parce qu'il utilise que $21$ et $14$ ont eux-mêmes un facteur commun.

Essaie pour voir avec $\dfrac{21n+4}{14n+1}$ : là, la fraction se simplifie pour certaines valeurs de $n$. Sauras-tu dire lesquelles ?
