---
id: "10052"
title: "Un cercle tangent à deux côtés et au cercle circonscrit"
grade: 11
theme: geometry
difficulty: 5
duration_min: 75
tags: [cercles-tangents, cercle-circonscrit, angle-inscrit, bissectrice, bissectrice-exterieure, pole-sud, aire, thales, droites-concourantes]
adapted_from: null
see_also: ["10065"]
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 2 (géométrie)"
  reference: "2017-10_ofm-2015-2016-envoi-2.pdf, Exercices du groupe A, exercice 7 ; corrigé 2017-10_ofm-2015-2016-envoi-2-solutions.pdf. Le corrigé utilise le théorème de Pascal et une homothétie ; la solution ici les remplace par des rapports de longueurs (aires et théorème de Thalès), pour rester au niveau de la 1re. L'énoncé original oublie l'hypothèse AB ≠ AC : si AB = AC, alors F = M et la droite (FM) n'existe pas."
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-2.pdf"
---

## Statement

Soit $ABC$ un triangle tel que $AB \neq AC$, et $\Gamma$ son cercle circonscrit. Soit $M$ le milieu de l'arc $BC$ de $\Gamma$ qui ne contient pas $A$.

Un cercle $\mathcal{C}$ est tangent à la demi-droite $[AB)$ en $D$, à la demi-droite $[AC)$ en $E$, et tangent intérieurement à $\Gamma$ en $F$.

