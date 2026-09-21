---
id: "8334"
title: "La langue des lettres x, y et t"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [invariant, transformations, mots, comptage]
adapted_from: null
see_also: ["7826"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, cours du Groupe A"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe A, « Invariants » (Yohann), exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

On s'intéresse aux **mots** écrits avec les trois lettres $x$, $y$ et $t$. Ces mots n'ont aucun
sens, ce sont simplement des suites de lettres, par exemple $xytx$ ou $yyxt$.

On s'autorise les trois transformations suivantes, chacune dans les deux sens :

- $xy \longleftrightarrow yyx$ ;
- $xt \longleftrightarrow ttx$ ;
- $yt \longleftrightarrow ty$.

La première signifie par exemple que si deux lettres $x$ et $y$ se suivent dans cette
ordre quelque part dans le mot, on a le droit de les remplacer par les trois lettres $y$, $y$,
$x$ ; et réciproquement, si on voit $yyx$, on a le droit de le remplacer par $xy$.

Deux mots sont dits **équivalents** si on peut passer de l'un à l'autre par une suite de telles
transformations.

Dire si les mots suivants sont équivalents, en justifiant :

1. $xxyy$ et $xyyyyx$ ;
2. $xytx$ et $txyt$ ;
3. $xy$ et $xt$.

## Hints

1. Pour montrer que deux mots **sont** équivalents, il n'y a rien de mieux à faire que d'exhiber la suite de transformations.
2. Pour montrer que deux mots **ne sont pas** équivalents, cherche une quantité qui ne change jamais : c'est ce qu'on appelle un invariant.
3. Regarde ce que chaque transformation fait au nombre de $x$ du mot. Et au nombre de $y$ ? Au nombre de $t$ ?
4. Pour la question 2, compte les $x$. Pour la question 3, la bonne quantité n'est pas un nombre mais une simple présence.

## Solution

**1) $xxyy$ et $xyyyyx$ sont équivalents.**

Appliquons la première règle deux fois, en soulignant à chaque fois le morceau transformé.

$$x\,\underline{xy}\,y \;\longrightarrow\; x\,\underline{yyx}\,y = xyy\,\underline{xy} \;\longrightarrow\; xyy\,\underline{yyx} = xyyyyx .$$

Les deux mots sont donc bien équivalents.

**2) $xytx$ et $txyt$ ne sont pas équivalents.**

Comptons les $x$. Examinons chaque transformation :

| transformation | $x$ à gauche | $x$ à droite |
|---|---|---|
| $xy \leftrightarrow yyx$ | $1$ | $1$ |
| $xt \leftrightarrow ttx$ | $1$ | $1$ |
| $yt \leftrightarrow ty$ | $0$ | $0$ |

Dans les trois cas, le morceau remplacé et le morceau qui le remplace contiennent **le même
nombre de $x$**. Donc le nombre total de $x$ dans le mot ne change jamais : c'est un invariant.

Or $xytx$ contient deux $x$ et $txyt$ n'en contient qu'un seul. Les deux mots ne peuvent donc
pas être équivalents.

**3) $xy$ et $xt$ ne sont pas équivalents.**

Regardons cette fois la **présence** de la lettre $y$. Aucune des trois transformations ne peut
faire disparaître tous les $y$ d'un mot :

- $xy \leftrightarrow yyx$ transforme un $y$ en deux $y$, ou deux en un : il en reste toujours au moins un à cet endroit ;
- $xt \leftrightarrow ttx$ ne touche aucun $y$ ;
- $yt \leftrightarrow ty$ déplace un $y$ mais ne le supprime pas.

Donc un mot qui contient au moins un $y$ en contiendra toujours au moins un. Comme $xy$ contient
un $y$ et $xt$ n'en contient aucun, ces deux mots ne sont pas équivalents.

*(On peut faire exactement le même raisonnement avec la lettre $t$ : $xt$ en contient un et $xy$
aucun.)*

## Going further

Ce petit système est un exemple de **système de réécriture**. Ces objets sont étudiés en
informatique théorique, où ils servent à modéliser les calculs : un programme qui tourne, c'est
une suite de réécritures d'un état.

La question « ces deux mots sont-ils équivalents ? » y est en général très difficile, et il
existe des systèmes de réécriture pour lesquels aucun algorithme ne peut y répondre. Ici on s'en
sort parce que les trois règles sont simples et qu'on a trouvé de bons invariants.

Pour aller plus loin : peux-tu décrire **tous** les mots équivalents à $xy$ ?
