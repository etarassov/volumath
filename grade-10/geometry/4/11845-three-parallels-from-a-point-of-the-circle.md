---
id: "11845"
title: "Trois parallèles depuis un point du cercle"
grade: 10
theme: geometry
difficulty: 4
duration_min: 40
tags: [triangle-equilateral, cercle-circonscrit, angle-inscrit, cocyclicite, parallelisme, alignement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 5 (pot-pourri)"
  reference: "2023-03_Sujet-envoi-5.pdf, Exercices Juniors, exercice 2 ; corrigé 2023-07_corrige-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/03/Sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-03_Sujet-envoi-5.pdf"
---

## Statement

Soit $ABC$ un triangle équilatéral et $P$ un point de son cercle circonscrit, distinct de $A$, $B$ et $C$.

- La parallèle à $(BC)$ passant par $P$ coupe la droite $(CA)$ en $M$.
- La parallèle à $(CA)$ passant par $P$ coupe la droite $(AB)$ en $N$.
- La parallèle à $(AB)$ passant par $P$ coupe la droite $(BC)$ en $Q$.

Montrer que les points $M$, $N$ et $Q$ sont alignés.

## Hints

1. Faire une figure soignée. On peut supposer que $P$ est sur l'arc $BC$ qui ne contient pas $A$ : une rotation de $120°$ autour du centre du triangle échange les trois cas.
2. Calculer les angles $\widehat{BNP}$ et $\widehat{BQP}$. Que peut-on en déduire pour les points $B$, $N$, $Q$, $P$ ?
3. De même, montrer que $M$, $C$, $Q$, $P$ sont sur un même cercle. Il reste à montrer que $\widehat{NQB} = \widehat{MQC}$.
4. Avec les deux cercles, cela revient à montrer que $\widehat{NPB} = \widehat{MPC}$. Comparer chacun de ces angles à $120° - \widehat{CPN}$.

## Solution

**Rappels.**

- *Angle inscrit.* Soient $X$ et $Y$ deux points d'un cercle. Si $U$ et $V$ sont deux autres points du cercle situés du même côté de la droite $(XY)$, alors $\widehat{XUY} = \widehat{XVY}$. S'ils sont de part et d'autre, alors $\widehat{XUY} + \widehat{XVY} = 180°$.
- *Réciproque.* Soient $X$, $Y$ deux points et $U$, $V$ deux autres points. Si $U$ et $V$ sont du même côté de $(XY)$ et $\widehat{XUY} = \widehat{XVY}$, ou s'ils sont de part et d'autre de $(XY)$ et $\widehat{XUY} + \widehat{XVY} = 180°$, alors $X$, $Y$, $U$, $V$ sont sur un même cercle.

**On se ramène à un seul cas.** Notons $O$ le centre du triangle. La rotation de centre $O$ et d'angle $120°$ qui envoie $A$ sur $B$, $B$ sur $C$ et $C$ sur $A$ transforme la construction en elle-même : elle envoie la parallèle à $(BC)$ sur la parallèle à $(CA)$, et ainsi de suite, donc elle envoie $M$ sur $N$, $N$ sur $Q$ et $Q$ sur $M$. On peut donc supposer que $P$ est sur l'arc $BC$ qui ne contient pas $A$.

**La position des points.** Sur une figure, on voit alors que $N$ est à l'intérieur du segment $[AB]$, que $Q$ est à l'intérieur du segment $[BC]$, et que $M$ est sur la droite $(AC)$, au-delà de $C$ (dans l'ordre $A$, $C$, $M$). Le point $P$ est de l'autre côté de $(BC)$ par rapport à $A$, du même côté de $(AB)$ que $C$, et du même côté de $(AC)$ que $B$. Enfin, les demi-droites $[PN)$, $[PM)$ et $[QP)$ ont respectivement le sens de $C$ vers $A$, de $B$ vers $C$, et de $A$ vers $B$. Cette disposition est la même pour toutes les positions de $P$ sur l'arc, et on s'appuie dessus.

**Étape 1 : le cercle passant par $B$, $N$, $Q$, $P$.**

- La droite $(NP)$ est parallèle à $(AC)$, et la demi-droite $[NP)$ a le sens de $A$ vers $C$, comme $[AC)$. Les angles correspondants donnent $\widehat{BNP} = \widehat{BAC} = 60°$.
- La droite $(QP)$ est parallèle à $(AB)$, et $P$, $A$ sont de part et d'autre de $(BC)$. Les angles alternes-internes donnent $\widehat{BQP} = \widehat{QBA} = \widehat{CBA} = 60°$.

Les points $N$ et $Q$ sont du même côté de $(BP)$ et voient le segment $[BP]$ sous le même angle de $60°$. Par la réciproque, $B$, $N$, $Q$, $P$ sont sur un même cercle. Sur ce cercle, $Q$ et $P$ sont du même côté de la corde $(NB)$, qui est la droite $(AB)$. Par l'angle inscrit,

$$\widehat{NQB} = \widehat{NPB}.$$

**Étape 2 : le cercle passant par $M$, $C$, $Q$, $P$.**

- La droite $(MP)$ est parallèle à $(CB)$, et $P$, $B$ sont du même côté de $(AC)$. Comme $M$ est au-delà de $C$, la demi-droite $[MC)$ a le même sens que $[CA)$. Les angles correspondants donnent $\widehat{CMP} = \widehat{ACB} = 60°$.
- Comme $Q$ est entre $B$ et $C$, $\widehat{CQP} = 180° - \widehat{BQP} = 120°$.

Les points $M$ et $Q$ sont de part et d'autre de $(CP)$, et $\widehat{CMP} + \widehat{CQP} = 60° + 120° = 180°$. Par la réciproque, $M$, $C$, $Q$, $P$ sont sur un même cercle. Sur ce cercle, $Q$ et $P$ sont du même côté de la corde $(MC)$, qui est la droite $(AC)$. Par l'angle inscrit,

$$\widehat{MQC} = \widehat{MPC}.$$

**Étape 3 : comparer $\widehat{NPB}$ et $\widehat{MPC}$.**

- Les points $A$, $B$, $P$, $C$ sont sur le cercle circonscrit, et $A$, $P$ sont de part et d'autre de $(BC)$. Par l'angle inscrit, $\widehat{BPC} = 180° - \widehat{BAC} = 120°$.
- La demi-droite $[PM)$ a le sens de $B$ vers $C$, et $[PN)$ celui de $C$ vers $A$. L'angle $\widehat{MPN}$ est donc l'angle entre le prolongement de $[BC]$ au-delà de $C$ et la demi-droite $[CA)$, c'est-à-dire $180° - \widehat{BCA} = 120°$.

Autour de $P$, les demi-droites se suivent dans l'ordre $[PM)$, $[PC)$, $[PN)$, $[PB)$ (on le voit sur la figure). Donc

$$\widehat{NPB} = \widehat{CPB} - \widehat{CPN} = 120° - \widehat{CPN} \qquad \text{et} \qquad \widehat{MPC} = \widehat{MPN} - \widehat{CPN} = 120° - \widehat{CPN}.$$

Ainsi $\widehat{NPB} = \widehat{MPC}$.

**Conclusion.** Avec les étapes 1 et 2, $\widehat{NQB} = \widehat{NPB} = \widehat{MPC} = \widehat{MQC}$. Le point $Q$ est entre $B$ et $C$, et $N$, $M$ sont de part et d'autre de la droite $(BC)$ ($N$ du côté de $A$, $M$ de l'autre côté). Les angles $\widehat{NQB}$ et $\widehat{MQC}$ sont égaux et de part et d'autre de $(BC)$, de sommet commun $Q$, avec $[QB)$ et $[QC)$ opposées : ils sont opposés par le sommet. Donc $[QM)$ est la demi-droite opposée à $[QN)$, et les points $M$, $Q$, $N$ sont alignés.

## Going further

Si l'on remplace les parallèles par les perpendiculaires aux côtés passant par $P$, les trois pieds sont encore alignés, et cette fois pour **n'importe quel** triangle : c'est la droite de Simson. La preuve suit exactement le même plan, avec des angles droits à la place des angles de $60°$.
