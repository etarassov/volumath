---
id: "4604"
title: "Deux points de même couleur à un mètre"
grade: 8
theme: geometry
difficulty: 3
duration_min: 15
tags: [tiroirs, couleurs, triangle equilateral, demonstration]
adapted_from: null
see_also: ["4616"]
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Beginners Circle, Pigeonhole Principle"
  reference: "Handout-582-703.pdf, problème 9 (réponse dans Handout-583-703.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-582-703.pdf"
---

## Statement

On peint tous les points du plan, chacun en rouge ou en bleu. On ne sait pas comment : le
coloriage peut être aussi compliqué et aussi irrégulier qu'on veut.

Montrer qu'il existe toujours deux points de la même couleur distants d'exactement $1$ mètre.

## Hints

1. Tu ne peux pas décrire le coloriage, tu ne le connais pas. Cherche plutôt une petite figure
   dont les sommets sont deux à deux à $1$ mètre l'un de l'autre.
2. Combien de points faut-il pour être sûr que deux d'entre eux ont la même couleur, quand il
   n'y a que deux couleurs ?
3. Existe-t-il trois points du plan tous distants de $1$ mètre deux à deux ?

## Solution

**L'idée : un triangle équilatéral de côté 1 mètre.**

Traçons dans le plan un triangle équilatéral $ABC$ dont le côté mesure exactement $1$ mètre.
On peut le placer n'importe où, cela n'a aucune importance.

**Deux de ses sommets ont la même couleur.**

Les trois sommets $A$, $B$, $C$ sont coloriés, chacun en rouge ou en bleu. Trois points pour
deux couleurs : par le principe des tiroirs, deux au moins de ces trois sommets ont la même
couleur.

**Conclusion.**

Appelons-les $P$ et $Q$. Ce sont deux sommets du triangle équilatéral $ABC$, donc
$$PQ = 1 \text{ mètre},$$
et ils sont de la même couleur. On a bien trouvé deux points de même couleur distants
d'exactement $1$ mètre.

Remarquons que le raisonnement n'utilise rien du coloriage : il marche quel que soit ce dernier.

## Going further

Le nombre $1$ n'a rien de spécial : pour n'importe quelle distance $d$, il suffit de prendre un
triangle équilatéral de côté $d$. Il existe donc, pour toute distance $d$, deux points de même
couleur distants exactement de $d$.

En revanche, la question devient très difficile dès qu'on autorise plus de couleurs. On sait
qu'avec quatre couleurs le résultat reste vrai (ce n'a été démontré qu'en 2018), et qu'avec sept
couleurs il devient faux : il existe un coloriage du plan en sept couleurs où deux points de même
couleur ne sont jamais à distance exactement $1$. Avec cinq ou six couleurs, personne ne sait
encore. C'est le problème de Hadwiger-Nelson, ouvert depuis 1950.
