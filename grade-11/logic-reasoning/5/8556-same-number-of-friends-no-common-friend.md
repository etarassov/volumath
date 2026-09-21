---
id: "8556"
title: "Le même nombre d'amis, aucun ami commun"
grade: 11
theme: logic-reasoning
difficulty: 5
duration_min: 45
tags: [principe-de-lextremum, graphe, maximum, amitie]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe B"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre IV, « Principe des tiroirs et de l'extremum » (Angela) du Groupe B, exercice 15 (l'énoncé du polycopié omet l'hypothèse qu'au moins une amitié existe, sans laquelle la conclusion est fausse)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Dans un groupe fini de personnes, l'amitié est réciproque : si $X$ est ami avec $Y$, alors
$Y$ est ami avec $X$. On suppose qu'il existe au moins une paire d'amis dans le groupe.

On suppose de plus que **deux personnes ayant le même nombre d'amis n'ont jamais d'ami
commun**.

Démontrer qu'il existe alors dans le groupe une personne qui possède exactement un ami.

## Hints

1. Regarde la personne qui a le plus grand nombre d'amis. Appelons-la $B$ et notons $n$ son nombre d'amis.
2. Pourquoi $n \geqslant 1$ ?
3. Les amis de $B$ ont tous $B$ en commun. Que dit alors l'hypothèse de l'énoncé sur leurs nombres d'amis ?
4. Encadre le nombre d'amis de chacun d'eux : au moins combien, au plus combien ? Combien sont-ils ?

## Solution

**Le choix de $B$.** Le groupe est fini, donc il existe une personne ayant le plus grand
nombre d'amis. Appelons-la $B$, et notons $n$ son nombre d'amis.

Comme il existe au moins une paire d'amis dans le groupe, quelqu'un a au moins un ami, donc
le maximum vérifie $n \geqslant 1$.

**Les amis de $B$ ont des nombres d'amis distincts.** Soient $X$ et $Y$ deux amis de $B$,
distincts l'un de l'autre. Ils ont $B$ pour ami commun. D'après l'hypothèse, deux personnes
ayant le même nombre d'amis n'ont aucun ami commun : donc $X$ et $Y$ n'ont pas le même
nombre d'amis.

Les $n$ amis de $B$ ont donc $n$ nombres d'amis **deux à deux différents**.

**Un encadrement.** Chacun de ces $n$ amis a au moins un ami, à savoir $B$ : son nombre
d'amis vaut donc au moins $1$. Et il vaut au plus $n$, puisque $n$ est le maximum sur tout le
groupe.

Les $n$ amis de $B$ ont donc $n$ nombres d'amis distincts, tous compris entre $1$ et $n$. Or
il n'y a exactement que $n$ entiers entre $1$ et $n$ : ces nombres d'amis sont donc
**exactement** $1, 2, \ldots, n$, chacun une fois.

**Conclusion.** En particulier, l'un des amis de $B$ a exactement $1$ ami. Le groupe contient
donc bien une personne possédant exactement un ami.

## Going further

L'hypothèse « au moins une amitié » est indispensable : dans un groupe où personne n'est ami
avec personne, tout le monde a $0$ ami, deux personnes quelconques ont le même nombre d'amis
mais aucun ami commun (elles n'en ont aucun), et pourtant personne n'a exactement un ami.
