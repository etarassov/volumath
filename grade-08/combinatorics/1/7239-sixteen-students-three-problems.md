---
id: "7239"
title: "Seize élèves et trois exercices"
grade: 8
theme: combinatorics
difficulty: 1
duration_min: 10
tags: [tiroirs, raisonnement-par-l-absurde, comptage]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2018"
  reference: "Poly_final_CJ18.pdf, « Débutants », mercredi 24 après-midi (Colin Davalo), principe des tiroirs, exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_final_CJ18.pdf"
---

## Statement

Seize élèves passent une épreuve comportant trois exercices. Chaque élève résout exactement un
exercice, et un seul.

Montrer qu'au moins six élèves ont résolu le même exercice.

## Hints

1. Suppose le contraire : que chaque exercice a été résolu par cinq élèves au plus.
2. Combien d'élèves cela ferait-il en tout, au maximum ?
3. Compare avec $16$.

## Solution

**Raisonnons par l'absurde.**

Supposons qu'aucun exercice n'ait été résolu par six élèves ou plus. Alors chacun des trois
exercices a été résolu par au plus cinq élèves.

**Le compte des élèves.**

Chaque élève a résolu exactement un exercice, donc chaque élève est compté une fois et une seule
quand on additionne les trois groupes. Le nombre total d'élèves vaut donc au plus
$$5 + 5 + 5 = 15 .$$

**La contradiction.**

Or il y a $16$ élèves, et $16 > 15$.

**Au moins un exercice a donc été résolu par six élèves au moins.**

## Going further

C'est le **principe des tiroirs** sous sa forme générale : si l'on range $n$ objets dans $k$
tiroirs, un tiroir au moins contient au moins $\left\lceil \dfrac{n}{k} \right\rceil$ objets,
c'est-à-dire $\dfrac{n}{k}$ arrondi vers le haut.

Ici $n = 16$ et $k = 3$, et $\dfrac{16}{3} = 5{,}33\ldots$, arrondi vers le haut : $6$.

Le nombre $16$ est le plus petit qui marche : avec $15$ élèves, on pourrait avoir exactement cinq
élèves par exercice, et aucun groupe de six.
