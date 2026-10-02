---
id: "13810"
title: "Le nombre de diviseurs de 2018²⁰¹⁸"
grade: 10
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [diviseurs, nombres-premiers, decomposition-en-facteurs-premiers, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2018, éliminatoires"
  reference: "2018-05_coupe_printemps_2018_elim_college.pdf, questionnaire collégiens, exercice 10, repris tel quel en exercice 2 du questionnaire lycéens (2018-05_coupe_printemps_2018_elim_lycee-bis.pdf) ; réponse dans 2018-06_coupe_printemps_2018_elim_college_corrige.pdf (tableau des réponses, sans solution rédigée)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/05/coupe_printemps_2018_elim_college.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2018-05_coupe_printemps_2018_elim_college.pdf"
---

## Statement

Soit $d$ le nombre de diviseurs positifs de $2018^{2018}$.

Combien vaut $\dfrac{d}{2019}$ ?

## Hints

1. Commence par décomposer $2018$ en facteurs premiers. Le nombre $1009$ est-il premier ?
2. Écris ensuite $2018^{2018}$ comme un produit de puissances de nombres premiers.
3. Un diviseur de $2^{a} \times p^{b}$, avec $p$ premier différent de $2$, s'écrit
   $2^{i} \times p^{j}$. Entre quelles valeurs peuvent varier $i$ et $j$ ?

## Solution

**On décompose $2018$.** On a $2018 = 2 \times 1009$.

Le nombre $1009$ est premier. En effet, $31^2 = 961 < 1009 < 1024 = 32^2$, donc s'il avait un
diviseur premier, il en aurait un inférieur ou égal à $31$. On les essaie tous :

- $1009$ est impair, la somme de ses chiffres vaut $10$ et il ne finit ni par $0$ ni par $5$,
  donc il n'est divisible ni par $2$, ni par $3$, ni par $5$ ;
- $1008 = 7 \times 144$, $1001 = 11 \times 91 = 13 \times 77$, $1003 = 17 \times 59$,
  $1007 = 19 \times 53$, $989 = 23 \times 43$, $986 = 29 \times 34$, $992 = 31 \times 32$, et
  dans chaque cas l'écart avec $1009$ est plus petit que le diviseur et non nul. Donc $1009$
  n'est divisible ni par $7$, ni par $11$, $13$, $17$, $19$, $23$, $29$ ou $31$.

Ainsi

$$2018^{2018} = 2^{2018} \times 1009^{2018},$$

avec $2$ et $1009$ premiers.

**On compte les diviseurs.** D'après l'unicité de la décomposition en facteurs premiers, un
diviseur positif de $2^{2018} \times 1009^{2018}$ ne peut contenir que les nombres premiers
$2$ et $1009$, chacun avec un exposant au plus $2018$. Il s'écrit donc

$$2^{i} \times 1009^{j}, \qquad \text{avec } 0 \leqslant i \leqslant 2018 \text{ et } 0 \leqslant j \leqslant 2018,$$

et réciproquement chacun de ces nombres est un diviseur. Deux choix différents du couple
$(i, j)$ donnent deux diviseurs différents, toujours par unicité de la décomposition.

Il y a $2019$ valeurs possibles pour $i$ (de $0$ à $2018$) et, pour chacune, $2019$ valeurs
possibles pour $j$. Donc

$$d = 2019 \times 2019 \qquad \text{et} \qquad \frac{d}{2019} = 2019.$$

**La réponse est $2019$.**
