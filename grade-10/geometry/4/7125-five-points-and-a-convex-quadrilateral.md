---
id: "7125"
title: "Cinq points et un quadrilatère convexe"
grade: 10
theme: geometry
difficulty: 4
duration_min: 35
tags: [convexite, enveloppe-convexe, disjonction-de-cas, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2013"
  reference: "stage_junior_2013.pdf, « Avancés : un peu de géométrie combinatoire », mercredi après-midi (Pierre Bornsztein), exercice 3 (théorème d'Erdős–Szekeres)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2013.pdf"
---

## Statement

On se donne cinq points du plan, trois quelconques d'entre eux n'étant jamais alignés.

Montrer qu'on peut toujours en choisir quatre qui sont les sommets d'un **quadrilatère
convexe**.

*(Un quadrilatère est convexe lorsque, en le parcourant, on tourne toujours dans le même
sens : ses diagonales se coupent à l'intérieur.)*

## Hints

1. Imagine un élastique tendu autour des cinq points, qu'on relâche. Il se referme sur un
   polygone : c'est ce qu'on appelle l'**enveloppe convexe** des cinq points.
2. Quelles formes cette enveloppe peut-elle avoir ? Comme trois points ne sont jamais
   alignés, il n'y a que trois possibilités.
3. Deux de ces trois cas se règlent en une ligne. Concentre-toi sur le troisième.
4. Dans ce troisième cas, deux points sont à l'intérieur d'un triangle. Trace la droite qui
   les joint : où coupe-t-elle le triangle ?

## Solution

Appelons **enveloppe convexe** des cinq points le plus petit polygone convexe qui les
contient tous : c'est la forme que prendrait un élastique tendu autour des cinq clous puis
relâché. Comme trois points ne sont jamais alignés, cette enveloppe est un triangle, un
quadrilatère ou un pentagone, et rien d'autre.

**Cas 1 : l'enveloppe est un pentagone.** Les cinq points en sont les sommets. Prenons-en
quatre au hasard : ils sont les sommets d'un quadrilatère convexe, puisqu'en supprimant un
sommet d'un polygone convexe on obtient encore un polygone convexe. C'est gagné.

**Cas 2 : l'enveloppe est un quadrilatère.** Ses quatre sommets conviennent directement.
C'est gagné.

**Cas 3 : l'enveloppe est un triangle.** Appelons $A$, $B$, $C$ ses sommets, et $D$, $E$ les
deux points restants, qui sont alors **à l'intérieur** du triangle. (Ils ne peuvent pas être
sur un côté : cela ferait trois points alignés.)

Traçons la droite $(DE)$.

Cette droite ne passe par aucun des sommets $A$, $B$, $C$, sinon ce sommet serait aligné avec
$D$ et $E$. Elle traverse donc l'intérieur du triangle, et une droite qui traverse un
triangle sans passer par un sommet coupe exactement **deux** de ses côtés. Quitte à renommer
les sommets, disons qu'elle coupe le côté $]AB[$ en un point $P$ et le côté $]AC[$ en un
point $Q$.

Cette droite partage donc le plan en deux demi-plans : d'un côté le sommet $A$, de l'autre
les deux sommets $B$ et $C$.

Quitte à échanger les noms de $D$ et $E$, supposons que $D$ soit le plus proche de $P$, donc
du côté de $B$. Considérons alors le quadrilatère

$$D \ B \ C \ E ,$$

parcouru dans cet ordre.

Ses quatre sommets sont tous des sommets de sa propre enveloppe convexe :

- $B$ et $C$ sont des sommets du triangle $ABC$, donc des points « extrêmes » de l'ensemble
  des cinq points ; ils le restent pour n'importe quelle partie de cet ensemble qui les
  contient ;
- $D$ et $E$ sont les deux seuls points sur la droite $(DE)$, et $B$, $C$ sont strictement
  d'un même côté de cette droite ; aucun des deux ne peut donc être à l'intérieur du triangle
  formé par les trois autres.

Un ensemble de quatre points dont aucun n'est à l'intérieur du triangle des trois autres
forme exactement un **quadrilatère convexe**. C'est gagné dans le dernier cas aussi.

**Conclusion.** Dans les trois cas, quatre des cinq points forment un quadrilatère convexe.

## Going further

Ce résultat porte le nom de **théorème d'Erdős–Szekeres**, d'après les deux mathématiciens
hongrois qui l'ont démontré en 1935. Ils ont établi bien plus : pour tout entier
$n \geqslant 3$, il existe un nombre $f(n)$ tel que, parmi $f(n)$ points du plan sans trois
alignés, on en trouve toujours $n$ qui forment un polygone convexe.

L'exercice ci-dessus dit que $f(4) = 5$ (et quatre points ne suffisent pas : place un point à
l'intérieur d'un triangle). On sait aussi que $f(5) = 9$ et $f(6) = 17$, ce dernier ayant
demandé une vérification par ordinateur en 2006. La formule conjecturée est

$$f(n) = 2^{\,n-2} + 1 ,$$

et elle n'est toujours pas démontrée en général. Le problème est parfois appelé le
**problème de la fin heureuse**, parce que c'est en y travaillant qu'Esther Klein et George
Szekeres se sont rencontrés, puis mariés.
