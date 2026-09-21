---
id: "7219"
title: "Trois fourmis et l'aire qui ne change pas"
grade: 10
theme: geometry
difficulty: 4
duration_min: 30
tags: [invariant, aire, triangle, droites paralleles]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Dernier jour : test final », Avancés, exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

Trois fourmis se promènent dans le plan muni d'un repère. Au départ, elles occupent les points de
coordonnées
$$(0\,;0), \qquad (0\,;1), \qquad (1\,;0) .$$

Chaque minute, une seule fourmi bouge. Elle se déplace en suivant une droite **parallèle** à la
droite qui relie ses deux camarades. Elle peut aller aussi loin qu'elle veut, dans un sens ou dans
l'autre, et s'arrêter où elle veut sur cette droite — y compris en un point dont les coordonnées
ne sont pas entières.

Les fourmis peuvent-elles, au bout d'un certain nombre de minutes, occuper les points
$$(0\,;-1), \qquad (0\,;1), \qquad (1\,;0) \;?$$

## Hints

1. Trois fourmis, trois points : elles forment un triangle. Que devient ce triangle quand une
   fourmi se déplace ?
2. L'aire d'un triangle se calcule comme « base fois hauteur divisé par deux ». Prends pour base
   le segment qui relie les deux fourmis immobiles.
3. Quand la troisième fourmi se déplace parallèlement à cette base, qu'advient-il de la hauteur ?
4. Calcule l'aire du triangle de départ, puis celle du triangle d'arrivée.

## Solution

**L'invariant : l'aire du triangle.**

À chaque instant, les trois fourmis occupent trois points ; appelons $A$, $B$, $C$ ces points.

Supposons que la fourmi en $C$ se déplace et arrive en $C'$. Par la règle du jeu, la droite
$(CC')$ est parallèle à la droite $(AB)$.

Calculons l'aire des triangles $ABC$ et $ABC'$ en prenant $[AB]$ pour base dans les deux cas :
$$\text{aire}(ABC) = \frac{AB \times h}{2}, \qquad
\text{aire}(ABC') = \frac{AB \times h'}{2},$$
où $h$ est la distance de $C$ à la droite $(AB)$ et $h'$ celle de $C'$ à $(AB)$.

Or $C$ et $C'$ sont sur une même droite parallèle à $(AB)$, et tous les points d'une droite
parallèle à $(AB)$ sont à la même distance de $(AB)$. Donc $h = h'$, et
$$\text{aire}(ABC') = \text{aire}(ABC) .$$

**L'aire du triangle formé par les trois fourmis ne change donc jamais.**

**L'aire de départ.**

Les points $(0\,;0)$, $(0\,;1)$ et $(1\,;0)$ forment un triangle rectangle dont les deux côtés de
l'angle droit mesurent $1$. Son aire vaut
$$\frac{1 \times 1}{2} = \frac{1}{2} .$$

**L'aire d'arrivée.**

Les points $(0\,;-1)$, $(0\,;1)$ et $(1\,;0)$ forment un triangle de base $[(0\,;-1),(0\,;1)]$,
portée par l'axe des ordonnées, de longueur $2$. La hauteur issue de $(1\,;0)$ est sa distance à
cet axe, c'est-à-dire $1$. L'aire vaut donc
$$\frac{2 \times 1}{2} = 1 .$$

**Conclusion.**

$\dfrac{1}{2} \neq 1$ : les deux configurations n'ont pas la même aire.

**Non, les fourmis ne peuvent pas atteindre cette position.**

## Going further

Cet exercice existe aussi en version « sauterelles sur les points à coordonnées entières », où
l'on impose en plus aux fourmis d'atterrir sur des points à coordonnées entières. L'invariant est
alors encore plus fort : non seulement l'aire est conservée, mais le réseau de points atteignables
l'est aussi.

Remarquons enfin qu'un invariant ne répond qu'à une moitié de la question. Ici il prouve qu'une
position est inatteignable. Pour prouver qu'une autre position est atteignable, il faudrait
exhiber une suite de déplacements.