![Le triangle ABC, son cercle circonscrit, et en tirets le cercle tangent aux demi-droites issues de A qui portent les côtés AB et AC, en D et E et tangent intérieurement au cercle circonscrit en F ; le point M est le milieu de l'arc BC](10052-figure-1.svg)

Montrer que les droites $(DE)$, $(BC)$ et $(FM)$ sont concourantes.

## Hints

1. Soit $M_C$ le milieu de l'arc $AB$ qui ne contient pas $C$. Montre que les points $F$, $D$, $M_C$ sont alignés. Pour cela, compare les triangles isocèles $KFD$ et $OFX$, où $K$ et $O$ sont les centres des cercles et $X$ le second point d'intersection de $(FD)$ avec $\Gamma$.
2. Déduis-en que $(FD)$ est la bissectrice de l'angle $\widehat{AFB}$, puis que $\frac{DA}{DB} = \frac{FA}{FB}$. Pour ce rapport, calcule de deux façons les aires des triangles $AFD$ et $BFD$. Fais de même avec $E$, puis utilise $AD = AE$ pour obtenir $\frac{DB}{EC} = \frac{FB}{FC}$.
3. Soit $N$ le milieu de l'arc $BC$ qui contient $A$. La droite $(FN)$ est la bissectrice de l'angle $\widehat{BFC}$, et $(FM)$ lui est perpendiculaire, car $[MN]$ est un diamètre. Montre comme au 2. que le point $J$ où $(FM)$ coupe $(BC)$ vérifie $\frac{JB}{JC} = \frac{FB}{FC}$.
4. Trace par $C$ la parallèle à $(AB)$, et applique deux fois le théorème de Thalès : la droite $(DE)$ coupe $(BC)$ en un point $L$ tel que $\frac{LB}{LC} = \frac{DB}{EC}$. Il reste à voir pourquoi $L = J$.

## Solution

On note $O$ et $R$ le centre et le rayon de $\Gamma$, et $K$ et $r$ ceux de $\mathcal{C}$. On note $M_B$ le milieu de l'arc $AC$ qui ne contient pas $B$, $M_C$ le milieu de l'arc $AB$ qui ne contient pas $C$, et $N$ le milieu de l'arc $BC$ qui contient $A$.

L'angle entre deux droites sécantes est le plus petit des angles qu'elles forment : il est compris entre 0° et 90°.

### Étape 1 : milieu d'un arc et bissectrice

Soient $U$ et $V$ deux points de $\Gamma$, $X$ le milieu de l'un des deux arcs $UV$, et $W$ un point de l'autre arc, différent de $U$ et de $V$. Les angles inscrits $\widehat{UWX}$ et $\widehat{XWV}$ interceptent les arcs $UX$ et $XV$, qui sont égaux. Donc $\widehat{UWX} = \widehat{XWV}$ : **la droite $(WX)$ est la bissectrice de l'angle $\widehat{UWV}$**.

En particulier, $(AM)$ est la bissectrice de l'angle $\widehat{BAC}$.

### Étape 2 : quelques positions

Deux cercles tangents intérieurement en $F$ ont leurs centres alignés avec $F$ : les points $O$, $K$, $F$ sont alignés, et $K$ est sur le segment $[OF]$. Le cercle $\mathcal{C}$ est à l'intérieur de $\Gamma$ et ne le touche qu'en $F$.

- $A$ n'est pas sur $\mathcal{C}$. Sinon $A$ serait sur $\mathcal{C}$ et sur sa tangente $(AB)$, donc $A = D$, et de même $A = E$ : le cercle aurait deux tangentes différentes au même point. En particulier $F \neq A$, $D \neq A$ et $E \neq A$.
- $F$ n'est pas $B$. Sinon $B$ serait sur $\mathcal{C}$ et sur $(AB)$, donc $B = D$. Les cercles $\mathcal{C}$ et $\Gamma$, tangents en $B$, auraient la même tangente en $B$, à savoir $(AB)$. Mais $(AB)$ recoupe $\Gamma$ en $A$, elle n'est pas tangente à $\Gamma$. De même, $F \neq C$.
- $D \neq F$, car $F$ n'est pas sur $(AB)$ ($\Gamma$ ne coupe $(AB)$ qu'en $A$ et $B$). Donc $D$ est strictement à l'intérieur de $\Gamma$. De même pour $E$.
- Le cercle $\mathcal{C}$ est tout entier d'un même côté de sa tangente $(AB)$, celui du point $E$, donc celui de $C$. En particulier, $F$ est du côté de $C$ par rapport à $(AB)$. De même, $F$ est du côté de $B$ par rapport à $(AC)$.
- La droite $(AB)$ coupe $\Gamma$ en deux arcs, et $F$ est sur celui qui contient $C$. De même, $F$ est sur l'arc $AC$ qui contient $B$. Ces deux arcs n'ont en commun que l'arc $BC$ qui ne contient pas $A$. Donc **$F$ est sur l'arc $BC$ qui ne contient pas $A$**, comme $M$, et $N$ est sur l'autre arc.
- $AD = AE$. En effet, les triangles $AKD$ et $AKE$ sont rectangles en $D$ et en $E$, car un rayon est perpendiculaire à la tangente, et $KD = KE = r$. Le théorème de Pythagore donne $AD^2 = AK^2 - r^2 = AE^2$.

### Étape 3 : les points $F$, $D$, $M_C$ sont alignés

La droite $(FD)$ recoupe $\Gamma$ en un point $X$, et $D$ est entre $F$ et $X$, car $D$ est à l'intérieur de $\Gamma$. Les demi-droites $[FK)$ et $[FO)$ sont les mêmes, ainsi que $[FD)$ et $[FX)$, donc $\widehat{KFD} = \widehat{OFX}$.

Le triangle $KFD$ est isocèle en $K$, et le triangle $OFX$ est isocèle en $O$. Ils ont le même angle à la base en $F$, donc
$$\widehat{KDF} = \widehat{KFD} = \widehat{OFX} = \widehat{OXF} .$$
Ce sont des angles correspondants pour les droites $(KD)$ et $(OX)$ coupées par $(FX)$, donc $(KD) \parallel (OX)$. Or $(KD) \perp (AB)$, car un rayon est perpendiculaire à la tangente. Donc $(OX)$ est la perpendiculaire à $(AB)$ passant par $O$, c'est-à-dire la médiatrice de $[AB]$ : $XA = XB$, et $X$ est le milieu de l'un des deux arcs $AB$.

