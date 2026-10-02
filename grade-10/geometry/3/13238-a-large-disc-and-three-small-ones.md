---
id: "13238"
title: "Un grand disque et trois petits"
grade: 10
theme: geometry
difficulty: 3
duration_min: 25
tags: [aire, disque, secteur-circulaire, triangle-equilateral]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2017, premier tour"
  reference: "2017-10_coupe_automne_2017_elim.pdf, exercices communs, exercice 12 ; réponse (84) dans 2017-10_coupe_automne_2017_elim_college.pdf et 2017-10_coupe_automne_2017_elim_lycee.pdf, pas de corrigé rédigé. L'original demande l'entier a tel que (S − aπ)² soit entier ; on demande ici directement S, qui vaut 84π − 36√3."
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/coupe_automne_2017_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-10_coupe_automne_2017_elim.pdf"
---

## Statement

Soient $A$, $B$, $C$, $D$, $E$ cinq points alignés dans cet ordre, tels que $AB = BC = CD = DE = 6$.

On note $S$ l'aire de la zone située à l'intérieur du disque de centre $C$ passant par $A$, et à l'extérieur des trois disques de centres $B$, $C$, $D$ et de rayon $6$.

Calculer la valeur exacte de $S$.

## Hints

1. Fais la figure. Quel est le rayon du grand disque ? Les petits disques sont-ils dedans ?
2. Les disques de centres $B$ et $D$ ont-ils une partie commune ? Et les disques de centres $B$ et $C$ ?
3. Les deux cercles de centres $B$ et $C$ se coupent en deux points $P$ et $P'$. Quelle est la nature du triangle $BCP$ ?
4. La partie commune aux disques $B$ et $C$ est faite de deux morceaux. Chacun est un secteur de $120^\circ$ moins un triangle.

## Solution

**Le grand disque.** Il a pour centre $C$ et passe par $A$, donc son rayon est $CA = 12$ et son aire $144\pi$. Chaque petit disque est dedans : par exemple, un point à distance au plus $6$ de $B$ est à distance au plus $6 + 6 = 12$ de $C$. Il suffit donc de calculer l'aire $U$ de la réunion des trois petits disques, puis $S = 144\pi - U$.

**Les parties communes.** Chaque petit disque a pour aire $36\pi$.

- Les disques de centres $B$ et $D$ ont leurs centres à distance $12 = 6 + 6$ : ils se touchent seulement au point $C$, sans partie commune.
- Les disques de centres $B$ et $C$ ont une partie commune, une « lentille ». De même pour $C$ et $D$, et les deux lentilles ont la même aire $L$.

Les deux lentilles ne se chevauchent pas, puisque les disques $B$ et $D$ n'ont rien en commun. En additionnant les trois aires, chaque lentille est comptée deux fois, donc

$$U = 3 \times 36\pi - 2L = 108\pi - 2L.$$

**L'aire d'une lentille.** Les cercles de centres $B$ et $C$ ont pour rayon $6$ et se coupent en deux points $P$ et $P'$. Comme $BP = CP = BC = 6$, le triangle $BCP$ est équilatéral, de même que $BCP'$. Donc $\widehat{PBP'} = 60^\circ + 60^\circ = 120^\circ$.

La lentille est coupée par le segment $[PP']$ en deux morceaux de même aire. Le morceau situé du côté de $C$ est le secteur du disque de centre $B$ d'angle $120^\circ$, moins le triangle $BPP'$.

- L'aire du secteur est le tiers de celle du disque : $\frac{36\pi}{3} = 12\pi$.
- Le segment $[PP']$ coupe $[BC]$ perpendiculairement en son milieu $H$. On a $BH = 3$ et, par le théorème de Pythagore dans $BHP$, $PH^2 = 36 - 9 = 27$, donc $PH = 3\sqrt{3}$ et $PP' = 6\sqrt{3}$. L'aire du triangle $BPP'$ vaut $\frac{1}{2} \times 6\sqrt{3} \times 3 = 9\sqrt{3}$.

Donc chaque morceau a pour aire $12\pi - 9\sqrt{3}$, et $L = 24\pi - 18\sqrt{3}$.

**Le résultat.** $U = 108\pi - 48\pi + 36\sqrt{3} = 60\pi + 36\sqrt{3}$, puis

$$S = 144\pi - 60\pi - 36\sqrt{3} = 84\pi - 36\sqrt{3}.$$

**Conclusion.** $S = 84\pi - 36\sqrt{3}$, environ 201,5.

## Going further

L'énoncé original demandait l'entier $a$ tel que $(S - a\pi)^2$ soit un entier. Avec $a = 84$, on trouve $(S - 84\pi)^2 = (36\sqrt{3})^2 = 3888$.
