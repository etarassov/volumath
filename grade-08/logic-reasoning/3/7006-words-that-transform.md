---
id: "7006"
title: "Des mots qui se transforment"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [invariant, mots, transformation]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2011, groupe des débutants"
  reference: "stage_junior_2011.pdf, « Stratégies de base », TD (Igor Kortchemski), exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2011.pdf"
---

## Statement

On écrit des « mots » avec les lettres $x$, $y$ et $t$. On s'autorise les trois
transformations suivantes, que l'on peut appliquer n'importe où à l'intérieur d'un mot, et
dans les deux sens :

$$xy \longleftrightarrow yyx, \qquad xt \longleftrightarrow ttx, \qquad yt \longleftrightarrow ty .$$

Par exemple, dans le mot $axyb$, le morceau $xy$ peut être remplacé par $yyx$, ce qui donne
$ayyxb$.

Deux mots sont dits **équivalents** si l'on peut passer de l'un à l'autre par une suite de ces
transformations.

Les paires suivantes sont-elles équivalentes ?

1. $xxyy$ et $xyyyyx$
2. $xytx$ et $txyt$
3. $xy$ et $xt$

## Hints

1. Pour la première, il n'y a rien à démontrer : il suffit de trouver la suite de coups.
2. Pour les deux autres, il faut montrer que c'est impossible. Cherche quelque chose qui ne
   change jamais quand on applique une transformation.
3. Regarde combien de fois chaque lettre apparaît. Quelles lettres voient leur compte changer ?
   Et lesquelles ne le voient jamais changer ?

## Solution

**1. $xxyy$ et $xyyyyx$ sont équivalents.**

Partons de $xxyy$ et appliquons la règle $xy \to yyx$ au $xy$ situé au milieu :
$$x\,\underline{xy}\,y \longrightarrow x\,\underline{yyx}\,y = xyy\,\underline{xy} .$$
Appliquons-la à nouveau, cette fois au $xy$ de la fin :
$$xyy\,\underline{xy} \longrightarrow xyy\,\underline{yyx} = xyyyyx . \checkmark$$

**2. $xytx$ et $txyt$ ne sont pas équivalents.**

Regardons le **nombre de lettres $x$** dans un mot.

- La règle $xy \leftrightarrow yyx$ : à gauche un $x$, à droite un $x$. Le compte ne change pas.
- La règle $xt \leftrightarrow ttx$ : à gauche un $x$, à droite un $x$. Le compte ne change pas.
- La règle $yt \leftrightarrow ty$ : aucun $x$ des deux côtés. Le compte ne change pas.

Le nombre de $x$ est donc un **invariant**.

Or $xytx$ contient deux $x$, tandis que $txyt$ n'en contient qu'un. Les deux mots ne peuvent
pas être équivalents.

**3. $xy$ et $xt$ ne sont pas équivalents.**

Cette fois, regardons la **présence de la lettre $y$**.

Aucune des trois règles ne fait apparaître ni disparaître la lettre $y$ : dans
$xy \leftrightarrow yyx$ il y a des $y$ des deux côtés, dans $yt \leftrightarrow ty$ aussi, et
la règle $xt \leftrightarrow ttx$ ne touche pas aux $y$. Donc :

> si un mot contient au moins un $y$, tous les mots équivalents en contiennent au moins un.

Le mot $xy$ contient un $y$, le mot $xt$ n'en contient aucun. Ils ne sont pas équivalents.

*(Le même argument avec la lettre $t$ marche tout aussi bien.)*

**Conclusion.** Seule la première paire est formée de mots équivalents.

## Going further

Attention à la règle $xy \to yyx$ : elle change le nombre de $y$ (un devient deux). Le nombre
de $y$ n'est donc **pas** un invariant, seule sa *présence* l'est. C'est une distinction qui
revient souvent : parfois ce qui se conserve n'est pas une quantité, mais une simple
alternative « il y en a » / « il n'y en a pas ».
