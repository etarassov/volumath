---
id: "7241"
title: "Six points dans un rectangle 4 sur 3"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [tiroirs, decoupage, distance, diametre]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2018"
  reference: "Poly_final_CJ18.pdf, « Débutants », mercredi 24 après-midi (Colin Davalo), principe des tiroirs, exercice 4 ; repris en 2024 dans Poly_StCheron_2024.pdf, groupe A, principe des tiroirs (Ysaline), exercice 13"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_final_CJ18.pdf"
---

## Statement

On place six points dans un rectangle de $4$ sur $3$ (bord compris).

Montrer qu'il y en a toujours deux dont la distance est inférieure ou égale à $\sqrt{5}$.

## Hints

1. Six points, et on veut en trouver deux dans une même région : combien de régions faut-il au
   maximum ?
2. Le découpage évident en six rectangles $2 \times 1$ ne marche pas : il donne six régions, une
   de trop. Il faut donc un découpage en **cinq** morceaux.
3. Chaque morceau doit avoir un diamètre au plus $\sqrt{5}$ : deux points quelconques du morceau
   doivent être à distance au plus $\sqrt{5}$. Or $\sqrt{5} = \sqrt{1^2 + 2^2}$ : cherche des
   morceaux « longs de $2$ et larges de $1$ » dans toutes les directions.
4. Essaie un découpage en zigzag, avec des coupes obliques.

## Solution

**Combien de régions ?**

Si l'on découpe le rectangle en $n$ morceaux et qu'aucun ne contient deux points, alors il y a au
plus $n$ points. Avec six points, il faut donc $n \leqslant 5$ pour que le principe des tiroirs
donne quelque chose.

Le découpage naturel en six rectangles $2 \times 1$ donne six morceaux : un de trop. Il faut
trouver un découpage en **cinq** morceaux, dont chacun a la propriété suivante : deux points
quelconques d'un même morceau sont à distance au plus $\sqrt{5}$.

**Le découpage.**

Plaçons un repère dont l'origine est le coin en bas à gauche, l'axe des abscisses le long du côté
de longueur $4$ et l'axe des ordonnées le long du côté de longueur $3$. Traçons les segments
suivants :

- de $(2\,;3)$ à $(2\,;2)$ ;
- de $(2\,;2)$ à $(1\,;1)$, puis de $(1\,;1)$ à $(1\,;0)$ ;
- de $(2\,;2)$ à $(3\,;1)$, puis de $(3\,;1)$ à $(3\,;0)$ ;
- de $(1\,;1)$ à $(0\,;2)$ ;
- de $(3\,;1)$ à $(4\,;2)$.

![Le rectangle 4 sur 3 découpé en cinq morceaux](7241-figure-1.svg)

On obtient cinq morceaux, tous convexes :

1. $(0\,;0)$, $(1\,;0)$, $(1\,;1)$, $(0\,;2)$ ;
2. $(1\,;0)$, $(3\,;0)$, $(3\,;1)$, $(2\,;2)$, $(1\,;1)$ ;
3. $(3\,;0)$, $(4\,;0)$, $(4\,;2)$, $(3\,;1)$ ;
4. $(0\,;2)$, $(1\,;1)$, $(2\,;2)$, $(2\,;3)$, $(0\,;3)$ ;
5. $(2\,;2)$, $(3\,;1)$, $(4\,;2)$, $(4\,;3)$, $(2\,;3)$.

**Chaque morceau a un diamètre au plus $\sqrt{5}$.**

Un polygone est contenu dans l'enveloppe convexe de ses sommets : la plus grande distance entre
deux de ses points est donc atteinte entre deux sommets. Il suffit de vérifier les distances entre
sommets.

*Morceau 1*, de sommets $(0\,;0)$, $(1\,;0)$, $(1\,;1)$, $(0\,;2)$. Les six distances valent
$$1, \quad \sqrt{2}, \quad 2, \quad 1, \quad \sqrt{2}, \quad \sqrt{1+4} = \sqrt{5} .$$
La plus grande est $\sqrt{5}$, entre $(1\,;0)$ et $(0\,;2)$.

*Morceau 2*, de sommets $(1\,;0)$, $(3\,;0)$, $(3\,;1)$, $(2\,;2)$, $(1\,;1)$. Les quatre plus
grandes distances sont
$$(1\,;0) \to (3\,;1), \quad (1\,;0) \to (2\,;2), \quad (3\,;0) \to (2\,;2), \quad
(3\,;0) \to (1\,;1),$$
qui valent toutes $\sqrt{1+4} = \sqrt{5}$ ; toutes les autres valent au plus $2$.

*Morceau 4*, de sommets $(0\,;2)$, $(1\,;1)$, $(2\,;2)$, $(2\,;3)$, $(0\,;3)$. Les quatre plus
grandes distances sont
$$(0\,;3) \to (2\,;2), \quad (1\,;1) \to (2\,;3), \quad (0\,;2) \to (2\,;3), \quad
(1\,;1) \to (0\,;3),$$
qui valent toutes $\sqrt{5}$ ; toutes les autres valent au plus $2$.

*Morceaux 3 et 5.* Le découpage tout entier est symétrique par rapport à la médiatrice verticale
du rectangle, c'est-à-dire la droite d'équation $x = 2$. Cette symétrie échange les morceaux $1$
et $3$, échange les morceaux $4$ et $5$, et laisse le morceau $2$ inchangé. Les morceaux $3$ et
$5$ ont donc respectivement le même diamètre que les morceaux $1$ et $4$, à savoir $\sqrt{5}$.

**Conclusion.**

Les six points se répartissent dans cinq morceaux. Comme $6 > 5$, deux d'entre eux sont dans le
même morceau, donc distants d'au plus $\sqrt{5}$.

**C'est bien ce qu'il fallait démontrer.**

## Going further

Le découpage est juste à la limite : les cinq morceaux ont tous exactement $\sqrt{5}$ pour
diamètre. Ce n'est pas un hasard. Si l'on découpait plus finement, les morceaux seraient plus
petits mais il y en aurait plus de cinq, et le principe des tiroirs ne dirait plus rien.

Le même énoncé avec cinq points dans un carré de côté $2$ et la distance $\sqrt{2}$ est beaucoup
plus facile : il suffit de couper le carré en quatre petits carrés de côté $1$, dont la diagonale
mesure $\sqrt{2}$.
