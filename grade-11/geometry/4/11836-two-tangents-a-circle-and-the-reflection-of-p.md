---
id: "11836"
title: "Deux tangentes, un cercle et le symétrique de P"
grade: 11
theme: geometry
difficulty: 4
duration_min: 45
tags: [cercle, tangente, angle-inscrit, angle-tangente-corde, triangles-semblables, quadrilatere-inscrit]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 5 (pot-pourri)"
  reference: "2022-03_sujet-envoi-5.pdf, Exercices Juniors, exercice 8 (repris tel quel en exercice 14 des Seniors) ; corrigé 2022-05_corrige-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/03/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-03_sujet-envoi-5.pdf"
---

## Statement

Soit $\Gamma$ un cercle et $P$ un point à l'extérieur de $\Gamma$. Les tangentes à $\Gamma$ issues de $P$ touchent $\Gamma$ en $A$ et en $B$. Soit $K$ un point du segment $[AB]$, distinct de $A$ et de $B$. Le cercle circonscrit au triangle $PBK$ recoupe le cercle $\Gamma$ au point $T$. Soit $P'$ le symétrique du point $P$ par rapport au point $A$.

Montrer que $\widehat{PBT} = \widehat{P'KA}$.

## Hints

1. Faire une grande figure soignée. Sur le cercle passant par $P$, $B$, $K$ et $T$, dans quel ordre sont les quatre points ?
2. Avec ce cercle, remplacer $\widehat{PBT}$ par un angle de sommet $K$. Il suffit alors de montrer que les triangles $KTP$ et $KAP'$ sont semblables.
3. Montrer que $\widehat{KTP} = \widehat{KAP'}$. On pourra utiliser que le triangle $PAB$ est isocèle.
4. Pour les longueurs, chercher deux triangles semblables parmi les triangles qui ont $T$ pour sommet : comparer $TAK$ et $TBP$. Penser à l'angle entre la tangente $(BP)$ et la corde $[BT]$.

## Solution

**Rappels.**

- *Angle inscrit.* Soient $M$ et $N$ deux points d'un cercle. Si $U$ et $V$ sont deux autres points du cercle situés du même côté de la droite $(MN)$, alors $\widehat{MUN} = \widehat{MVN}$. S'ils sont de part et d'autre, alors $\widehat{MUN} + \widehat{MVN} = 180°$. En particulier, dans un quadrilatère dont les sommets sont sur un cercle, deux angles opposés ont pour somme $180°$.
- *Angle entre une tangente et une corde.* Soient $B$ et $T$ deux points d'un cercle, et $X$ un point de la tangente en $B$, distinct de $B$. Pour tout point $A$ du cercle situé de l'autre côté de la droite $(BT)$ par rapport à $X$, on a $\widehat{XBT} = \widehat{BAT}$.

**La position des points.** Sur une figure, on voit que $T$ est du même côté de $(AB)$ que $P$, que les points $A$ et $P$ sont de part et d'autre de la droite $(BT)$, et que, sur le cercle qui passe par $P$, $B$, $K$ et $T$, ces points se suivent dans l'ordre $P$, $T$, $K$, $B$. On s'appuie sur cette disposition, qui est la même pour toutes les positions de $P$ et de $K$.

**Étape 1 : se ramener à un angle de sommet $K$.** Sur le cercle $(PBK)$, les points $B$ et $K$ sont du même côté de la droite $(PT)$, car ils se suivent dans l'arc qui va de $T$ à $P$ en passant par $K$ et $B$. Par l'angle inscrit,

$$\widehat{PBT} = \widehat{PKT}.$$

Il suffit donc de montrer que $\widehat{PKT} = \widehat{P'KA}$. Pour cela, on va montrer que les triangles $KTP$ et $KAP'$ sont semblables, le sommet $T$ correspondant à $A$ et le sommet $P$ à $P'$.

**Étape 2 : un angle égal.** Le quadrilatère $PTKB$ a ses sommets sur un cercle, dans cet ordre. Ses angles opposés en $T$ et en $B$ ont pour somme $180°$ :

$$\widehat{KTP} = 180° - \widehat{KBP}.$$

Comme $K$ est sur le segment $[BA]$, on a $\widehat{KBP} = \widehat{ABP}$. Les deux tangentes issues de $P$ ont la même longueur, $PA = PB$, donc le triangle $PAB$ est isocèle en $P$ et $\widehat{ABP} = \widehat{BAP}$.

D'autre part, $A$ est le milieu de $[PP']$, donc les points $P$, $A$ et $P'$ sont alignés dans cet ordre, et comme $K$ est sur $[AB]$ :

$$\widehat{KAP'} = 180° - \widehat{KAP} = 180° - \widehat{BAP}.$$

En comparant, $\widehat{KTP} = \widehat{KAP'}$.

**Étape 3 : deux triangles semblables autour de $T$.** Comparons les triangles $TAK$ et $TBP$.

- La droite $(BP)$ est tangente à $\Gamma$ en $B$, et $A$ est de l'autre côté de $(BT)$ par rapport à $P$. Par l'angle entre tangente et corde, $\widehat{TBP} = \widehat{TAB} = \widehat{TAK}$.
- Les points $A$, $K$, $B$ sont alignés dans cet ordre, donc $\widehat{AKT} = 180° - \widehat{BKT}$. Dans le quadrilatère inscrit $PTKB$, les angles opposés en $K$ et en $P$ ont pour somme $180°$, donc $\widehat{BKT} = 180° - \widehat{BPT}$. Ainsi $\widehat{AKT} = \widehat{BPT}$.

Les triangles $TAK$ et $TBP$ ont deux angles égaux ($A$ avec $B$, $K$ avec $P$). Ils sont donc semblables, et leurs côtés sont proportionnels :

$$\frac{KT}{KA} = \frac{PT}{PB}.$$

Or $PB = PA = AP'$, puisque $A$ est le milieu de $[PP']$. Donc

$$\frac{KT}{KA} = \frac{TP}{AP'}, \qquad \text{c'est-à-dire} \qquad \frac{TK}{AK} = \frac{TP}{AP'}.$$

**Étape 4 : conclure.** Les triangles $KTP$ et $KAP'$ ont un angle égal, $\widehat{KTP} = \widehat{KAP'}$ (étape 2), compris entre deux côtés proportionnels, $\frac{TK}{AK} = \frac{TP}{AP'}$ (étape 3). Ils sont donc semblables, $T$ correspondant à $A$, $K$ à $K$ et $P$ à $P'$. Leurs angles en $K$ sont égaux : $\widehat{TKP} = \widehat{AKP'}$.

Avec l'étape 1, on obtient

$$\widehat{PBT} = \widehat{PKT} = \widehat{P'KA},$$

ce qu'il fallait démontrer.

## Going further

Montrer que la droite $(AT)$ passe par le milieu du segment $[PK]$.