Le point $D$ de $(AB)$ est entre $F$ et $X$, donc $X$ et $F$ sont de part et d'autre de $(AB)$. D'après l'étape 2, $X$ est du côté opposé à $C$ : c'est le milieu de l'arc $AB$ qui ne contient pas $C$. Ainsi $X = M_C$, et **$F$, $D$, $M_C$ sont alignés**.

De la même façon, **$F$, $E$, $M_B$ sont alignés**.

Enfin, les points de la droite $(AB)$ qui sont à l'intérieur de $\Gamma$ sont ceux de la corde $[AB]$, sans ses extrémités. Comme $D$ est à l'intérieur de $\Gamma$, **$D$ est strictement entre $A$ et $B$**. De même, $E$ est strictement entre $A$ et $C$.

### Étape 4 : $F$ est différent de $M$

Supposons $F = M$. Les points $O$, $K$, $M$ sont alignés (étape 2). Le centre $K$ est à la même distance des deux demi-droites $[AB)$ et $[AC)$, donc il est sur la bissectrice $(AM)$. Comme $K \neq M$ ($K$ est à l'intérieur de $\Gamma$), la droite $(KM)$ contient à la fois $O$ et $A$. Donc $O$ est sur $(AM)$. Mais $(OM)$ est la médiatrice de $[BC]$, car $MB = MC$ et $OB = OC$. Le point $A$ serait sur cette médiatrice, et on aurait $AB = AC$, ce qui est exclu. Donc $F \neq M$.

En particulier, la droite $(FM)$ n'est pas parallèle à $(BC)$ : la seule droite passant par $M$ et parallèle à $(BC)$ est la tangente à $\Gamma$ en $M$, qui ne recoupe pas $\Gamma$. On note $J$ le point d'intersection de $(FM)$ et $(BC)$.

Trois remarques pour la suite.

- $J \neq B$ et $J \neq C$. La droite $(FM)$ ne coupe $\Gamma$ qu'en $F$ et en $M$, et aucun de ces deux points n'est $B$ ou $C$.
- **$J$ n'est pas sur le segment $[BC]$.** Les points du segment $[BC]$, sans ses extrémités, sont à l'intérieur de $\Gamma$, et les seuls points de $(FM)$ à l'intérieur de $\Gamma$ sont ceux du segment $[FM]$, sans ses extrémités. Or $F$ et $M$ sont sur l'arc $BC$ qui ne contient pas $A$ (étape 2), donc du même côté de $(BC)$, et le segment $[FM]$ ne rencontre pas $(BC)$.
- **$FB \neq FC$.** Les points de $\Gamma$ à égale distance de $B$ et de $C$ sont sur la médiatrice de $[BC]$, qui coupe $\Gamma$ en $M$ et en $N$. Or $F \neq M$, et $F \neq N$ puisque $N$ est sur l'autre arc.

### Étape 5 : un lemme sur les rapports de longueurs

**Lemme.** Soient $W$, $U$, $V$ trois points non alignés, et $P$ un point de la droite $(UV)$, différent de $U$ et de $V$. Si la droite $(WP)$ fait le même angle $\alpha$ avec la droite $(WU)$ et avec la droite $(WV)$, alors
$$\frac{PU}{PV} = \frac{WU}{WV} .$$

*Démonstration.* L'angle $\alpha$ n'est pas droit : sinon $(WU)$ et $(WV)$ seraient toutes les deux perpendiculaires à $(WP)$ en $W$, donc confondues. Il n'est pas nul non plus, car $P$ n'est pas sur $(WU)$ : sinon $P$ serait le point commun $U$ des droites $(WU)$ et $(UV)$. De même, $P$ n'est pas sur $(WV)$.

Soit $H$ le pied de la perpendiculaire menée de $P$ à la droite $(WU)$. Dans le triangle $WHP$, rectangle en $H$, l'angle en $W$ est aigu : c'est donc l'angle $\alpha$ entre les droites $(WU)$ et $(WP)$. Ainsi $PH = WP \sin\alpha$. Le même calcul avec la droite $(WV)$ montre que $P$ est aussi à la distance $WP \sin\alpha$ de $(WV)$. On note $h = WP \sin\alpha$ cette distance commune, et $k$ la distance de $W$ à la droite $(UV)$.

On calcule l'aire du triangle $WPU$ de deux façons, avec la base $WU$ et la hauteur $h$, puis avec la base $PU$ et la hauteur $k$. On fait de même pour le triangle $WPV$ :
$$\frac{1}{2}\, WU \cdot h = \frac{1}{2}\, PU \cdot k \qquad \text{et} \qquad \frac{1}{2}\, WV \cdot h = \frac{1}{2}\, PV \cdot k .$$
En divisant membre à membre, on obtient $\frac{WU}{WV} = \frac{PU}{PV}$. $\square$

### Étape 6 : $\frac{DB}{EC} = \frac{FB}{FC}$

D'après l'étape 3, la droite $(FD)$ est la droite $(FM_C)$. Le point $M_C$ est le milieu de l'arc $AB$ qui ne contient pas $C$, et $F$ est sur l'autre arc (étape 2). D'après l'étape 1, $(FD)$ est la bissectrice de l'angle $\widehat{AFB}$ : elle fait le même angle avec $(FA)$ et avec $(FB)$.

Le point $D$ est sur $(AB)$, différent de $A$ et de $B$ (étape 3), et $F$, $A$, $B$ ne sont pas alignés. Le lemme, avec $W = F$, $U = A$, $V = B$ et $P = D$, donne
$$\frac{DA}{DB} = \frac{FA}{FB}, \qquad \text{donc} \qquad DB = \frac{FB}{FA} \times DA .$$
De la même façon, avec le point $M_B$ et le point $E$,
$$EC = \frac{FC}{FA} \times EA .$$
Comme $DA = EA$ (étape 2), en divisant la première égalité par la seconde,
$$\frac{DB}{EC} = \frac{FB}{FC} .$$

### Étape 7 : $\frac{JB}{JC} = \frac{FB}{FC}$

Le point $F$ est sur l'arc $BC$ qui ne contient pas $A$, et $N$ est le milieu de l'autre arc. D'après l'étape 1, $(FN)$ est la bissectrice de l'angle $\widehat{BFC}$. Notons $\beta = \widehat{BFC}$ : la droite $(FN)$ fait l'angle $\frac{\beta}{2}$ avec $(FB)$ et avec $(FC)$.

Les points $M$ et $N$ sont sur la médiatrice de $[BC]$, qui passe par $O$ : $[MN]$ est un diamètre de $\Gamma$. Comme $F$ est sur $\Gamma$, différent de $M$ et de $N$, l'angle $\widehat{MFN}$ est droit. La droite $(FM)$ est donc perpendiculaire à $(FN)$, et elle fait l'angle $90^\circ - \frac{\beta}{2}$ avec $(FB)$ comme avec $(FC)$. On dit que $(FM)$ est la bissectrice extérieure de l'angle $\widehat{BFC}$.

Le point $J$ est sur $(FM)$ et sur $(BC)$, différent de $B$ et de $C$ (étape 4). Le lemme, avec $W = F$, $U = B$, $V = C$ et $P = J$, donne
$$\frac{JB}{JC} = \frac{FB}{FC} .$$

### Étape 8 : la droite $(DE)$ coupe $(BC)$ en un point $L$ tel que $\frac{LB}{LC} = \frac{DB}{EC}$

La droite $(DE)$ n'est pas parallèle à $(BC)$ : sinon, d'après le théorème de Thalès dans le triangle $ABC$, on aurait $\frac{AD}{AB} = \frac{AE}{AC}$, donc $AB = AC$ puisque $AD = AE$. On note $L$ le point d'intersection de $(DE)$ et $(BC)$. Il est différent de $C$ : sinon la droite $(DE)$ serait la droite $(EC)$, c'est-à-dire $(AC)$, et $D$ serait à la fois sur $(AC)$ et sur $(AB)$, donc en $A$. De même, $L \neq B$.

Le point $E$ n'est pas sur $(AB)$, donc la droite $(DE)$ n'est pas parallèle à $(AB)$. Elle coupe la parallèle à $(AB)$ passant par $C$ en un point $G$.

- Les droites $(BD)$ et $(CG)$ sont parallèles, et les droites $(BC)$ et $(DG)$ se coupent en $L$. Le théorème de Thalès donne $\frac{LB}{LC} = \frac{BD}{CG}$.
- Les droites $(AD)$ et $(CG)$ sont parallèles, et les droites $(AC)$ et $(DG)$ se coupent en $E$. Le théorème de Thalès donne $\frac{EA}{EC} = \frac{AD}{CG}$. Comme $AD = EA$, on obtient $CG = EC$.

Donc
$$\frac{LB}{LC} = \frac{DB}{EC} .$$

### Étape 9 : conclusion

Notons $t = \frac{FB}{FC}$. D'après les étapes 6, 7 et 8,
$$\frac{JB}{JC} = t \qquad \text{et} \qquad \frac{LB}{LC} = t ,$$
et $t \neq 1$ d'après l'étape 4.

**Les points $J$ et $L$ sont tous les deux sur la droite $(BC)$, en dehors du segment $[BC]$.** Pour $J$, c'est l'étape 4. Pour $L$, remarquons d'abord que ni $A$ ni $B$ n'est sur $(DE)$ : sinon cette droite serait $(AB)$, et $E$ serait sur $(AB)$. Le point $D$ de $(DE)$ est strictement entre $A$ et $B$, donc $A$ et $B$ sont de part et d'autre de $(DE)$. De même, $A$ et $C$ sont de part et d'autre de $(DE)$. Donc $B$ et $C$ sont du même côté de $(DE)$, et le segment $[BC]$ ne rencontre pas $(DE)$.

**En dehors du segment $[BC]$, un seul point $P$ de la droite $(BC)$ vérifie $\frac{PB}{PC} = t$.**

- Si $C$ est entre $B$ et $P$, alors $PB = PC + BC$, donc $PB > PC$ et $t > 1$. L'égalité $PC + BC = t \times PC$ donne $PC = \frac{BC}{t - 1}$.
- Si $B$ est entre $P$ et $C$, alors $PC = PB + BC$, donc $t < 1$. L'égalité $PB = t \times (PB + BC)$ donne $PB = \frac{t \times BC}{1 - t}$.

Dans les deux cas, la valeur de $t$ dit de quel côté de $[BC]$ se trouve $P$, et à quelle distance : le point $P$ est entièrement déterminé.

Donc $L = J$. **Les trois droites $(DE)$, $(BC)$ et $(FM)$ passent par le point $J$ : elles sont concourantes.**

## Going further

- Le cercle $\mathcal{C}$ s'appelle le cercle mixtilinéaire inscrit associé à $A$. Il a une autre propriété classique : le centre $I$ du cercle inscrit dans $ABC$ est sur la droite $(DE)$, et même au milieu de $[DE]$. Le corrigé officiel la démontre avec le théorème de Pascal, appliqué aux six points $A$, $B$, $M_B$, $F$, $M_C$, $C$ du cercle $\Gamma$.
- Que se passe-t-il quand $AB = AC$ ? Dessine la figure : le point $F$ est alors en $M$, et $(DE)$ est parallèle à $(BC)$.
- Les étapes 5 et 8 sont deux cas particuliers de résultats plus généraux : le théorème de la bissectrice, et le théorème de Ménélaüs. Cherche leurs énoncés, et démontre-les avec les mêmes idées.
