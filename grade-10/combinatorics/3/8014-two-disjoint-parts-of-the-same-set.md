---
id: "8014"
title: "Deux parties disjointes du même ensemble"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [denombrement, ensembles, coloriage, principe-multiplicatif]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, Coupe Animath 2017, éliminatoires lycéens, exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Déterminer le nombre de couples $(A, B)$ de parties de $\{1, 2, \ldots, 10\}$, éventuellement
vides, telles que

$$A \cap B = \varnothing .$$

*(Le couple est ordonné : si $A \neq B$, alors $(A, B)$ et $(B, A)$ comptent pour deux couples
différents.)*

## Hints

1. Fais d'abord le cas de $\{1\}$, puis celui de $\{1, 2\}$. Combien de couples trouves-tu ?
2. Ne compte pas les parties $A$ puis les parties $B$ : décide plutôt, pour chaque élément, ce
   qui lui arrive.
3. Un élément de $\{1, 2, \ldots, 10\}$ peut être dans $A$, ou dans $B$, ou dans aucun des
   deux. Peut-il être dans les deux ?

## Solution

**On raisonne élément par élément.** Se donner le couple $(A, B)$, c'est se donner, pour
chacun des dix éléments, la réponse à la question « où est-il ? ».

Comme $A$ et $B$ sont disjoints, un élément ne peut pas être dans les deux. Il y a donc
exactement trois possibilités pour lui :

- il est dans $A$ seulement ;
- il est dans $B$ seulement ;
- il n'est ni dans $A$ ni dans $B$.

**Pourquoi cela suffit.** Inversement, si on choisit l'une de ces trois étiquettes pour chacun
des dix éléments, on obtient un couple $(A, B)$ bien défini : $A$ est l'ensemble des éléments
étiquetés « $A$ », et $B$ celui des éléments étiquetés « $B$ ». Ces deux ensembles sont
disjoints par construction.

Il y a donc autant de couples $(A, B)$ que de façons de colorier les dix éléments avec trois
couleurs.

**Le compte.** Chaque élément a $3$ possibilités, et les choix sont indépendants :

$$3 \times 3 \times \cdots \times 3 = 3^{10}.$$

Calculons : $3^5 = 243$, donc $3^{10} = 243^2 = 59\,049$.

**Il y a $59\,049$ couples.**

## Going further

Le même raisonnement donne $3^n$ pour un ensemble à $n$ éléments. On peut le vérifier à la main
pour $n = 1$ : les couples sont $(\varnothing, \varnothing)$, $(\{1\}, \varnothing)$ et
$(\varnothing, \{1\})$, soit $3$ couples.

Si l'on voulait compter les couples avec $A \cup B = \{1, \ldots, 10\}$ au lieu de
$A \cap B = \varnothing$, le même découpage donnerait encore $3$ possibilités par élément
(dans $A$ seul, dans $B$ seul, dans les deux), donc encore $3^{10}$.
