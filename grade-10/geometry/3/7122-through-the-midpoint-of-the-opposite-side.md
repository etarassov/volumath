---
id: "7122"
title: "Une droite qui passe par le milieu du côté opposé"
grade: 10
theme: geometry
difficulty: 3
duration_min: 35
tags: [vecteurs, parallelogramme, alignement, milieux]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2014"
  reference: "stage_junior_2014.pdf, « Exercices d'échauffement », exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Soit $ABCD$ un parallélogramme. Soit $M$ un point du segment $[AD]$, différent de $A$, et
soit $N$ le milieu de $[AM]$.

Les droites $(BM)$ et $(CN)$ se coupent en un point $P$.

Montrer que la droite $(AP)$ passe par le milieu de $[CD]$.

## Hints

1. Prends $\vec{u} = \vec{AB}$ et $\vec{v} = \vec{AD}$ comme repère : ces deux vecteurs ne
   sont pas colinéaires, donc tout vecteur du plan s'écrit d'une seule façon sous la forme
   $x\vec u + y \vec v$.
2. Écris $\vec{AM} = t\,\vec v$ avec $0 < t \leqslant 1$. Exprime alors $\vec{AN}$ et
   $\vec{AC}$ dans ce repère.
3. Le point $P$ est sur $(BM)$, donc $\vec{AP} = \vec{AB} + s\,\vec{BM}$ pour un certain
   nombre $s$. Il est aussi sur $(CN)$, donc $\vec{AP} = \vec{AC} + r\,\vec{CN}$. Écris les
   deux expressions dans le repère et identifie les coefficients.
4. Une fois $\vec{AP}$ connu, calcule $\vec{AQ}$ où $Q$ est le milieu de $[CD]$, et compare.

## Solution

**Le repère.** Posons $\vec u = \vec{AB}$ et $\vec v = \vec{AD}$. Comme $ABCD$ est un
parallélogramme non aplati, ces deux vecteurs ne sont pas colinéaires : tout vecteur du plan
s'écrit alors d'une seule façon $x \vec u + y \vec v$, ce qui autorise à **identifier les
coefficients** dans une égalité.

Comme $ABCD$ est un parallélogramme, $\vec{AC} = \vec{AB} + \vec{AD} = \vec u + \vec v$.

Le point $M$ est sur $[AD]$, donc $\vec{AM} = t\,\vec v$ pour un nombre $t$ avec
$0 < t \leqslant 1$. Comme $N$ est le milieu de $[AM]$,

$$\vec{AN} = \frac{t}{2}\,\vec v .$$

**Le point $P$, vu depuis $(BM)$.** Il existe un nombre $s$ tel que

$$\vec{AP} = \vec{AB} + s\,\vec{BM} = \vec u + s\big(t\vec v - \vec u\big) = (1-s)\,\vec u + st\,\vec v .$$

**Le point $P$, vu depuis $(CN)$.** Il existe un nombre $r$ tel que

$$\vec{AP} = \vec{AC} + r\,\vec{CN} = (\vec u + \vec v) + r\left(\frac{t}{2}\vec v - \vec u - \vec v\right)
= (1-r)\,\vec u + \left(1 - r + \frac{rt}{2}\right)\vec v .$$

**On identifie.** Les deux écritures représentent le même vecteur, donc les coefficients
coïncident :

$$1 - s = 1 - r \qquad \text{et} \qquad st = 1 - r + \frac{rt}{2} .$$

La première égalité donne $s = r$. En reportant dans la seconde :

$$rt = 1 - r + \frac{rt}{2}, \qquad \text{donc} \qquad \frac{rt}{2} = 1 - r,
\qquad \text{donc} \qquad r\left(\frac{t}{2} + 1\right) = 1 .$$

D'où

$$r = \frac{2}{t+2} .$$

**Le vecteur $\vec{AP}$.** En remplaçant $s = r$ par cette valeur :

$$\vec{AP} = \left(1 - \frac{2}{t+2}\right)\vec u + \frac{2}{t+2}\,t\,\vec v
= \frac{t}{t+2}\,\vec u + \frac{2t}{t+2}\,\vec v = \frac{t}{t+2}\left(\vec u + 2\vec v\right).$$

**Le milieu de $[CD]$.** Appelons $Q$ ce milieu. Alors

$$\vec{AQ} = \frac{\vec{AC} + \vec{AD}}{2} = \frac{(\vec u + \vec v) + \vec v}{2}
= \frac{1}{2}\left(\vec u + 2\vec v\right).$$

**Conclusion.** Les deux vecteurs $\vec{AP}$ et $\vec{AQ}$ sont tous deux des multiples du
même vecteur $\vec u + 2\vec v$ :

$$\vec{AP} = \frac{2t}{t+2}\;\vec{AQ} .$$

Ils sont donc colinéaires, ce qui signifie que $A$, $P$ et $Q$ sont alignés. **La droite
$(AP)$ passe bien par le milieu de $[CD]$.**

## Going further

Remarquons que la droite $(AP)$ ne dépend pas de $t$ : quelle que soit la position de $M$
sur $[AD]$, le point $P$ se déplace, mais toujours sur la même droite, celle qui joint $A$ au
milieu de $[CD]$. Le coefficient $\dfrac{2t}{t+2}$ dit seulement **où** sur cette droite.

Quand $t$ vaut $1$, c'est-à-dire quand $M = D$, on trouve $\dfrac{2}{3}$ : le point $P$ est
alors aux deux tiers de $[AQ]$ à partir de $A$. Reconnais-tu cette situation ? $Q$ est le
milieu de $[CD]$ et $N$ le milieu de $[AD]$ : le point $P$ est le centre de gravité du
triangle $ACD$.
