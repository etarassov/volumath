---
id: "7650"
title: "Sept bâtons entre 1 et 12 centimètres"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [principe des tiroirs, inegalite triangulaire, suite de fibonacci]
adapted_from: null
see_also: ["0357"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, cours de stratégies de base du groupe A"
  reference: "stage_ete_2013.pdf, chapitre II, groupe A, « Cours de stratégies de base : principe des tiroirs, invariants » (Pierre Bertin), exercice sur les bâtons"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

On dispose de sept bâtons. La longueur de chacun est comprise entre $1$ cm et $12$ cm (bornes comprises).

Démontrer que l'on peut toujours en choisir trois qui forment un triangle.

*Rappel : trois longueurs $a \leqslant b \leqslant c$ forment un triangle si et seulement si $a + b > c$.*

## Hints

1. Raisonnez par l'absurde : supposez qu'**aucun** choix de trois bâtons ne forme un triangle.
2. Rangez les sept longueurs dans l'ordre croissant : $\ell_1 \leqslant \ell_2 \leqslant \cdots \leqslant \ell_7$. Que dit l'hypothèse sur $\ell_1$, $\ell_2$ et $\ell_3$ ?
3. Écrivez l'inégalité que vous obtenez pour chaque triplet de bâtons **consécutifs** dans cette liste.
4. Ces inégalités font grandir les longueurs très vite. Comparez avec $12$.

## Solution

**Raisonnons par l'absurde.**

Supposons qu'aucun triplet parmi les sept bâtons ne forme un triangle. Rangeons les longueurs dans l'ordre croissant :

$$\ell_1 \leqslant \ell_2 \leqslant \ell_3 \leqslant \ell_4 \leqslant \ell_5 \leqslant \ell_6 \leqslant \ell_7 .$$

Prenons trois bâtons consécutifs de cette liste, disons $\ell_{k}$, $\ell_{k+1}$, $\ell_{k+2}$. Le plus grand est $\ell_{k+2}$. Comme ils ne forment pas un triangle, l'inégalité triangulaire est en défaut :

$$\ell_{k} + \ell_{k+1} \leqslant \ell_{k+2} .$$

**Faisons grandir les longueurs.**

Nous savons que $\ell_1 \geqslant 1$ et $\ell_2 \geqslant 1$, puisque toutes les longueurs valent au moins $1$ cm. En appliquant l'inégalité ci-dessus pour $k = 1, 2, 3, 4, 5$ :

$$\ell_3 \geqslant \ell_1 + \ell_2 \geqslant 1 + 1 = 2 ,$$
$$\ell_4 \geqslant \ell_2 + \ell_3 \geqslant 1 + 2 = 3 ,$$
$$\ell_5 \geqslant \ell_3 + \ell_4 \geqslant 2 + 3 = 5 ,$$
$$\ell_6 \geqslant \ell_4 + \ell_5 \geqslant 3 + 5 = 8 ,$$
$$\ell_7 \geqslant \ell_5 + \ell_6 \geqslant 5 + 8 = 13 .$$

**La contradiction.**

On obtient $\ell_7 \geqslant 13$, alors que toutes les longueurs sont au plus $12$ cm. C'est impossible.

Notre supposition était donc fausse : **parmi sept bâtons de longueurs comprises entre $1$ et $12$ cm, trois forment toujours un triangle.** $\blacksquare$

## Going further

Les nombres $1, 1, 2, 3, 5, 8, 13$ qui apparaissent sont les premiers termes de la **suite de Fibonacci**, où chaque terme est la somme des deux précédents. Ce n'est pas un hasard : l'hypothèse « pas de triangle » force exactement la croissance la plus lente possible, celle de Fibonacci.

**L'énoncé est optimal**, dans les deux sens.

- Avec sept bâtons, la borne $12$ ne peut pas être remplacée par $13$ : les longueurs $1, 1, 2, 3, 5, 8, 13$ sont bien comprises entre $1$ et $13$, et aucun triplet ne forme un triangle (chaque somme de deux longueurs plus petites vaut au plus la troisième).
- Avec seulement six bâtons entre $1$ et $12$, on peut aussi échouer : $1, 1, 2, 3, 5, 8$ convient.

**Question à prolonger.** Si les longueurs sont comprises entre $1$ et $100$, combien de bâtons faut-il pour être certain d'en trouver trois formant un triangle ? Il suffit de regarder où la suite de Fibonacci dépasse $100$ : $1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144$. Le terme $144$ est le douzième, donc **onze bâtons** peuvent encore échouer et **douze** suffisent toujours.
