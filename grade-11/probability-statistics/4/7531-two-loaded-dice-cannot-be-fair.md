---
id: "7531"
title: "Deux dés truqués ne peuvent pas être équitables"
grade: 11
theme: probability-statistics
difficulty: 4
duration_min: 35
tags: [probabilites, des, inegalite, raisonnement-par-l-absurde, somme]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 61 (solution p. 248, résolue par Théo Guillaumot et Quentin Woinet ; la solution imprimée écrit « q2 = 1/(11 p2) » là où il faut lire q6 = 1/(11 p6))"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

On dispose de deux dés à six faces, que l'on a le droit de truquer comme on veut.

Sur le premier dé, les faces $1, 2, \ldots, 6$ sortent avec les probabilités $p_1, p_2, \ldots, p_6$ ; sur le second, avec les probabilités $q_1, q_2, \ldots, q_6$. Les deux lancers sont indépendants.

Peut-on truquer les deux dés de sorte que la somme des deux résultats prenne chacune des valeurs $2, 3, 4, \ldots, 12$ avec **la même probabilité**, c'est-à-dire $\dfrac{1}{11}$ à chaque fois ?

## Hints

1. Il y a onze sommes possibles, de $2$ à $12$. La réponse est non : il faut donc supposer que c'est possible et trouver une contradiction.
2. Parmi les onze sommes, deux sont beaucoup plus simples que les autres : elles ne s'obtiennent que d'une seule façon. Lesquelles ?
3. Ces deux cas te donnent $p_1q_1$ et $p_6q_6$. Exprime $q_1$ en fonction de $p_1$, et $q_6$ en fonction de $p_6$.
4. Attaque maintenant la somme $7$, qui s'obtient de six façons. Tu n'as besoin de garder que deux de ces six façons pour conclure.
5. Tu devrais arriver à une inégalité du type $p_1^2 + p_6^2 \leqslant p_1p_6$. Est-elle possible ?

## Solution

**Réponse : non, c'est impossible.**

Raisonnons par l'absurde : supposons que chacune des onze sommes ait la probabilité $\dfrac{1}{11}$.

**Étape 1. Les deux sommes extrêmes.**

La somme $2$ ne s'obtient que d'une seule façon : $1$ sur chaque dé. Donc

$$p_1 q_1 = \frac{1}{11}.$$

De même, la somme $12$ ne s'obtient que par un double $6$ :

$$p_6 q_6 = \frac{1}{11}.$$

En particulier $p_1, q_1, p_6, q_6$ sont tous strictement positifs, et

$$q_1 = \frac{1}{11\,p_1}, \qquad q_6 = \frac{1}{11\,p_6}.$$

**Étape 2. La somme 7.**

La somme $7$ s'obtient de six façons : $(1,6)$, $(2,5)$, $(3,4)$, $(4,3)$, $(5,2)$ et $(6,1)$. Donc

$$\frac{1}{11} = p_1q_6 + p_2q_5 + p_3q_4 + p_4q_3 + p_5q_2 + p_6q_1.$$

Tous les termes sont positifs ou nuls, donc en ne gardant que le premier et le dernier :

$$p_1 q_6 + p_6 q_1 \;\leqslant\; \frac{1}{11}.$$

**Étape 3. On remplace.**

En utilisant l'étape 1 :

$$p_1 \times \frac{1}{11\,p_6} \;+\; p_6 \times \frac{1}{11\,p_1} \;\leqslant\; \frac{1}{11}.$$

Multiplions les deux membres par $11\,p_1p_6$, qui est strictement positif :

$$p_1^2 + p_6^2 \;\leqslant\; p_1\,p_6.$$

**Étape 4. La contradiction.**

Pour tous réels $x$ et $y$, on a $(x-y)^2 \geqslant 0$, donc $x^2 + y^2 \geqslant 2xy$. Appliqué à $p_1$ et $p_6$ :

$$p_1^2 + p_6^2 \;\geqslant\; 2\,p_1p_6.$$

En combinant avec l'étape 3 :

$$2\,p_1p_6 \;\leqslant\; p_1^2 + p_6^2 \;\leqslant\; p_1p_6,$$

donc $2\,p_1p_6 \leqslant p_1p_6$, c'est-à-dire $p_1p_6 \leqslant 0$. Or $p_1 > 0$ et $p_6 > 0$, donc $p_1p_6 > 0$.

C'est absurde.

**Conclusion.** Aucun truquage ne permet d'obtenir les onze sommes avec la même probabilité.

## Going further

Remarque que la démonstration n'utilise que trois des onze équations : celles des sommes $2$, $7$ et $12$. Les huit autres n'ont jamais servi. C'est fréquent quand on prouve une impossibilité : il suffit d'exhiber une poignée de contraintes incompatibles.

Une variante célèbre va dans l'autre sens : avec deux dés **non standard** mais non truqués (chaque face équiprobable, mais avec d'autres nombres écrits dessus), peut-on retrouver exactement la loi de la somme de deux dés ordinaires ? Oui : ce sont les **dés de Sicherman**, numérotés $1,2,2,3,3,4$ et $1,3,4,5,6,8$. L'exercice ci-dessus montre en revanche qu'aucun choix de probabilités ne rendra la somme uniforme.

Au passage, l'inégalité $x^2+y^2 \geqslant 2xy$ est probablement l'inégalité la plus utile de toutes les mathématiques de lycée : quand un exercice de probabilités, de géométrie ou d'algèbre se termine par une contradiction, c'est souvent elle qui la fournit.
