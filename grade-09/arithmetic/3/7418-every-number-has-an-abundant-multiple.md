---
id: "7418"
title: "Tout entier a un multiple abondant"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [diviseurs, multiples, somme, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2010, groupe des débutants"
  reference: "stage_ete_2010.pdf, « Groupe des Débutants », exercices du jour, vendredi 20 août, exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2010.pdf"
---

## Statement

Un entier $n \geq 1$ est dit **abondant** lorsque la somme de tous ses diviseurs positifs
(y compris $1$ et $n$ lui-même) dépasse $2n$.

Par exemple $12$ est abondant, car ses diviseurs sont $1$, $2$, $3$, $4$, $6$ et $12$, et
$$1 + 2 + 3 + 4 + 6 + 12 = 28 > 24 = 2 \times 12.$$

Montrer que tout entier $a \geq 1$ possède au moins un multiple abondant.

## Hints

1. Il s'agit de **construire** un multiple, pas de chercher. Repars de l'exemple : pourquoi $12$
   marche-t-il si bien ?
2. Les diviseurs de $12$ autres que $12$ lui-même sont $1$, $2$, $3$, $4$, $6$, et leur somme
   vaut $16$, soit plus que $12$. Que se passe-t-il si tu multiplies tout ce petit monde par $a$ ?
3. Considère le nombre $12a$. Sais-tu nommer six de ses diviseurs, sans rien connaître de $a$ ?

## Solution

**On propose un multiple.** Montrons que $12a$ est toujours abondant.

**Six diviseurs faciles.**

Puisque $12 = 1 \times 12 = 2 \times 6 = 3 \times 4$, les six nombres
$$a, \quad 2a, \quad 3a, \quad 4a, \quad 6a, \quad 12a$$
sont tous des diviseurs de $12a$. En effet, $12a = 12 \times a = 6 \times 2a = 4 \times 3a =
3 \times 4a = 2 \times 6a = 1 \times 12a$.

Ces six nombres sont **deux à deux distincts**, puisque $a \geq 1$ et que $1$, $2$, $3$, $4$, $6$,
$12$ le sont.

**On additionne.**

La somme des diviseurs de $12a$ est au moins égale à la somme de ces six-là :
$$a + 2a + 3a + 4a + 6a + 12a = (1 + 2 + 3 + 4 + 6 + 12)\,a = 28a.$$

**Conclusion.**

La somme de tous les diviseurs de $12a$ vaut donc au moins $28a$, et
$$28a > 24a = 2 \times (12a).$$

Donc $12a$ est abondant, et c'est bien un multiple de $a$.

**Tout entier $a \geq 1$ a donc un multiple abondant.**

*Remarque.* On n'a pas eu besoin de connaître $a$, ni même de savoir si $a$ est premier, pair ou
impair. C'est le petit nombre $12$ qui fait tout le travail : chez lui, la somme des diviseurs
stricts dépasse déjà le nombre lui-même.

## Going further

Le nombre $12$ n'est pas le plus petit qui convienne ici. Y en a-t-il un plus petit ? Et
peut-on remplacer $12$ par un nombre qui rende la conclusion encore plus forte, par exemple
« la somme des diviseurs de $Na$ dépasse $3 \times Na$ » ?
