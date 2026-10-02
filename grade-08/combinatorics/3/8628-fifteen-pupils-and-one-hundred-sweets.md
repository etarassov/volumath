---
id: "8628"
title: "Quinze élèves et cent bonbons"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [tiroirs, raisonnement-par-l-absurde, somme-des-premiers-entiers]
adapted_from: null
see_also: ["7656"]
same_as: ["8522"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, « Principe des tiroirs » (Maena), exercice 12"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Au goûter, les quinze élèves du groupe se sont partagé cent bonbons. Chacun a pris un certain nombre de bonbons, éventuellement aucun, et il n'en reste plus.

Démontrer qu'il y a au moins deux élèves qui ont pris le même nombre de bonbons.

## Hints

1. Raisonne par l'absurde : suppose que les quinze élèves ont tous pris un nombre **différent** de bonbons.
2. Quinze entiers positifs ou nuls tous différents : quel est le plus petit total possible ?
3. Range-les dans l'ordre croissant. Le plus petit vaut au moins $0$, le suivant au moins $1$, le suivant au moins $2$...
4. Calcule $0 + 1 + 2 + \cdots + 14$ et compare à $100$.

## Solution

**L'hypothèse absurde.** Supposons que les quinze élèves aient tous pris un nombre différent de bonbons.

**Minorer le total.** Rangeons les quinze nombres dans l'ordre croissant et appelons-les $n_1 < n_2 < \cdots < n_{15}$. Ce sont des entiers positifs ou nuls, tous différents. Donc

$$n_1 \geqslant 0, \qquad n_2 \geqslant 1, \qquad n_3 \geqslant 2, \qquad \ldots, \qquad n_{15} \geqslant 14 ,$$

car chacun est un entier strictement plus grand que le précédent.

En additionnant ces quinze minorations :

$$n_1 + n_2 + \cdots + n_{15} \;\geqslant\; 0 + 1 + 2 + \cdots + 14 \;=\; \frac{14 \times 15}{2} \;=\; 105 .$$

**La contradiction.** Les quinze élèves auraient donc pris au moins $105$ bonbons en tout. Or ils n'en ont partagé que $100$, et $105 > 100$.

**Conclusion.** L'hypothèse était absurde : deux élèves au moins ont pris le même nombre de bonbons.

## Going further

Remarque que le résultat tient de justesse : avec $105$ bonbons au lieu de $100$, il devient faux, puisque les élèves peuvent prendre $0, 1, 2, \ldots, 14$ bonbons.

Le même raisonnement répond à une question plus fine : quel est le plus grand nombre de bonbons qu'on puisse partager entre quinze élèves de sorte qu'ils en aient tous des quantités différentes, s'il n'y a que $100$ bonbons ? Et combien d'élèves au maximum peuvent avoir des quantités deux à deux différentes ?
