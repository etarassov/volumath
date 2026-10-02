---
id: "8339"
title: "Deux points de la même couleur à distance 1"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 25
tags: [principe-des-tiroirs, coloriage, triangle-equilateral, geometrie-combinatoire]
adapted_from: null
see_also: []
same_as: ["7716"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, cours du Groupe B"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe B, « Principes des tiroirs et de l'extrémum » (Pierre-Marie), exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

Chaque point d'un carré de côté $2$ est colorié soit en rouge, soit en bleu. Le coloriage est
totalement quelconque : il n'obéit à aucune règle, il n'a pas besoin d'être « régulier » ni de
former des zones.

Montrer qu'il existe forcément deux points de la même couleur distants d'exactement $1$.

## Hints

1. Il y a une infinité de points dans le carré : il est hors de question de les examiner tous. Il faut trouver un petit nombre de points bien placés.
2. Combien de points faut-il pour être sûr que deux d'entre eux aient la même couleur, s'il n'y a que deux couleurs ?
3. Trois points suffisent, par le principe des tiroirs. Mais il faut que **n'importe lesquels deux** d'entre eux soient à distance $1$.
4. Quelle figure a trois sommets deux à deux à la même distance ?
5. Vérifie qu'un tel triangle tient bien dans un carré de côté $2$.

## Solution

**L'idée : un triangle équilatéral de côté 1.**

Plaçons le carré dans un repère, avec ses sommets en $(0\,;0)$, $(2\,;0)$, $(2\,;2)$ et
$(0\,;2)$.

Considérons les trois points

$$A = (0\,;0) , \qquad B = (1\,;0) , \qquad C = \left(\frac12\,;\, \frac{\sqrt3}{2}\right) .$$

*Ils sont bien dans le carré.* Leurs abscisses valent $0$, $1$ et $\tfrac12$, toutes comprises
entre $0$ et $2$ ; leurs ordonnées valent $0$, $0$ et $\tfrac{\sqrt3}{2} \approx \text{0,87}$, elles
aussi comprises entre $0$ et $2$.

*Ils forment un triangle équilatéral de côté $1$.* En effet :

$$AB = 1 ,$$
$$AC = \sqrt{\left(\tfrac12\right)^2 + \left(\tfrac{\sqrt3}{2}\right)^2} = \sqrt{\tfrac14 + \tfrac34} = \sqrt 1 = 1 ,$$
$$BC = \sqrt{\left(1 - \tfrac12\right)^2 + \left(\tfrac{\sqrt3}{2}\right)^2} = \sqrt{\tfrac14 + \tfrac34} = 1 .$$

**Le principe des tiroirs.**

Les trois points $A$, $B$, $C$ sont coloriés chacun en rouge ou en bleu. Il y a donc $3$
chaussettes pour $2$ tiroirs : deux de ces trois points ont la même couleur.

Or ces deux points, quels qu'ils soient parmi $A$, $B$, $C$, sont distants d'exactement $1$.

**Conclusion.** Il existe toujours deux points de la même couleur distants de $1$.

## Going further

Remarquons que l'énoncé n'a presque pas servi : on n'a utilisé du carré que le fait qu'il
contient un triangle équilatéral de côté $1$. Le résultat vaut donc pour n'importe quelle figure
assez grande, et en particulier pour le plan tout entier.

Le vrai problème derrière celui-ci est célèbre et encore ouvert. On appelle **nombre chromatique
du plan** le plus petit nombre de couleurs nécessaires pour colorier tous les points du plan sans
que deux points à distance $1$ aient la même couleur. L'exercice montre qu'il en faut au moins
$3$. On sait depuis 1950 qu'il en faut au plus $7$, et depuis 2018 qu'il en faut au moins $5$.
Personne ne sait si la réponse est $5$, $6$ ou $7$.
