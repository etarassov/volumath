---
id: "7731"
title: "Quelqu'un a exactement un ami"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 45
tags: [principe de l extremum, maximum, amis, principe des tiroirs]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe A"
  reference: "stage_ete_2014.pdf, « Groupe A : stratégies de base », mercredi 20 matin (Joon Kwon), exercice 9 (l'énoncé du document est faux si personne n'a d'ami : on a ajouté l'hypothèse qu'au moins deux personnes sont amies)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Dans un groupe fini de personnes, l'amitié est réciproque : si $X$ est l'ami de $Y$, alors $Y$ est l'ami de $X$. On suppose qu'**au moins deux personnes du groupe sont amies**.

On suppose de plus la propriété suivante :

> deux personnes qui ont le même nombre d'amis dans le groupe n'ont jamais d'ami commun.

Montrer qu'il existe dans le groupe une personne qui a **exactement un** ami.

## Hints

1. Choisis la personne qui a le plus d'amis possible. Pourquoi existe-t-elle, et pourquoi a-t-elle au moins un ami ?
2. Appelle-la $A$ et note $n$ son nombre d'amis. Regarde les amis de $A$ : qu'ont-ils tous en commun ?
3. Ils ont tous $A$ comme ami commun. Que dit alors l'hypothèse sur leurs nombres d'amis ?
4. Leurs nombres d'amis sont donc $n$ nombres tous différents. Entre quelles bornes sont-ils compris ?
5. Combien de valeurs sont disponibles, et combien de personnes faut-il y loger ?

## Solution

**L'idée : regarder les amis de la personne la plus entourée. Leurs nombres d'amis sont forcément $1, 2, \ldots, n$, sans aucune place libre.**

**Le choix de la personne.** Le groupe est fini, donc il existe une personne ayant le plus grand nombre d'amis. Notons-la $A$, et notons $n$ son nombre d'amis. Comme au moins deux personnes du groupe sont amies, quelqu'un a au moins un ami, donc

$$n \geqslant 1 .$$

**Les amis de $A$ ont tous des nombres d'amis différents.** Notons $B_1, B_2, \ldots, B_n$ les $n$ amis de $A$. Prenons-en deux, $B_i$ et $B_j$ avec $i \neq j$. Ils ont un ami commun, à savoir $A$. D'après l'hypothèse de l'énoncé, ils ne peuvent donc pas avoir le même nombre d'amis :

$$B_i \text{ et } B_j \text{ ont des nombres d'amis différents.}$$

Les $n$ personnes $B_1, \ldots, B_n$ ont donc $n$ nombres d'amis deux à deux différents.

**Ces nombres sont entre $1$ et $n$.**

- Chaque $B_i$ a au moins un ami, à savoir $A$ : son nombre d'amis est donc $\geqslant 1$.
- Chaque $B_i$ a au plus $n$ amis, puisque $n$ est le maximum sur tout le groupe.

Les $n$ nombres d'amis de $B_1, \ldots, B_n$ sont donc $n$ entiers deux à deux différents, tous compris entre $1$ et $n$.

**Il n'y a pas de place perdue.** Entre $1$ et $n$, il y a exactement $n$ valeurs. Nous avons $n$ nombres tous différents à y loger : ils occupent donc **toutes** les valeurs, chacune exactement une fois. Autrement dit,

$$\{\text{nombres d'amis de } B_1, \ldots, B_n\} = \{1, 2, \ldots, n\} .$$

En particulier, la valeur $1$ est atteinte : l'un des $B_i$ a exactement un ami.

**Conclusion : il existe bien dans le groupe une personne qui a exactement un ami.**

## Going further

**L'hypothèse ajoutée est indispensable.** Si personne n'a d'ami, la condition de l'énoncé est vérifiée sans rien dire (tout le monde a $0$ ami, et personne n'a d'ami commun avec personne), et pourtant personne n'a exactement un ami. L'énoncé original du polycopié omet cette hypothèse.

**Un exemple où tout marche.** Prenons quatre personnes $A$, $B$, $C$, $D$, avec $A$ ami de $B$, $B$ ami de $C$, et $C$ ami de $D$, et aucune autre amitié. Les nombres d'amis sont alors $1$, $2$, $2$, $1$. Vérifions la condition :

- $B$ et $C$ ont tous deux $2$ amis ; les amis de $B$ sont $A$ et $C$, ceux de $C$ sont $B$ et $D$ : aucun ami commun ;
- $A$ et $D$ ont tous deux $1$ ami ; l'ami de $A$ est $B$, celui de $D$ est $C$ : aucun ami commun.

La condition est respectée, et $A$ a bien exactement un ami, comme le prédit la démonstration.

**Ce que la condition interdit.** Elle interdit par exemple qu'une personne ait deux amis qui, eux, n'ont pas d'autre ami : ces deux-là auraient le même nombre d'amis ($1$) et un ami commun. La condition oblige donc l'entourage de chacun à être très varié, ce qui est exactement ce qui fait marcher la démonstration.
