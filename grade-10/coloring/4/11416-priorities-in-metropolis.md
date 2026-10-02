---
id: "11416"
title: "Les priorités à Metropolis"
grade: 10
theme: coloring
difficulty: 4
duration_min: 35
tags: [coloriage, droites, parite, construction]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 4 (combinatoire)"
  reference: "2021-01_sujet-envoi-4.pdf, Exercices Juniors, exercice 8 ; corrigé 2021-03_Corrige-envoi-4.pdf, solution 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/01/sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-01_sujet-envoi-4.pdf"
---

## Statement

La ville de Metropolis compte $n$ rues, qui sont toutes des droites. Deux rues quelconques se
croisent toujours, et trois rues ne passent jamais par un même point.

À chaque carrefour, c'est-à-dire à chaque point où deux rues se croisent, le conseil municipal veut
décider laquelle des deux rues a la priorité sur l'autre. Pour éviter les excès de vitesse, il
souhaite qu'une rue ne soit jamais prioritaire à deux carrefours consécutifs. Deux carrefours d'une
même rue sont consécutifs s'il n'y a aucun autre carrefour entre eux sur cette rue.

Montrer que ce souhait peut être réalisé.

## Hints

1. Les rues découpent le plan en morceaux, les « pâtés de maisons ». Dessine $3$ ou $4$ rues et
   essaie de colorier les pâtés en blanc et en noir de sorte que deux pâtés séparés par un bout de
   rue n'aient jamais la même couleur.
2. Pour colorier, fixe un pâté de départ. Pour un autre pâté, compte combien de rues le séparent
   du pâté de départ, et regarde la parité.
3. Autour d'un carrefour, il y a quatre pâtés. Comment sont leurs couleurs ? Essaie une règle du
   genre : « une voiture a la priorité si le pâté à sa droite, juste avant le carrefour, est blanc ».

## Solution

**Étape 1 : colorier les pâtés de maisons.** Les $n$ rues découpent le plan en régions, qu'on
appelle des pâtés. Aucune rue ne traverse un pâté, donc tous les points d'un même pâté sont du même
côté de chaque rue.

Fixons un pâté $P$. Pour un pâté $Q$, on compte le nombre de rues qui séparent $Q$ de $P$,
c'est-à-dire qui laissent $P$ d'un côté et $Q$ de l'autre. On colorie $Q$ en **blanc** si ce nombre
est pair et en **noir** s'il est impair.

Deux pâtés voisins, c'est-à-dire qui ont en commun un bout de rue sur leur bord, sont du même côté
de toutes les rues sauf de celle-là. Leurs nombres diffèrent donc de $1$ exactement, et
**deux pâtés voisins ont des couleurs différentes**.

**Étape 2 : les couleurs autour d'un carrefour.** Au carrefour $I$ de deux rues $s$ et $t$, il y a
quatre pâtés. En tournant autour de $I$, chacun est voisin du suivant, donc les couleurs alternent :
blanc, noir, blanc, noir. En particulier, deux pâtés opposés par le sommet $I$ ont la même couleur,
et deux pâtés côte à côte ont des couleurs différentes.

**Étape 3 : la règle.** Une voiture qui roule sur une rue et arrive à un carrefour regarde le pâté
situé à sa droite juste avant le carrefour. **Sa rue est prioritaire à ce carrefour si ce pâté est
blanc.**

Il faut vérifier que cette règle a un sens.

- *Les deux sens de circulation donnent la même réponse.* Sur la rue $s$, une voiture qui arrive à
  $I$ dans un sens et une voiture qui arrive dans l'autre sens ont à leur droite deux pâtés opposés
  par le sommet $I$. Ils ont la même couleur.
- *Une seule des deux rues est prioritaire.* Une voiture qui arrive à $I$ par la rue $t$ a à sa
  droite un pâté qui est côte à côte avec celui qu'a à sa droite une voiture arrivant par $s$. Ils
  ont des couleurs différentes : une rue a le blanc, l'autre le noir.

La règle désigne donc, à chaque carrefour, exactement une rue prioritaire.

**Étape 4 : deux carrefours consécutifs.** Soient $I$ et $J$ deux carrefours consécutifs sur la rue
$s$, la rue $t$ passant par $I$. Une voiture roule sur $s$ en allant de $I$ vers $J$.

- Juste avant $I$, le pâté à sa droite est un pâté $R'$.
- Entre $I$ et $J$, il n'y a pas d'autre carrefour, donc le long de ce bout de rue elle a à sa
  droite un seul et même pâté $R$. C'est le pâté à sa droite juste avant $J$.

Les pâtés $R'$ et $R$ sont du même côté de $s$, de part et d'autre de la rue $t$ : ils sont
voisins par un bout de $t$, donc de couleurs différentes. Par la règle, la rue $s$ est prioritaire
à un seul des deux carrefours $I$ et $J$.

**Conclusion.** En coloriant les pâtés de maisons en blanc et noir selon la parité du nombre de rues
qui les séparent d'un pâté fixé, puis en donnant la priorité à la rue qui a un pâté blanc à sa
droite juste avant le carrefour, aucune rue n'est prioritaire à deux carrefours consécutifs.
