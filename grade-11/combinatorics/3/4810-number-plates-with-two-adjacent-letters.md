---
id: "4810"
title: "Les plaques à deux lettres voisines"
grade: 11
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [denombrement, principe-multiplicatif, positions, regroupement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Essential Counting Strategies (Kevin Wang)"
  reference: "handoutId11-0.pdf, exercice 5"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/handoutId11-0.pdf"
---

## Statement

Dans un pays imaginaire, une plaque d'immatriculation est une suite de six caractères : quatre chiffres (de $0$ à $9$) et deux lettres (parmi les $26$ lettres de l'alphabet).

Les chiffres peuvent se répéter, les lettres aussi, et les six caractères peuvent apparaître dans n'importe quel ordre, à une condition près : **les deux lettres doivent être côte à côte**.

Par exemple $3\,\mathrm{K}\,\mathrm{K}\,7\,0\,2$ et $1\,9\,4\,4\,\mathrm{A}\,\mathrm{B}$ sont des plaques valides, mais $\mathrm{A}\,1\,2\,\mathrm{B}\,3\,4$ ne l'est pas.

Combien de plaques différentes peut-on former ?

## Hints

1. Traite le couple de lettres comme un seul objet, un « bloc » qui occupe deux cases voisines.
2. Combien de places ce bloc peut-il occuper dans une rangée de six cases ? Fais la liste : cases $1$-$2$, cases $2$-$3$, etc.
3. Une fois la position du bloc fixée, les quatre cases restantes reçoivent chacune un chiffre, indépendamment les unes des autres.
4. N'oublie pas que le bloc lui-même contient deux lettres qui peuvent différer, et que l'ordre des deux lettres compte : $\mathrm{AB}$ et $\mathrm{BA}$ donnent deux plaques différentes.

## Solution

**L'idée : coller les deux lettres ensemble.**

Les deux lettres occupent deux cases voisines de la rangée de six cases. On construit une plaque en trois choix successifs, indépendants les uns des autres.

**Choix 1 : où est le bloc de lettres ?**

Les deux cases voisines possibles sont
$$(1,2), \quad (2,3), \quad (3,4), \quad (4,5), \quad (5,6),$$
soit $5$ positions.

**Choix 2 : quelles lettres ?**

La première case du bloc reçoit l'une des $26$ lettres, la seconde également, et les répétitions sont permises. Cela fait
$$26 \times 26 = 676 \text{ possibilités.}$$
(L'ordre compte : la plaque $\ldots \mathrm{A}\,\mathrm{B} \ldots$ n'est pas la plaque $\ldots \mathrm{B}\,\mathrm{A} \ldots$)

**Choix 3 : quels chiffres ?**

Les quatre cases qui restent reçoivent chacune un chiffre parmi $10$, indépendamment, donc
$$10^4 = 10\,000 \text{ possibilités.}$$

**On multiplie.** Par le principe multiplicatif,
$$5 \times 676 \times 10\,000 = 33\,800\,000 .$$

$$\boxed{\text{Il y a } 33\,800\,000 \text{ plaques possibles.}}$$

**Pourquoi on ne compte pas deux fois la même plaque.** Sur une plaque valide, les deux lettres occupent une paire de cases voisines bien déterminée, et cette paire ne peut pas être décrite de deux façons. À chaque plaque correspond donc un seul triplet (position du bloc, lettres, chiffres), et réciproquement.

## Going further

1. Combien y aurait-il de plaques si les deux lettres n'avaient **pas** l'obligation d'être voisines ? Vérifie que le résultat est plus grand, et calcule la proportion de plaques où les lettres sont voisines.
2. Reprends le problème avec l'obligation supplémentaire que les deux lettres soient différentes.
3. Et si la plaque comptait trois lettres devant rester toutes les trois côte à côte, et trois chiffres ?
