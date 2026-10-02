---
id: "11403"
title: "Cinq tas d'environ quatre cents pierres"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [invariant, restes, maximum, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 4 (combinatoire)"
  reference: "2020-01_EnvoiCombiFinal.pdf, Exercices Juniors, exercice 6 ; corrigé 2020-03_corrige-commente-envoi-4.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/01/EnvoiCombiFinal.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-01_EnvoiCombiFinal.pdf"
---

## Statement

Cinq boîtes contiennent respectivement $402$, $403$, $404$, $405$ et $406$ pierres.

La seule opération permise est la suivante : on choisit une boîte qui contient au moins $4$
pierres, on en retire $4$ pierres, et on met une de ces pierres dans chacune des quatre autres
boîtes. On peut répéter l'opération autant de fois qu'on veut.

Quel est le plus grand nombre de pierres qu'on peut réussir à rassembler dans une seule boîte ?

## Hints

1. Le nombre total de pierres ne change jamais. Combien vaut-il ?
2. Essaie d'abord avec des boîtes de $0$, $1$, $2$, $3$ et $4$ pierres. Que remarques-tu ?
3. Regarde le reste de la division par $5$ du contenu de chaque boîte. Que fait une opération
   à ces cinq restes ?
4. Pour la construction, choisis la boîte qui doit grossir et n'y touche jamais.

## Solution

**Le total ne change pas.**

Une opération retire $4$ pierres d'une boîte et en remet $4$ dans les autres. Le total reste donc
toujours
$$402 + 403 + 404 + 405 + 406 = 2020 .$$

**Ce que devient le reste de la division par $5$.**

Regardons le reste de la division par $5$ du nombre de pierres de chaque boîte. Au départ, ces
restes sont $2, 3, 4, 0, 1$ : ils sont tous différents.

Lors d'une opération :

- chacune des quatre boîtes qui reçoit une pierre voit son reste augmenter de $1$ (en revenant
  à $0$ après $4$) ;
- la boîte d'où l'on retire $4$ pierres voit aussi son reste augmenter de $1$, car retirer $4$
  revient à retirer $5$ puis ajouter $1$, et retirer $5$ ne change pas le reste.

Les cinq restes augmentent donc **tous** de $1$ en même temps. S'ils étaient tous différents
avant l'opération, ils le sont encore après. Comme ils sont tous différents au départ, ils
restent tous différents pour toujours : à tout moment, les cinq restes sont exactement
$0, 1, 2, 3, 4$ dans un certain ordre.

**On ne peut pas dépasser $2014$.**

Prenons une boîte quelconque à un moment quelconque. Les quatre autres boîtes ont quatre restes
différents. Une boîte dont le reste est $r$ contient au moins $r$ pierres. Les quatre autres
boîtes contiennent donc ensemble au moins
$$0 + 1 + 2 + 3 = 6$$
pierres, puisque quatre restes différents parmi $0, 1, 2, 3, 4$ font au moins $0 + 1 + 2 + 3$.
La boîte choisie contient donc au plus $2020 - 6 = 2014$ pierres.

**On peut atteindre $2014$.**

On ne touche jamais à la boîte qui contient $404$ pierres. Tant qu'une des quatre autres boîtes
contient au moins $4$ pierres, on fait l'opération sur elle.

- Chaque opération de ce type fait perdre $4$ pierres à l'une des quatre boîtes et en donne $3$
  aux trois autres : les quatre boîtes perdent ensemble $1$ pierre. Elles ne peuvent pas perdre
  une pierre indéfiniment, donc au bout d'un certain temps on ne peut plus rien faire.
- À ce moment-là, chacune des quatre boîtes contient au plus $3$ pierres. Or leurs restes sont
  quatre nombres différents, et pour une boîte de $0$ à $3$ pierres, le reste est le nombre de
  pierres lui-même. Elles contiennent donc $0$, $1$, $2$ et $3$ pierres, soit $6$ pierres en
  tout.

La boîte qui contenait $404$ pierres en contient alors $2020 - 6 = 2014$.

**Conclusion.**

**Le plus grand nombre de pierres qu'on peut rassembler dans une seule boîte est $2014$.**
