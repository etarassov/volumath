---
id: "3822"
title: "Treize enfants autour de la table"
grade: 9
theme: logic-reasoning
difficulty: 5
duration_min: 40
tags: [menteurs, parite, cycle, disjonction de cas]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 1, Problem Solving: Think Outside the Box"
  reference: "Handout-4165-3921.pdf, problème 8 (réponse dans Handout-4188-3921.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4165-3921.pdf"
---

## Statement

Treize enfants sont assis autour d'une table ronde.

Les filles se sont mises d'accord : elles disent toujours la vérité à une fille, et mentent toujours à un garçon. Les garçons ont fait le même pacte entre eux : ils disent toujours la vérité à un garçon et mentent toujours à une fille.

L'un des enfants dit à son voisin de droite : « Nous sommes une majorité de garçons. » Ce voisin dit alors à *son* voisin de droite : « Nous sommes une majorité de filles. » Le suivant dit : « Nous sommes une majorité de garçons », et ainsi de suite en alternant, tout le tour de la table, jusqu'au dernier enfant qui dit au premier : « Nous sommes une majorité de garçons. »

Combien y avait-il de garçons à la table ?

## Hints

1. Retiens la règle sous cette forme : un enfant dit la vérité à son voisin de droite **exactement quand ils sont du même sexe**.
2. Numérote les enfants de $1$ à $13$ dans le sens où circulent les phrases. Qui dit « majorité de garçons » ? Qui dit « majorité de filles » ?
3. Comme il y a $13$ enfants, un nombre impair, il y a vraiment une majorité : soit les garçons, soit les filles. Sépare en deux cas.
4. Dans chaque cas, tu sais pour chaque paire de voisins s'ils sont du même sexe ou non. En faisant le tour complet de la table, combien de fois le sexe doit-il changer ? Cette quantité a une parité imposée.

## Solution

**L'idée : traduire chaque phrase en « ces deux voisins sont du même sexe » ou « ils sont de sexes différents », puis faire le tour de la table.**

Numérotons les enfants $1, 2, \ldots, 13$ dans le sens des phrases, l'enfant $13$ parlant à l'enfant $1$.

**Étape 0. La règle, reformulée.**

Une fille dit la vérité aux filles et ment aux garçons ; un garçon dit la vérité aux garçons et ment aux filles. Donc :

> l'enfant $i$ dit la vérité à l'enfant $i+1$ **si et seulement si** ils sont du même sexe.

**Étape 1. Qui dit quoi.**

Les phrases alternent en commençant par « majorité de garçons ». Les enfants de numéro impair ($1, 3, 5, 7, 9, 11, 13$) disent « majorité de garçons », ceux de numéro pair ($2, 4, 6, 8, 10, 12$) disent « majorité de filles ». L'énoncé confirme que l'enfant $13$ dit bien « majorité de garçons », ce qui est cohérent avec $13$ impair.

Comme $13$ est impair, il n'y a pas d'égalité possible : soit les garçons sont majoritaires, soit les filles le sont.

**Étape 2. Premier cas : les filles sont majoritaires.**

Alors « majorité de garçons » est faux et « majorité de filles » est vrai.

- Pour $i$ impair, la phrase est fausse, donc les enfants $i$ et $i+1$ sont de **sexes différents**.
- Pour $i$ pair, la phrase est vraie, donc les enfants $i$ et $i+1$ sont du **même sexe**.

En parcourant la table de l'enfant $1$ jusqu'à revenir à l'enfant $1$, le sexe change exactement aux $7$ étapes impaires $i = 1, 3, 5, 7, 9, 11, 13$.

Mais après un tour complet on revient au point de départ : le nombre de changements de sexe doit être **pair**. Or $7$ est impair. Ce cas est donc impossible.

**Étape 3. Deuxième cas : les garçons sont majoritaires.**

Alors « majorité de garçons » est vrai et « majorité de filles » est faux.

- Pour $i$ impair, les enfants $i$ et $i+1$ sont du **même sexe**.
- Pour $i$ pair, les enfants $i$ et $i+1$ sont de **sexes différents**.

Cette fois les changements ont lieu aux $6$ étapes paires : $6$ est pair, il n'y a pas de contradiction.

**Étape 4. On reconstitue la table.**

Partons de l'enfant $1$ et notons $A$ son sexe, $B$ l'autre.

| Enfant | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ | $10$ | $11$ | $12$ | $13$ |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Sexe | $A$ | $A$ | $B$ | $B$ | $A$ | $A$ | $B$ | $B$ | $A$ | $A$ | $B$ | $B$ | $A$ |

On vérifie la dernière contrainte : $i = 13$ est impair, donc les enfants $13$ et $1$ doivent être du même sexe, et ils sont bien tous les deux $A$.

Comptons :

- sexe $A$ : enfants $1, 2, 5, 6, 9, 10, 13$, soit $7$ enfants ;
- sexe $B$ : enfants $3, 4, 7, 8, 11, 12$, soit $6$ enfants.

Comme nous sommes dans le cas où les garçons sont majoritaires, le sexe $A$ est celui des garçons.

**Conclusion.** Il y avait $7$ garçons (et $6$ filles) autour de la table.

## Going further

1. La disposition trouvée est-elle unique, si l'on ne tient pas compte de la place par où l'on commence à compter ?
2. Refais le raisonnement avec $11$ enfants au lieu de $13$, les phrases alternant de la même façon. Combien de garçons ?
3. Pourquoi le raisonnement tomberait-il en panne avec un nombre pair d'enfants ?
