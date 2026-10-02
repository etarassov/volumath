---
id: "7143"
title: "Découper un carré en n carrés"
grade: 11
theme: geometry
difficulty: 4
duration_min: 40
tags: [recurrence, decoupage, carres, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2013"
  reference: "stage_junior_2013.pdf, « Débutants : stratégies de base », mercredi après-midi (Pierre Bertin), exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2013.pdf"
---

## Statement

Montrer que pour tout entier $n > 5$, il est possible de découper un carré en $n$ carrés plus
petits. Ces carrés n'ont pas besoin d'avoir tous la même taille.

## Hints

1. Commence par les petites valeurs. Trouve un découpage en $6$ carrés, un en $7$, un en $8$.
2. Cherche maintenant une opération qui, partant d'un découpage, en fabrique un autre avec
   quelques carrés de plus. Que se passe-t-il si tu coupes **un seul** des carrés en quatre ?
3. Combien de carrés ajoute cette opération ?
4. Avec les trois cas de départ et cette opération, tu atteins tous les entiers à partir
   d'un certain rang. Vérifie qu'aucun n'est oublié.

## Solution

**L'opération clé.** Partons d'un découpage d'un carré en $k$ carrés. Choisissons l'un
d'eux, et coupons-le en quatre carrés égaux en traçant ses deux médianes. On obtient alors un
découpage en

$$k - 1 + 4 = k + 3$$

carrés. **On sait donc passer de $k$ à $k+3$.**

**Les trois points de départ.** Il suffit maintenant de savoir faire $n = 6$, $n = 7$ et
$n = 8$ : à partir de là, on atteindra $9, 10, 11$, puis $12, 13, 14$, et ainsi de suite.

*Cas $n = 6$.* Partons du carré de côté $3$, découpé en une grille de $9$ carrés de côté $1$.
Regroupons quatre d'entre eux, formant un coin, en un seul carré de côté $2$. Il reste
$9 - 4 = 5$ carrés de côté $1$, plus le carré de côté $2$, soit $6$ carrés en tout.

*Cas $n = 7$.* Partons du découpage en $4$ carrés égaux (la grille $2 \times 2$) et coupons
l'un d'eux en quatre : on obtient $4 - 1 + 4 = 7$ carrés.

*Cas $n = 8$.* Partons du carré de côté $4$ et plaçons dans un coin un carré de côté $3$. Le
coude restant, d'épaisseur $1$ et d'aire $7$, se découpe en $7$ carrés de côté $1$. Cela fait
$1 + 7 = 8$ carrés.

**La récurrence.** Montrons par récurrence forte que tout entier $n \geqslant 6$ convient.

*Initialisation.* Les cas $n = 6$, $7$, $8$ viennent d'être traités.

*Hérédité.* Soit $n \geqslant 9$, et supposons le résultat acquis pour tous les entiers
compris entre $6$ et $n-1$. Comme $n \geqslant 9$, on a $n - 3 \geqslant 6$, donc le résultat
vaut pour $n-3$ : il existe un découpage en $n - 3$ carrés. L'opération clé le transforme en
un découpage en $n$ carrés.

**Conclusion.** Pour tout $n > 5$, on peut découper un carré en $n$ carrés plus petits.

## Going further

Et pour $n \leqslant 5$ ? Le cas $n = 1$ est exclu par l'énoncé (« plus petits »), et
$n = 4$ marche (la grille $2 \times 2$). Les cas $n = 2$, $n = 3$ et $n = 5$ sont en revanche
**impossibles**.

Voici pourquoi, pour $n = 2$ et $n = 3$ : chacun des quatre coins du grand carré appartient à
un carré du découpage, et deux coins différents ne peuvent pas appartenir au même petit carré
sauf si ce petit carré est le grand lui-même. Il faut donc au moins quatre carrés. Le cas
$n = 5$ demande un raisonnement un peu plus long, mais il est lui aussi impossible.

Une question pour continuer : et si l'on exige que les $n$ carrés soient **tous de tailles
différentes** ? C'est le problème du « carré parfait », résolu seulement en 1978 : le plus
petit découpage possible utilise $21$ carrés.
