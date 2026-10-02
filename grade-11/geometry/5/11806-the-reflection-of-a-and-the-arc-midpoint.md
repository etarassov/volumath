---
id: "11806"
title: "Le symétrique de A et le milieu de l'arc"
grade: 11
theme: geometry
difficulty: 5
duration_min: 60
tags: [puissance-d-un-point, cocyclicite, bissectrice, milieu-de-l-arc, angles-orientes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 5 (pot-pourri)"
  reference: "2020-02_sujet-envoi-5.pdf, Exercices Juniors, exercice 8 ; corrigé 2020-04_corrige-commente-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/02/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-02_sujet-envoi-5.pdf"
---

## Statement

Soit $ABC$ un triangle tel que $BA \neq BC$, et soit $\Gamma$ son cercle circonscrit.

- $D$ est le pied de la bissectrice de l'angle $\widehat{ABC}$ : c'est le point où elle coupe le côté $[AC]$.
- $M$ est le milieu de l'arc $AC$ de $\Gamma$ qui **contient** $B$.
- Le cercle passant par $B$, $D$ et $M$ recoupe le segment $[AB]$ en un point $K$ distinct de $B$.
- $J$ est le symétrique de $A$ par rapport à $K$.
- La droite $(DJ)$ coupe la droite $(AM)$ en un point $O$.

Montrer que les points $J$, $B$, $M$ et $O$ sont sur un même cercle.

## Hints

1. Soit $M'$ le milieu de l'autre arc $AC$. Pourquoi la droite $(BM')$ est-elle la bissectrice de l'angle $\widehat{ABC}$ ? Que vaut l'angle $\widehat{MBM'}$ ? Déduis-en $\widehat{DBM}$.
2. Soit $N$ le milieu de $[AC]$. Montre que $N$ est aussi sur le cercle passant par $B$, $D$, $M$.
3. Le point $A$ est sur deux droites qui coupent ce cercle : $(AB)$ en $K$ et $B$, $(AC)$ en $D$ et $N$. Compare $AK \times AB$ et $AD \times AN$.
4. Traduis $AJ = 2AK$ et $AC = 2AN$. Que peux-tu dire des points $J$, $B$, $D$, $C$ ?
5. Termine par une chasse aux angles. Pour ne pas dépendre de la figure, utilise les angles orientés de droites.

## Solution

**Deux outils.**

- *La puissance d'un point.* Soit un point $A$ extérieur à un cercle, et deux droites passant par $A$ qui coupent ce cercle, la première en $X$ puis $Y$, la seconde en $Z$ puis $W$. Alors $AX \times AY = AZ \times AW$. En effet, les triangles $AXW$ et $AZY$ ont l'angle en $A$ en commun, et les angles $\widehat{AWX}$ et $\widehat{AYZ}$ sont égaux par le théorème de l'angle inscrit (ils interceptent la corde $[XZ]$) ; ces triangles sont donc semblables, d'où $\dfrac{AX}{AZ} = \dfrac{AW}{AY}$. **Réciproquement**, si $X, Y$ sont sur une demi-droite issue de $A$, $Z, W$ sur une autre, et si $AX \times AY = AZ \times AW$, alors $X$, $Y$, $Z$, $W$ sont cocycliques : les triangles $AXW$ et $AZY$ ont un angle commun compris entre des côtés proportionnels, ils sont semblables, et l'égalité d'angles qui en résulte donne la cocyclicité.
- *Les angles orientés de droites.* On note $(d_1, d_2)$ l'angle dont il faut faire tourner la droite $d_1$, dans le sens direct, pour l'amener sur la droite $d_2$, compté à $180^\circ$ près. Avec cette notation, quatre points $P$, $Q$, $R$, $S$ (trois jamais alignés) sont cocycliques si et seulement si $(RP, RQ) = (SP, SQ)$, **quelle que soit la position des points sur la figure**. C'est ce qui évite de distinguer les cas.

**Étape 1 : l'angle $\widehat{DBM}$ est droit.** Soit $M'$ le milieu de l'arc $AC$ qui ne contient pas $B$. Les cordes $[AM']$ et $[M'C]$ sont égales, donc les angles inscrits $\widehat{ABM'}$ et $\widehat{M'BC}$ sont égaux : $(BM')$ est la bissectrice de $\widehat{ABC}$, elle passe par $D$. Les points $M$ et $M'$ sont tous deux sur la médiatrice de $[AC]$, qui passe par le centre de $\Gamma$ : $[MM']$ est un diamètre. Donc $\widehat{MBM'} = 90^\circ$, c'est-à-dire $\widehat{DBM} = 90^\circ$.

**Étape 2 : le milieu $N$ de $[AC]$ est sur le cercle $BDM$.** La droite $(MN)$ est la médiatrice de $[AC]$, donc $\widehat{DNM} = 90^\circ$ (et $D \neq N$ car $BA \neq BC$). Les points $B$ et $N$ voient tous les deux le segment $[DM]$ sous un angle droit : ils sont sur le cercle de diamètre $[DM]$, qui est donc le cercle passant par $B$, $D$, $M$. Appelons-le $\omega$.

**Étape 3 : $J$, $B$, $D$, $C$ sont cocycliques.** Le point $A$ est sur la droite $(AB)$, qui coupe $\omega$ en $K$ et $B$, et sur la droite $(AC)$, qui coupe $\omega$ en $D$ et $N$. Par la puissance du point $A$ :
$$AK \times AB = AD \times AN .$$
Or $K$ est le milieu de $[AJ]$, donc $AJ = 2\,AK$, et $N$ est le milieu de $[AC]$, donc $AC = 2\,AN$. En multipliant par $2$ :
$$AJ \times AB = 2\,AK \times AB = 2\,AD \times AN = AD \times AC .$$
Les points $J$ et $B$ sont sur la demi-droite $[AB)$, les points $D$ et $C$ sur la demi-droite $[AC)$. Par la réciproque de la puissance d'un point, **$J$, $B$, $D$, $C$ sont cocycliques.**

**Étape 4 : la chasse aux angles.** On enchaîne, avec des angles orientés de droites :
$$(JB, JO) = (JB, JD) = (CB, CD) = (CB, CA) = (MB, MA) = (MB, MO) .$$
Justifions chaque égalité :

- $(JO) = (JD)$, car $O$ est sur la droite $(DJ)$ ;
- $(JB, JD) = (CB, CD)$, car $J$, $B$, $D$, $C$ sont cocycliques (étape 3) ;
- $(CD) = (CA)$, car $D$ est sur $(AC)$ ;
- $(CB, CA) = (MB, MA)$, car $A$, $B$, $C$, $M$ sont sur le cercle $\Gamma$ ;
- $(MA) = (MO)$, car $O$ est sur la droite $(AM)$.

**Conclusion.** On a obtenu $(JB, JO) = (MB, MO)$ : les points $J$ et $M$ voient le segment $[BO]$ sous le même angle orienté. **Les points $J$, $B$, $M$ et $O$ sont donc cocycliques.**

## Going further

Sur une figure bien choisie, le point $J$ tombe au-delà de $B$ sur la demi-droite $[AB)$ ; sur une autre, il tombe entre $A$ et $B$. Trace les deux figures et vérifie que la chasse aux angles « classique », sans orientation, ne s'écrit pas de la même façon dans les deux cas. C'est tout l'intérêt des angles orientés.
