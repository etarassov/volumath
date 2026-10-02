---
id: "7501"
title: "Le loup, les cochons et les lièvres"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [inegalite, comparaison, encadrement, raisonnement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 1 (solution p. 239, résolu par Khalil Besrour)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

Un loup se met à table le ventre vide.

- S'il mange 3 cochons et 7 lièvres, il a **encore faim** à la fin du repas.
- S'il mange 7 cochons et 1 lièvre, il a **trop mangé** et il a mal au ventre.

Que se passe-t-il s'il mange 11 lièvres : aura-t-il encore faim, ou aura-t-il trop mangé ?

## Hints

1. Donne un nom à ce que tu ne connais pas : appelle $c$ « ce que remplit un cochon » et $l$ « ce que remplit un lièvre ».
2. Les deux repas de l'énoncé se comparent : l'un laisse le loup sur sa faim, l'autre le fait déborder. Lequel remplit le plus ?
3. De cette comparaison tu peux tirer une information du genre « un cochon vaut plus que tant de lièvres ». Cherche-la.
4. Compare ensuite 11 lièvres avec le repas de 3 cochons et 7 lièvres, dont tu sais déjà qu'il ne suffit pas.

## Solution

**Étape 1. On note les choses.**

Appelons $c$ la quantité de nourriture que représente un cochon et $l$ celle que représente un lièvre. Appelons $F$ la quantité qu'il faut au loup pour être exactement rassasié.

L'énoncé dit deux choses :

$$3c + 7l < F \qquad \text{(il a encore faim)},$$
$$7c + 1l > F \qquad \text{(il a trop mangé)}.$$

**Étape 2. On compare les deux repas.**

En mettant les deux lignes bout à bout :

$$3c + 7l \;<\; F \;<\; 7c + l,$$

donc

$$3c + 7l < 7c + l.$$

On retire $3c$ et $l$ des deux côtés :

$$6l < 4c.$$

Autrement dit $4c > 6l$, et en divisant par $4$ :

$$c > \tfrac{3}{2}\,l.$$

Un cochon remplit plus que un lièvre et demi.

**Étape 3. On s'occupe des 11 lièvres.**

Reprenons le premier repas. Comme $c > \tfrac{3}{2} l$, on a $3c > \tfrac{9}{2} l$, donc

$$3c + 7l \;>\; \tfrac{9}{2}\,l + 7l \;=\; \tfrac{23}{2}\,l \;=\; 11{,}5\,l \;>\; 11\,l.$$

Donc 11 lièvres remplissent **moins** que le repas « 3 cochons et 7 lièvres ». Or ce repas-là laissait déjà le loup sur sa faim :

$$11\,l \;<\; 3c + 7l \;<\; F.$$

**Conclusion.** S'il mange 11 lièvres, le loup a encore faim.

## Going further

Remarque qu'on n'a jamais eu besoin de savoir combien vaut un cochon, ni combien vaut un lièvre, ni combien il faut au loup. Seules les **comparaisons** comptent. C'est très fréquent : beaucoup de problèmes se résolvent en encadrant une quantité inconnue entre deux autres, sans jamais la calculer.

Et si le loup mangeait 12 lièvres ? Là, on ne peut plus conclure : $12\,l$ peut être plus petit ou plus grand que $F$ selon les valeurs exactes de $c$, $l$ et $F$. Essaie de trouver deux jeux de valeurs respectant l'énoncé, l'un où le loup a encore faim avec 12 lièvres, l'autre où il a trop mangé.
