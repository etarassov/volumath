---
id: "7134"
title: "Quatre mille points, mille quadrilatères"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [geometrie combinatoire, ordre, construction, convexite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2013"
  reference: "stage_junior_2013.pdf, « Avancés : un peu de géométrie combinatoire », mercredi après-midi (Pierre Bornsztein), exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2013.pdf"
---

## Statement

On donne $4000$ points du plan, trois quelconques d'entre eux n'étant jamais alignés.

Montrer qu'on peut construire $1000$ quadrilatères deux à deux disjoints (c'est-à-dire qui ne
se touchent pas), non nécessairement convexes, et dont les sommets sont les points donnés.

Chaque point doit servir de sommet à exactement un quadrilatère.

## Hints

1. Le problème semble difficile parce que les points sont placés n'importe comment. Cherche
   un moyen de les **ranger** dans un ordre.
2. Choisis un axe et range les points selon leur abscisse. Pourquoi peut-on supposer que
   toutes les abscisses sont différentes ?
3. Une fois les points rangés, groupe-les par paquets de quatre, en suivant l'ordre. Où se
   trouve chaque paquet dans le plan ?
4. Il reste deux choses à vérifier : que quatre points sans trois alignés forment toujours un
   quadrilatère, et que deux paquets consécutifs ne se gênent pas.

## Solution

**On range les points.** Choisissons un repère. Deux des $4000$ points pourraient avoir la
même abscisse, mais cela se corrige : il n'y a qu'un nombre fini de directions « mauvaises »
(celles des droites joignant deux des points), alors qu'il y a une infinité de directions
possibles pour l'axe des ordonnées. On peut donc choisir le repère de sorte que **les $4000$
abscisses soient deux à deux distinctes**.

Numérotons alors les points $P_1, P_2, \ldots, P_{4000}$ par abscisses croissantes.

**On forme les paquets.** Pour chaque $i$ de $1$ à $1000$, regroupons les quatre points

$$P_{4i-3}, \quad P_{4i-2}, \quad P_{4i-1}, \quad P_{4i} .$$

Chaque point appartient à exactement un paquet, et il y a bien $1000$ paquets.

**Chaque paquet forme un quadrilatère.** Prenons quatre points dont trois ne sont jamais
alignés. Deux cas se présentent.

- Si leur enveloppe convexe est un quadrilatère, ils en sont les quatre sommets et c'est un
  quadrilatère convexe.
- Sinon, l'enveloppe convexe est un triangle, disons $XYZ$, et le quatrième point $T$ est à
  l'intérieur. On obtient alors un quadrilatère non convexe en le parcourant $X$, $Y$, $T$,
  $Z$ : ses côtés ne se coupent pas, puisque $T$ est à l'intérieur du triangle.

Dans les deux cas, les quatre points sont les sommets d'un quadrilatère, éventuellement non
convexe. C'est exactement ce que l'énoncé autorise.

**Les quadrilatères ne se touchent pas.** Le quadrilatère construit sur un paquet est contenu
dans l'enveloppe convexe de ses quatre points, donc dans la bande verticale

$$x_{4i-3} \leqslant x \leqslant x_{4i}$$

où $x_j$ désigne l'abscisse de $P_j$. Or, pour deux paquets consécutifs,

$$x_{4i} < x_{4i+1} ,$$

puisque les abscisses sont rangées dans l'ordre strictement croissant. Les bandes verticales
associées aux $1000$ paquets sont donc deux à deux disjointes, et les quadrilatères aussi.

**Conclusion.** La construction fournit $1000$ quadrilatères deux à deux disjoints dont les
sommets sont exactement les $4000$ points donnés.

## Going further

L'idée à retenir est celle de la **séparation par bandes**. Quand des objets géométriques
sont placés sans aucun ordre, il est souvent payant de les ranger le long d'une direction
bien choisie : la géométrie du problème devient alors un problème d'ordre sur une droite,
qui est beaucoup plus simple.

L'astuce du choix du repère mérite aussi qu'on s'y arrête. On n'a pas « supposé » que les
abscisses étaient distinctes : on l'a **obtenu**, en remarquant qu'un nombre fini de
directions étaient interdites et qu'il en restait une infinité.
