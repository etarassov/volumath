---
id: "1407"
title: "Combien de victoires pour être sûr de passer ?"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 45
tags: [tournoi, principe-des-tiroirs, majoration, extremal]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2, Winter Competition « Game »"
  reference: "Handout-3916-3573.pdf, partie 4 « Misc », problème 4 (réponse dans Handout-3917-3573.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3916-3573.pdf"
---

## Statement

Seize équipes de rugby participent à un championnat régional. Chaque paire d'équipes se rencontre exactement **deux** fois. On suppose qu'un match ne peut pas se terminer par un match nul : il y a toujours un vainqueur.

À la fin du championnat, les huit équipes ayant le plus de victoires sont qualifiées pour le championnat national. En cas d'égalité à la huitième place, les équipes à égalité sont départagées par tirage au sort.

Quel est le plus petit nombre de victoires qui **garantit** à une équipe une place au championnat national, sans dépendre d'un tirage au sort ?

## Hints

1. Combien de matchs chaque équipe joue-t-elle en tout ? Combien de matchs se jouent en tout dans le championnat ?
2. Une équipe n'est pas certaine de passer dès qu'il est possible que huit **autres** équipes aient au moins autant de victoires qu'elle.
3. Supposons que neuf équipes aient chacune au moins $v$ victoires. Regarder uniquement les matchs joués **entre ces neuf équipes** : combien y en a-t-il ? Combien de victoires distribuent-ils ?
4. Chacune de ces neuf équipes joue aussi contre les sept autres équipes du championnat. Combien de victoires peut-elle en tirer, au maximum ?
5. Additionner les deux majorations : cela donne un plafond pour le total des victoires de ces neuf équipes, donc un plafond pour $9v$.
6. Pour montrer que la valeur trouvée est bien la plus petite, il faut construire un scénario où neuf équipes sont à égalité juste en dessous.

## Solution

**Le cadre.**

Chaque équipe affronte les $15$ autres deux fois, donc joue $30$ matchs. Chaque match donne une victoire à quelqu'un.

Une équipe ayant $v$ victoires est **certaine** d'être qualifiée si et seulement s'il est impossible que huit autres équipes atteignent $v$ victoires ou plus. En effet, si huit autres équipes ont au moins $v$ victoires, notre équipe est au mieux neuvième, ou bien à égalité pour la huitième place, donc soumise au tirage au sort : dans les deux cas elle n'a aucune garantie.

Autrement dit, il faut trouver le plus petit $v$ pour lequel **neuf équipes ne peuvent pas avoir toutes au moins $v$ victoires**.

**Majorer le total de victoires de neuf équipes.**

Supposons que neuf équipes, disons $E_1, \ldots, E_9$, aient chacune au moins $v$ victoires. Comptons le total de leurs victoires, $V = v_1 + \cdots + v_9 \geqslant 9v$.

Séparons les victoires en deux catégories.

*Les victoires obtenues entre elles.* Les neuf équipes se rencontrent deux à deux, deux fois chacune, ce qui fait

$$2 \times \binom{9}{2} = 2 \times 36 = 72 \text{ matchs.}$$

Ces $72$ matchs distribuent exactement $72$ victoires, et toutes reviennent à des équipes du groupe. Cela apporte donc **exactement $72$** à la somme $V$.

*Les victoires obtenues contre les autres.* Il reste $16 - 9 = 7$ équipes hors du groupe. Chaque $E_i$ les affronte deux fois chacune, soit $14$ matchs, dont elle gagne au plus $14$. Pour les neuf équipes, cela apporte au plus

$$9 \times 14 = 126 .$$

En additionnant :

$$V \leqslant 72 + 126 = 198 .$$

**La conclusion de la majoration.**

Si les neuf équipes ont chacune au moins $v$ victoires, alors $9v \leqslant V \leqslant 198$, donc

$$v \leqslant 22 .$$

Ainsi, **neuf équipes ne peuvent pas avoir toutes au moins $23$ victoires**. Une équipe qui totalise $23$ victoires est donc certaine d'être qualifiée : au plus sept autres équipes peuvent l'égaler ou la dépasser.

**Pourquoi $22$ ne suffit pas.**

Il faut montrer qu'avec $22$ victoires, une équipe peut être forcée au tirage au sort. Construisons un championnat dans lequel neuf équipes ont exactement $22$ victoires chacune.

Prenons neuf équipes $E_1, \ldots, E_9$ et sept équipes $F_1, \ldots, F_7$.

- Chaque $E_i$ gagne ses $14$ matchs contre les $F_j$. Cela lui donne déjà $14$ victoires.
- Entre elles, les $E_i$ se partagent équitablement : pour chaque paire $\{E_i, E_j\}$, chacune gagne **un** des deux matchs. Chaque $E_i$ affronte ainsi $8$ adversaires du groupe et gagne une fois contre chacun, soit $8$ victoires de plus.

Au total, chaque $E_i$ obtient $14 + 8 = 22$ victoires, et chaque $F_j$ n'a que des victoires contre d'autres $F_j$, donc au plus $12$ victoires. (On vérifie la cohérence : les $E_i$ totalisent $9 \times 22 = 198$ victoires, ce qui correspond exactement au plafond calculé plus haut.)

Dans ce championnat, neuf équipes sont à $22$ victoires pour huit places : il faut tirer au sort, et l'équipe qui a $22$ victoires n'a donc aucune garantie.

**Conclusion.** Le plus petit nombre de victoires qui garantit la qualification est $\boxed{23}$.

## Going further

1. Reprendre la question si chaque paire d'équipes ne se rencontre qu'**une** fois.
2. Avec $16$ équipes et deux rencontres par paire, quel est le plus grand nombre de victoires qui ne garantit **pas** une place dans les quatre premières ?
3. Généraliser : $2n$ équipes, deux rencontres par paire, les $n$ meilleures qualifiées. Quel est le seuil ?
