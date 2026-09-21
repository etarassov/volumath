---
id: "7033"
title: "Sept cases noires dans une grille 4 sur 4"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [grille, minimum, principe des tiroirs]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2012"
  reference: "stage_junior_2012.pdf, lundi, test initial, exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2012.pdf"
---

## Statement

On considère une grille $4 \times 4$, soit $16$ cases. On en noircit certaines.

On veut que la propriété suivante soit vraie : **quelles que soient** les deux lignes et les
deux colonnes que l'on efface, il reste au moins une case noire parmi les quatre cases
survivantes.

Combien faut-il noircir de cases au minimum ?

## Hints

1. Il y a deux choses à faire : trouver un coloriage qui marche (cela donne une borne
   supérieure), et montrer qu'on ne peut pas faire mieux (cela donne la borne inférieure).
2. Pour la borne inférieure, suppose qu'on n'a noirci que $6$ cases et cherche deux lignes et
   deux colonnes qui effacent tout.
3. Efface les **deux lignes qui contiennent le plus de cases noires**. Combien de cases noires
   restent alors ?
4. S'il en reste au plus deux, tu peux les tuer avec deux colonnes. Combien peut-il en rester
   exactement ?

## Solution

**La réponse est $7$.**

**Reformulons.** Effacer deux lignes et deux colonnes d'une grille $4 \times 4$, c'est garder
deux lignes et deux colonnes, donc une sous-grille $2 \times 2$. La condition demandée
s'énonce donc ainsi :

> **toute** sous-grille $2 \times 2$ (formée de deux lignes et de deux colonnes quelconques)
> contient au moins une case noire.

Autrement dit, il ne doit exister aucun rectangle $2 \times 2$ entièrement blanc.

**Une configuration à $7$ cases qui convient.**

Voici un coloriage, une croix marquant une case noire :

```
.  .  .  X
.  X  X  .
X  .  X  .
X  X  .  .
```

Il y a bien $7$ croix. Décrivons plutôt les cases **blanches** de chaque ligne :
$$B_1 = \{1,2,3\}, \qquad B_2 = \{1,4\}, \qquad B_3 = \{2,4\}, \qquad B_4 = \{3,4\} .$$

Un rectangle $2 \times 2$ entièrement blanc, ce serait deux lignes ayant **deux colonnes
blanches en commun**. Or, en comparant les quatre ensembles deux à deux :
$$B_1 \cap B_2 = \{1\}, \quad B_1 \cap B_3 = \{2\}, \quad B_1 \cap B_4 = \{3\}, \quad
  B_2 \cap B_3 = B_2 \cap B_4 = B_3 \cap B_4 = \{4\} .$$
Chaque intersection ne contient qu'une seule colonne. Il n'y a donc aucun rectangle blanc, et
le coloriage convient.

**Six cases ne suffisent jamais.**

Supposons que l'on ait noirci au plus $6$ cases. Notons
$$n_1 \geq n_2 \geq n_3 \geq n_4$$
les nombres de cases noires des quatre lignes, rangés dans l'ordre décroissant, et effaçons
les **deux lignes les plus chargées**, celles qui portent $n_1$ et $n_2$ cases noires.

Il reste alors $n_3 + n_4$ cases noires. Montrons que $n_3 + n_4 \leq 2$.

- Si $n_3 + n_4 \geq 4$, alors $n_1 + n_2 \geq n_3 + n_4 \geq 4$ (car $n_1 \geq n_3$ et
  $n_2 \geq n_4$), donc le total dépasserait $8 > 6$.
- Si $n_3 + n_4 = 3$, deux cas seulement :
  - $(n_3, n_4) = (3, 0)$, et alors $n_1 \geq n_2 \geq 3$, donc le total vaut au moins
    $3+3+3+0 = 9 > 6$ ;
  - $(n_3, n_4) = (2, 1)$, et alors $n_1 \geq n_2 \geq 2$, donc le total vaut au moins
    $2+2+2+1 = 7 > 6$.

  Les deux cas sont impossibles.

Donc il reste au plus **deux** cases noires. Elles occupent au plus deux colonnes : effaçons
ces colonnes (et une colonne au hasard s'il n'y en avait qu'une).

On a ainsi effacé deux lignes et deux colonnes, et il ne reste plus aucune case noire : la
propriété est en défaut.

**Conclusion.** Il faut noircir au moins $7$ cases, et $7$ suffisent : le minimum cherché est
$\boxed{7}$.

## Going further

Le raisonnement « j'efface les deux lignes les plus chargées » est une version du principe des
tiroirs : si le total est petit, la moitié la moins chargée est vraiment petite.

Quelle est la réponse pour une grille $n \times n$ dont on efface $k$ lignes et $k$ colonnes ?
Le cas $n = 4$, $k = 2$ donne $7$ ; essaie $n = 5$, $k = 2$.
