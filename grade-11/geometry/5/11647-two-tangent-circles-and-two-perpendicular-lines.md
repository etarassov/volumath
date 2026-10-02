---
id: "11647"
title: "Deux cercles tangents et deux droites perpendiculaires"
grade: 11
theme: geometry
difficulty: 5
duration_min: 75
tags: [cercles tangents, quadrilatere inscrit, puissance d'un point, produit scalaire, projete orthogonal, geometrie analytique]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 5 (pot-pourri)"
  reference: "2017-10_ofm-2016-2017-envoi-5.pdf, exercices du groupe A, exercice 9 ; corrigé 2017-10_ofm-2016-2017-envoi-5-solutions.pdf (l'énoncé original est faux quand (AD) et (BC) sont perpendiculaires : (DP) et (CQ) sont alors toujours perpendiculaires, alors que les cercles ne sont en général pas tangents ; on a ajouté l'hypothèse qui manque. Le corrigé donne une preuve synthétique ; la preuve ci-dessous passe par la puissance d'un point et les coordonnées)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-5.pdf"
---

## Statement

Soit $ABCD$ un quadrilatère convexe inscrit dans un cercle. On suppose que les droites $(AD)$ et $(BC)$ se coupent, et qu'elles ne sont pas perpendiculaires.

On note $\Delta_1$ la droite parallèle à $(BC)$ passant par $A$, et $\Delta_2$ la droite parallèle à $(AD)$ passant par $B$. La droite $\Delta_1$ coupe $(CD)$ en $E$, et la droite $\Delta_2$ coupe $(CD)$ en $F$. La perpendiculaire à $\Delta_1$ passant par $A$ coupe $(BC)$ en $P$, et la perpendiculaire à $\Delta_2$ passant par $B$ coupe $(AD)$ en $Q$.

On note $\Gamma_1$ le cercle circonscrit au triangle $ADE$, et $\Gamma_2$ le cercle circonscrit au triangle $BFC$.

![Le quadrilatère ABCD inscrit dans un cercle gris, les droites violettes Δ1 et Δ2, les points E et F sur la droite (CD), les points P et Q avec les perpendiculaires en pointillés, le cercle bleu Γ1 qui passe par A, D, E, le cercle vert Γ2 qui passe par B, F, C, et les deux segments rouges [DP] et [CQ].](11647-figure-1.svg)

Prouver que $\Gamma_1$ et $\Gamma_2$ sont tangents si et seulement si les droites $(DP)$ et $(CQ)$ sont perpendiculaires.

## Hints

1. Commence par montrer que le cercle $\Gamma_1$ est tangent à la droite $(AB)$ en $A$. Si $(AB)$ et $(CD)$ se coupent en un point $T$, compare $\overrightarrow{TD} \cdot \overrightarrow{TE}$ et $TA^2$.
2. Un outil pour cela : si une droite passant par un point $T$ coupe un cercle de centre $O$ et de rayon $R$ en deux points $M$ et $N$, alors $\overrightarrow{TM} \cdot \overrightarrow{TN} = TO^2 - R^2$.
3. Prends un repère orthonormé d'origine $A$, avec $B(c\,;\,0)$ où $c = AB$, et où $C$ et $D$ ont une ordonnée positive. Où sont les centres de $\Gamma_1$ et de $\Gamma_2$ ? Calcule leurs rayons.
4. Deux cercles sont tangents quand la distance entre leurs centres est égale à la somme ou à la différence de leurs rayons. Écris cette condition, puis calcule $\overrightarrow{DP} \cdot \overrightarrow{CQ}$ et factorise le résultat.

## Solution

On note $\mathcal{C}$ le cercle qui passe par $A$, $B$, $C$, $D$, et $O$ son centre. Une droite coupe un cercle en au plus deux points. Ainsi $D$ n'est pas sur $(BC)$, $C$ n'est pas sur $(AD)$, et $A$, $B$ ne sont pas sur $(CD)$.

**Deux rappels.**

- **(R1)** Deux cercles distincts, de centres $O_1$, $O_2$ et de rayons $r_1$, $r_2$, sont tangents si et seulement si $O_1O_2 = r_1 + r_2$ ou $O_1O_2 = |r_1 - r_2|$.
- **(R2) Puissance d'un point.** Soit un cercle de centre $\Omega$ et de rayon $R$, un point $T$, et une droite passant par $T$ qui coupe le cercle en deux points $M$ et $N$. Alors $\overrightarrow{TM} \cdot \overrightarrow{TN} = T\Omega^2 - R^2$.

*Preuve de (R2).* Soit $I$ le milieu de $[MN]$. On a $\overrightarrow{TM} = \overrightarrow{TI} + \overrightarrow{IM}$ et $\overrightarrow{TN} = \overrightarrow{TI} - \overrightarrow{IM}$, donc $\overrightarrow{TM} \cdot \overrightarrow{TN} = TI^2 - IM^2$. La médiatrice de la corde $[MN]$ passe par $\Omega$, donc $(\Omega I)$ est perpendiculaire à $(MN)$, ou bien $\Omega = I$. Le théorème de Pythagore donne $T\Omega^2 = TI^2 + I\Omega^2$ et $R^2 = \Omega M^2 = I\Omega^2 + IM^2$. En soustrayant, $T\Omega^2 - R^2 = TI^2 - IM^2$.

**Étape 1 : le cercle $\Gamma_1$ est tangent à $(AB)$ en $A$.** Notons $O_1$ le centre de $\Gamma_1$ et $r_1$ son rayon. La droite $(CD)$ n'est pas parallèle à $(BC)$, donc $E$ existe. Comme $(AD)$ n'est pas parallèle à $(BC)$, le point $D$ n'est pas sur $\Delta_1$, donc $E \neq D$, et le triangle $ADE$ n'est pas aplati.

*Premier cas : $(AB)$ et $(CD)$ se coupent en un point $T$.* Ce point n'est ni $A$ ni $B$. Les points $T$, $A$, $B$ sont alignés, les points $T$, $E$, $C$ aussi, et $(AE)$ est parallèle à $(BC)$. D'après le théorème de Thalès, il existe un réel $k$ tel que
$$\overrightarrow{TA} = k\,\overrightarrow{TB} \qquad \text{et} \qquad \overrightarrow{TE} = k\,\overrightarrow{TC}.$$
Les droites $(AB)$ et $(CD)$ passent par $T$ et coupent $\mathcal{C}$. D'après (R2), appliqué deux fois, $\overrightarrow{TA} \cdot \overrightarrow{TB}$ et $\overrightarrow{TC} \cdot \overrightarrow{TD}$ sont tous les deux égaux à $TO^2 - R^2$, où $R$ est le rayon de $\mathcal{C}$. Ils sont donc égaux.

La droite $(CD)$ passe aussi par $T$ et coupe $\Gamma_1$ en $D$ et $E$. D'après (R2),
$$TO_1^2 - r_1^2 = \overrightarrow{TD} \cdot \overrightarrow{TE} = k\,\overrightarrow{TD} \cdot \overrightarrow{TC} = k\,\overrightarrow{TA} \cdot \overrightarrow{TB} = \overrightarrow{TA} \cdot \left(k\,\overrightarrow{TB}\right) = TA^2.$$
Comme $AO_1 = r_1$, cela s'écrit $TO_1^2 = TA^2 + AO_1^2$. Or $\overrightarrow{TO_1} = \overrightarrow{TA} + \overrightarrow{AO_1}$, donc $TO_1^2 = TA^2 + AO_1^2 + 2\,\overrightarrow{TA} \cdot \overrightarrow{AO_1}$. On en déduit $\overrightarrow{TA} \cdot \overrightarrow{AO_1} = 0$ : le rayon $[O_1A]$ est perpendiculaire à $(AB)$, et la droite $(AB)$ est tangente à $\Gamma_1$ en $A$.

*Second cas : $(AB)$ et $(CD)$ sont parallèles.* La médiatrice de $[AB]$ passe par $O$ et elle est perpendiculaire à $(AB)$, donc à $(CD)$ : c'est la perpendiculaire à la corde $[CD]$ passant par le centre, c'est-à-dire la médiatrice de $[CD]$. La symétrie par rapport à cette droite échange $A$ et $B$, et échange $C$ et $D$. Donc $AD = BC$. D'autre part, $(AB)$ est parallèle à $(CE)$ et $(AE)$ est parallèle à $(BC)$, donc $ABCE$ est un parallélogramme, et $AE = BC$. Ainsi $AE = AD$ : le point $A$ est sur la médiatrice de $[DE]$. Cette médiatrice passe aussi par $O_1$, et elle est perpendiculaire à $(DE)$, donc à $(AB)$. Encore une fois, $(AO_1)$ est perpendiculaire à $(AB)$ et $(AB)$ est tangente à $\Gamma_1$ en $A$.

*Le cercle $\Gamma_2$.* Échangeons les noms $A \leftrightarrow B$ et $C \leftrightarrow D$. Le quadrilatère $BADC$ est le même quadrilatère inscrit, parcouru dans l'autre sens. Les droites $\Delta_1$ et $\Delta_2$ sont échangées, ainsi que $E$ et $F$, $P$ et $Q$, et $\Gamma_1$ et $\Gamma_2$. Le même raisonnement montre donc que **$\Gamma_2$ est tangent à $(AB)$ en $B$.**

En particulier $\Gamma_1 \neq \Gamma_2$, car un cercle ne peut pas être tangent à une droite en deux points différents.

**Étape 2 : un repère.** Le quadrilatère est convexe, donc $C$ et $D$ sont du même côté de $(AB)$. On choisit un repère orthonormé d'origine $A$, dans lequel $B(c\,;\,0)$ avec $c = AB > 0$, et où $C$ et $D$ ont une ordonnée strictement positive. On écrit
$$\overrightarrow{AD}\,(p\,;\,q) \qquad \text{et} \qquad \overrightarrow{BC}\,(r\,;\,s), \qquad \text{avec } q > 0 \text{ et } s > 0,$$
de sorte que $D(p\,;\,q)$ et $C(c + r\,;\,s)$. On note $d = AD$ et $b = BC$, donc $d^2 = p^2 + q^2$ et $b^2 = r^2 + s^2$.

**Étape 3 : quand les cercles sont-ils tangents ?** Le cercle $\Gamma_1$ est tangent à l'axe des abscisses en $A$, donc son centre est sur l'axe des ordonnées : $O_1(0\,;\,k)$, et son rayon est $O_1A = |k|$. Le point $D$ est sur $\Gamma_1$, donc $p^2 + (q - k)^2 = k^2$, soit $p^2 + q^2 = 2qk$. Ainsi $k = d^2/(2q) > 0$, et
$$O_1\,(0\,;\,r_1) \qquad \text{avec} \qquad r_1 = \frac{d^2}{2q}.$$
De même, $\Gamma_2$ est tangent à l'axe des abscisses en $B$ et passe par $C$. Le même calcul donne
$$O_2\,(c\,;\,r_2) \qquad \text{avec} \qquad r_2 = \frac{b^2}{2s}.$$
On a $O_1O_2^2 = c^2 + (r_1 - r_2)^2$. Comme $c > 0$, on a $O_1O_2 > |r_1 - r_2|$. D'après (R1), les cercles sont donc tangents si et seulement si $O_1O_2 = r_1 + r_2$, c'est-à-dire
$$c^2 + (r_1 - r_2)^2 = (r_1 + r_2)^2 \iff c^2 = 4\,r_1 r_2 = \frac{b^2 d^2}{qs}.$$
Posons $N = b^2 d^2 - c^2 qs$. Nous avons montré :
$$\Gamma_1 \text{ et } \Gamma_2 \text{ sont tangents} \iff N = 0.$$

**Étape 4 : les points $P$ et $Q$.** La droite $\Delta_2$ est parallèle à $(AD)$, donc la perpendiculaire à $\Delta_2$ passant par $B$ est la perpendiculaire à $(AD)$ passant par $B$ : le point $Q$ est le projeté orthogonal de $B$ sur $(AD)$. On écrit $\overrightarrow{AQ} = \lambda\,\overrightarrow{AD}$. La condition $\overrightarrow{QB} \cdot \overrightarrow{AD} = 0$ s'écrit $\left(\overrightarrow{AB} - \lambda\,\overrightarrow{AD}\right) \cdot \overrightarrow{AD} = 0$, donc $\lambda = cp/d^2$, puisque $\overrightarrow{AB} \cdot \overrightarrow{AD} = cp$. En utilisant $d^2 - p^2 = q^2$, on trouve
$$Q\left(\frac{cp^2}{d^2}\,;\,\frac{cpq}{d^2}\right), \qquad \overrightarrow{CQ}\left(-\frac{cq^2}{d^2} - r\,;\,\frac{cpq}{d^2} - s\right).$$
De même, $P$ est le projeté orthogonal de $A$ sur $(BC)$. On a $\overrightarrow{BP} = \mu\,\overrightarrow{BC}$ avec $\mu = \left(\overrightarrow{BA} \cdot \overrightarrow{BC}\right)/b^2 = -cr/b^2$. En utilisant $b^2 - r^2 = s^2$, on trouve
$$P\left(\frac{cs^2}{b^2}\,;\,-\frac{crs}{b^2}\right), \qquad \overrightarrow{DP}\left(\frac{cs^2}{b^2} - p\,;\,-\frac{crs}{b^2} - q\right).$$

**Étape 5 : le produit scalaire.** On développe les deux produits.
$$\left(\frac{cs^2}{b^2} - p\right)\left(-\frac{cq^2}{d^2} - r\right) = -\frac{c^2q^2s^2}{b^2d^2} - \frac{crs^2}{b^2} + \frac{cpq^2}{d^2} + pr,$$
$$\left(-\frac{crs}{b^2} - q\right)\left(\frac{cpq}{d^2} - s\right) = -\frac{c^2pqrs}{b^2d^2} + \frac{crs^2}{b^2} - \frac{cpq^2}{d^2} + qs.$$
En additionnant, quatre termes s'éliminent deux à deux, et il reste
$$\overrightarrow{DP} \cdot \overrightarrow{CQ} = pr + qs - \frac{c^2qs\,(qs + pr)}{b^2d^2} = (pr + qs) \times \frac{b^2d^2 - c^2qs}{b^2d^2}.$$
Or $pr + qs = \overrightarrow{AD} \cdot \overrightarrow{BC}$. Finalement,
$$\overrightarrow{DP} \cdot \overrightarrow{CQ} = \frac{\overrightarrow{AD} \cdot \overrightarrow{BC}}{AD^2 \times BC^2} \times N.$$

**Étape 6 : conclusion.** Comme $D$ n'est pas sur $(BC)$, on a $D \neq P$, et comme $C$ n'est pas sur $(AD)$, on a $C \neq Q$ : les droites $(DP)$ et $(CQ)$ existent. Elles sont perpendiculaires si et seulement si $\overrightarrow{DP} \cdot \overrightarrow{CQ} = 0$. Les droites $(AD)$ et $(BC)$ ne sont pas perpendiculaires, donc $\overrightarrow{AD} \cdot \overrightarrow{BC} \neq 0$, et d'après l'étape 5, cela revient à $N = 0$. D'après l'étape 3, cela revient à dire que $\Gamma_1$ et $\Gamma_2$ sont tangents.

**Conclusion : les cercles $\Gamma_1$ et $\Gamma_2$ sont tangents si et seulement si les droites $(DP)$ et $(CQ)$ sont perpendiculaires.**

## Going further

**L'hypothèse ajoutée est nécessaire.** L'énoncé original ne supposait pas que $(AD)$ et $(BC)$ ne sont pas perpendiculaires, et il est faux dans ce cas. Prenons $A(0\,;\,0)$, $B(4\,;\,0)$, $C(3\,;\,1)$ et $D(1\,;\,1)$. C'est un trapèze isocèle, donc il est inscrit dans un cercle, et $\overrightarrow{AD}(1\,;\,1)$ et $\overrightarrow{BC}(-1\,;\,1)$ sont orthogonaux. On trouve $E(-1\,;\,1)$, $F(5\,;\,1)$, et $P = Q = (2\,;\,2)$, le point où se coupent $(AD)$ et $(BC)$. Les droites $(DP)$ et $(CQ)$ sont les droites $(AD)$ et $(BC)$, qui sont perpendiculaires. Pourtant $\Gamma_1$ a pour centre $(0\,;\,1)$ et pour rayon $1$, $\Gamma_2$ a pour centre $(4\,;\,1)$ et pour rayon $1$ : leurs centres sont à distance $4$, plus grande que $1 + 1$, et les cercles ne se touchent pas. La formule de l'étape 5 l'explique : quand $\overrightarrow{AD} \cdot \overrightarrow{BC} = 0$, le produit $\overrightarrow{DP} \cdot \overrightarrow{CQ}$ est nul quelle que soit la valeur de $N$.

On remarque aussi que le fait que $ABCD$ soit inscrit dans un cercle ne sert qu'à l'étape 1.

Le corrigé original donne une preuve sans coordonnées. Quand les cercles sont tangents en un point $R$, il montre que $R$ est sur le cercle de diamètre $[AB]$, qui passe aussi par $P$ et $Q$, puis que $E$, $R$, $P$ sont alignés, ainsi que $F$, $R$, $Q$. Il ramène alors la perpendicularité de $(DP)$ et $(CQ)$ à une similitude entre les triangles $PAE$ et $FBQ$.
