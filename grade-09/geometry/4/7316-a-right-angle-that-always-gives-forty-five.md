---
id: "7316"
title: "Un angle qui vaut toujours 45°"
grade: 9
theme: geometry
difficulty: 4
duration_min: 35
tags: [bissectrice, triangle-rectangle, triangle-isocele, angles]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2008"
  reference: "stage_ete_2008.pdf, « Les exercices de TPE », exercice 28"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2008.pdf"
---

## Statement

$ABC$ est un triangle rectangle en $A$.

La bissectrice de l'angle $\widehat{B}$ coupe le côté $[AC]$ en $P$. La bissectrice de l'angle $\widehat{C}$ coupe le côté $[AB]$ en $Q$.

On appelle $M$ le pied de la perpendiculaire à $(BC)$ passant par $P$, et $N$ le pied de la perpendiculaire à $(BC)$ passant par $Q$.

![Un triangle rectangle en A avec les deux bissectrices issues de B et de C, et les points M et N sur l'hypoténuse](7316-figure-1.svg)

Que vaut l'angle $\widehat{MAN}$ ?

## Hints

1. Fais plusieurs dessins, avec des triangles rectangles très différents. Mesure l'angle $\widehat{MAN}$ à chaque fois. Que remarques-tu ?
2. Un point situé sur la bissectrice d'un angle est à la même distance des deux côtés de cet angle. Applique cela au point $P$, qui est sur la bissectrice issue de $B$.
3. Tu obtiens $PA = PM$. Que peux-tu dire du triangle $APM$ ?
4. Note $\alpha$ la moitié de l'angle $\widehat{B}$. Calcule l'angle $\widehat{APB}$, puis l'angle $\widehat{APM}$, puis les angles à la base du triangle isocèle $APM$.
5. Tu devrais trouver $\widehat{PAM} = \alpha$. Fais la même chose de l'autre côté, puis additionne, en te rappelant que $\widehat{B} + \widehat{C} = 90°$.

## Solution

**La réponse : $\widehat{MAN} = 45°$, quel que soit le triangle rectangle de départ.**

Notons $2\alpha = \widehat{ABC}$ et $2\gamma = \widehat{ACB}$, de sorte que $\alpha$ et $\gamma$ sont les demi-angles découpés par les bissectrices. Comme le triangle est rectangle en $A$,
$$2\alpha + 2\gamma = 90°, \qquad \text{donc} \qquad \alpha + \gamma = 45° .$$

**Premier calcul : l'angle $\widehat{PAM}$.**

Le point $P$ est sur la bissectrice de l'angle $\widehat{B}$, donc il est à la même distance des deux côtés de cet angle, c'est-à-dire des droites $(BA)$ et $(BC)$. Or la distance de $P$ à $(BA)$ vaut $PA$ (puisque $(BA) \perp (AC)$ et $P \in [AC]$), et sa distance à $(BC)$ vaut $PM$. Donc
$$PA = PM .$$

Le triangle $APM$ est donc **isocèle en $P$**.

Calculons son angle au sommet $\widehat{APM}$.

Dans le triangle $ABP$, rectangle en $A$, on a $\widehat{ABP} = \alpha$, donc
$$\widehat{APB} = 90° - \alpha .$$

Dans le triangle $MBP$, rectangle en $M$, on a $\widehat{MBP} = \alpha$ (c'est le même angle, $P$ étant sur la bissectrice), donc
$$\widehat{BPM} = 90° - \alpha .$$

Les points $A$ et $M$ sont de part et d'autre de la droite $(BP)$, donc
$$\widehat{APM} = \widehat{APB} + \widehat{BPM} = 2(90° - \alpha) = 180° - 2\alpha .$$

Le triangle $APM$ étant isocèle en $P$, ses deux angles à la base sont égaux et valent
$$\widehat{PAM} = \widehat{PMA} = \frac{180° - \widehat{APM}}{2} = \frac{180° - (180° - 2\alpha)}{2} = \alpha .$$

**Deuxième calcul : l'angle $\widehat{QAN}$.**

Le raisonnement est exactement le même en échangeant les rôles de $B$ et de $C$ : le point $Q$ est sur la bissectrice de $\widehat{C}$, donc $QA = QN$, le triangle $AQN$ est isocèle en $Q$, et
$$\widehat{QAN} = \gamma .$$

**On assemble.**

Le point $P$ est sur $[AC]$, donc la demi-droite $[AP)$ est la demi-droite $[AC)$. De même $[AQ)$ est $[AB)$. L'angle $\widehat{BAC} = \widehat{QAP}$ vaut $90°$, et les demi-droites $[AM)$ et $[AN)$ sont à l'intérieur de cet angle, avec $[AN)$ du côté de $B$ et $[AM)$ du côté de $C$. Donc
$$\widehat{MAN} = \widehat{QAP} - \widehat{PAM} - \widehat{QAN} = 90° - \alpha - \gamma .$$

Or $\alpha + \gamma = 45°$. Donc
$$\widehat{MAN} = 90° - 45° = \boxed{45°} .$$

**Conclusion.** L'angle $\widehat{MAN}$ vaut toujours $45°$, quelle que soit la forme du triangle rectangle.

## Going further

1. Vérifie le résultat sur le triangle rectangle de côtés $3$, $4$ et $5$, en calculant les longueurs $AP$, $AQ$ puis les positions de $M$ et de $N$.
2. Montre que $AMN$ n'est en général pas un triangle isocèle, alors que l'angle en $A$ est toujours le même.
3. Montre que $BM = BA$ et que $CN = CA$. En déduire que $MN = AB + AC - BC$, puis vérifie-le sur le triangle de côtés $3$, $4$ et $5$.
