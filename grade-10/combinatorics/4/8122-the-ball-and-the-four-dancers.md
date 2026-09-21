---
id: "8122"
title: "Le bal et les quatre danseurs"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [principe-de-l-extremum, raisonnement-par-l-absurde, graphe]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe A"
  reference: "stage_ete_2018.pdf, Groupe A, « Combinatoire – Principe de l'extremum », exercice 1"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Lors d'un bal, des garçons et des filles ont dansé ensemble. On constate deux choses :

- aucun garçon n'a dansé avec **toutes** les filles ;
- chaque fille a dansé avec **au moins un** garçon.

Montrer qu'on peut trouver deux garçons $g$ et $g'$ et deux filles $f$ et $f'$ tels que

$$g \text{ a dansé avec } f \text{ mais pas avec } f', \qquad g' \text{ a dansé avec } f' \text{ mais pas avec } f.$$

## Hints

1. On ne te demande pas de trouver les quatre personnes en même temps. Choisis-en une très particulière pour commencer.
2. Le garçon le plus prometteur est celui qui a dansé avec le plus de filles. Pourquoi ?
3. Une fois ce garçon $g$ choisi, la première hypothèse te fournit une fille $f'$, et la seconde te fournit un garçon $g'$.
4. Il ne reste qu'à trouver $f$. Raisonne par l'absurde : si cette fille n'existait pas, que pourrait-on dire des partenaires de $g'$ par rapport à ceux de $g$ ?

## Solution

**Le choix du garçon $g$.**

Le bal compte un nombre fini de garçons. Parmi eux, choisissons-en un qui a dansé avec le plus grand nombre de filles ; appelons-le $g$, et notons $k$ le nombre de filles avec qui il a dansé.

**Les choix de $f'$ puis de $g'$.**

Par hypothèse, $g$ n'a pas dansé avec toutes les filles. Il existe donc une fille $f'$ avec qui $g$ n'a **pas** dansé.

Par hypothèse encore, cette fille $f'$ a dansé avec au moins un garçon ; appelons-en un $g'$.

Remarquons tout de suite que $g \neq g'$ : $g'$ a dansé avec $f'$, alors que $g$ ne l'a pas fait.

**Le choix de $f$, par l'absurde.**

Nous cherchons une fille $f$ qui a dansé avec $g$ mais pas avec $g'$.

Supposons qu'une telle fille n'existe pas. Cela signifie que **toutes** les filles ayant dansé avec $g$ ont aussi dansé avec $g'$.

Comptons alors les partenaires de $g'$ :

- il a dansé avec les $k$ partenaires de $g$ ;
- il a dansé aussi avec $f'$, qui n'est pas une partenaire de $g$.

Donc $g'$ a dansé avec au moins $k+1$ filles, c'est-à-dire strictement plus que $g$. Cela contredit le choix de $g$, qui était un garçon ayant dansé avec le plus de filles.

**Conclusion.**

L'hypothèse était absurde : il existe donc bien une fille $f$ qui a dansé avec $g$ et pas avec $g'$. Récapitulons ce que vérifient nos quatre personnes :

- $g$ a dansé avec $f$ — par choix de $f$ ;
- $g$ n'a pas dansé avec $f'$ — par choix de $f'$ ;
- $g'$ a dansé avec $f'$ — par choix de $g'$ ;
- $g'$ n'a pas dansé avec $f$ — par choix de $f$.

Enfin $f \neq f'$, puisque $g$ a dansé avec l'une et pas avec l'autre. Les quatre personnes demandées existent.
