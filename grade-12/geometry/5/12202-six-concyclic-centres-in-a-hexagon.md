---
id: "12202"
title: "Six centres cocycliques dans un hexagone"
grade: 12
theme: geometry
difficulty: 5
duration_min: 75
tags: [hexagone, cercle circonscrit, mediatrice, loi des sinus, angle inscrit, aire, cocyclicite, demonstration]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection pour le Romanian Master of Mathematics, novembre 2014"
  reference: "2017-10_ofm-2014-2015-test-rmm.pdf, exercice 2 ; corrigé 2017-10_ofm-2014-2015-test-rmm-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-test-rmm.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2014-2015-test-rmm.pdf"
---

## Statement

Soit $ABCDEF$ un hexagone convexe. On suppose que ses trois grandes diagonales $(AD)$, $(BE)$ et $(CF)$ passent par un même point $M$.

On suppose de plus que les centres des cercles circonscrits aux six triangles $MAB$, $MBC$, $MCD$, $MDE$, $MEF$ et $MFA$ sont sur un même cercle.

Montrer que les trois quadrilatères $ABDE$, $BCEF$ et $CDFA$ ont la même aire.

## Hints

1. Exprime l'aire du quadrilatère $ABDE$ à l'aide de ses diagonales $AD$ et $BE$ et de l'angle $\widehat{AMB}$ qu'elles font entre elles. Que faut-il alors démontrer ?
2. Note $O_1, \ldots, O_6$ les six centres, dans l'ordre de l'énoncé. Les points $O_6$ et $O_1$ sont tous les deux à égale distance de $M$ et de $A$ : sur quelle droite sont-ils ? Quelle est sa direction ?
3. Tu dois trouver trois paires de cordes parallèles du cercle qui passe par les $O_i$. Deux cordes parallèles d'un cercle sont symétriques par rapport à un diamètre : déduis-en que $O_1O_4 = O_2O_5 = O_3O_6$.
4. Les droites $(O_2O_3)$ et $(O_5O_6)$ sont parallèles et leur distance vaut $\dfrac{CF}{2}$. Calcule cette distance autrement, avec la loi des sinus dans les triangles $O_2O_3O_6$ et $O_1O_2O_6$.

## Solution

**Notations.** On note $O_1, O_2, O_3, O_4, O_5, O_6$ les centres des cercles circonscrits à $MAB$, $MBC$, $MCD$, $MDE$, $MEF$, $MFA$, et $\Gamma$ le cercle de rayon $R$ qui passe par ces six points. On note $A', B', C', D', E', F'$ les milieux de $[MA], [MB], [MC], [MD], [ME], [MF]$.

Comme l'hexagone est convexe et que $M$ est sur les trois diagonales, les demi-droites $[MA), [MB), \ldots, [MF)$ tournent dans cet ordre autour de $M$, et $[MA)$, $[MD)$ sont opposées. On pose

$$\alpha = \widehat{AMB}, \qquad \beta = \widehat{BMC}, \qquad \gamma = \widehat{CMD}, \qquad \text{avec } \alpha + \beta + \gamma = 180°.$$

**Deux rappels.**

*Aire d'un quadrilatère.* L'aire d'un triangle vaut $\frac12\, ab \sin \theta$, où $a$ et $b$ sont deux côtés et $\theta$ l'angle entre eux. Dans $ABDE$, le point $M$ est l'intersection des diagonales $[AD]$ et $[BE]$. On découpe $ABDE$ en quatre triangles autour de $M$. Les angles en $M$ valent $\alpha$ ou $180° - \alpha$, qui ont le même sinus, donc

$$\text{aire}(ABDE) = \tfrac12 \sin\alpha \,(MA \cdot MB + MB \cdot MD + MD \cdot ME + ME \cdot MA) = \tfrac12 \sin\alpha\,(MA + MD)(MB + ME),$$

c'est-à-dire $\text{aire}(ABDE) = \frac12\, AD \cdot BE \cdot \sin\alpha$. De même, $\text{aire}(BCEF) = \frac12\, BE \cdot CF \cdot \sin\beta$ et $\text{aire}(CDFA) = \frac12\, CF \cdot AD \cdot \sin\gamma$.

*Loi des sinus.* Si un triangle $XYZ$ est inscrit dans un cercle de centre $O$ et de rayon $R$, alors $YZ = 2R \sin \widehat{X}$. En effet, d'après le théorème de l'angle inscrit, l'angle au centre $\widehat{YOZ}$ vaut $2\widehat{X}$ ou $360° - 2\widehat{X}$. Le triangle $OYZ$ est isocèle de sommet $O$, sa hauteur issue de $O$ coupe $[YZ]$ en son milieu et coupe l'angle en $O$ en deux, d'où $\frac{YZ}{2} = R \sin \widehat{X}$.

**Ce qu'il faut démontrer.** On va trouver une longueur $k$ telle que

$$CF = 2k \sin\alpha, \qquad AD = 2k\sin\beta, \qquad BE = 2k\sin\gamma. \qquad (\star)$$

Alors les trois aires vaudront toutes

$$\frac{AD \cdot BE \cdot CF}{4k}.$$

Par exemple $\text{aire}(ABDE) = \frac12\, AD \cdot BE \cdot \sin\alpha = \frac12\, AD \cdot BE \cdot \frac{CF}{2k}$, et de même pour les deux autres.

**Étape 1. Six droites perpendiculaires aux diagonales.**

Les points $O_1$ (centre du cercle de $MAB$) et $O_6$ (centre du cercle de $MFA$) sont tous deux à égale distance de $M$ et de $A$. La droite $(O_6O_1)$ est donc la médiatrice de $[MA]$ : elle passe par $A'$ et elle est perpendiculaire à $(AD)$. De la même façon :

- $(O_1O_2)$ est la médiatrice de $[MB]$, perpendiculaire à $(BE)$ ;
- $(O_2O_3)$ est la médiatrice de $[MC]$, perpendiculaire à $(CF)$ ;
- $(O_3O_4)$ est la médiatrice de $[MD]$, perpendiculaire à $(AD)$ ;
- $(O_4O_5)$ est la médiatrice de $[ME]$, perpendiculaire à $(BE)$ ;
- $(O_5O_6)$ est la médiatrice de $[MF]$, perpendiculaire à $(CF)$.

On obtient trois paires de droites parallèles : $(O_6O_1) \parallel (O_3O_4)$, $(O_1O_2) \parallel (O_4O_5)$ et $(O_2O_3) \parallel (O_5O_6)$.

**Étape 2. Les trois « grandes diagonales » des centres ont la même longueur.**

Prenons deux cordes parallèles $[PQ]$ et $[ST]$ du cercle $\Gamma$. La médiatrice d'une corde passe par le centre de $\Gamma$. Les deux cordes ont la même direction, donc leurs médiatrices sont une seule et même droite $\Delta$, un diamètre. La symétrie d'axe $\Delta$ échange $P$ et $Q$, et échange $S$ et $T$. Elle envoie donc le segment $[PS]$ sur le segment $[QT]$, d'où $PS = QT$.

- Avec les cordes $[O_6O_1]$ et $[O_3O_4]$ : $O_6O_3 = O_1O_4$.
- Avec les cordes $[O_1O_2]$ et $[O_4O_5]$ : $O_1O_4 = O_2O_5$.
- Avec les cordes $[O_2O_3]$ et $[O_5O_6]$ : $O_2O_5 = O_3O_6$.

Les trois longueurs $O_1O_4$, $O_2O_5$, $O_3O_6$ sont donc égales. On note $k$ leur valeur commune.

**Étape 3. La distance entre $(O_2O_3)$ et $(O_5O_6)$, première façon.**

Ces deux droites sont perpendiculaires à $(CF)$ et la coupent en $C'$ et en $F'$. Leur distance est donc $C'F'$. Comme $M$ est entre $C$ et $F$, on a $C'F' = \frac{MC}{2} + \frac{MF}{2} = \frac{CF}{2}$.

Soit $K$ le pied de la perpendiculaire à $(O_2O_3)$ menée par $O_6$. On a donc

$$O_6K = \frac{CF}{2}.$$

**Étape 4. La même distance, deuxième façon.**

Le triangle $O_2KO_6$ est rectangle en $K$, donc $O_6K = O_2O_6 \sin \widehat{KO_2O_6}$. Le point $K$ est sur la droite $(O_2O_3)$, donc l'angle $\widehat{KO_2O_6}$ est égal à $\widehat{O_3O_2O_6}$ ou à son supplémentaire. Ces deux angles ont le même sinus, donc

$$O_6K = O_2O_6 \cdot \sin\widehat{O_3O_2O_6}.$$

Le triangle $O_2O_3O_6$ est inscrit dans $\Gamma$. La loi des sinus donne $O_3O_6 = 2R \sin \widehat{O_3O_2O_6}$, c'est-à-dire

$$\sin\widehat{O_3O_2O_6} = \frac{k}{2R}.$$

Le triangle $O_1O_2O_6$ est lui aussi inscrit dans $\Gamma$, donc $O_2O_6 = 2R \sin \widehat{O_2O_1O_6}$. Or la droite $(O_1O_2)$ est perpendiculaire à $(BE)$ et la droite $(O_1O_6)$ est perpendiculaire à $(AD)$. Deux angles dont les côtés sont perpendiculaires deux à deux sont égaux ou supplémentaires, donc $\sin \widehat{O_2O_1O_6} = \sin \widehat{AMB} = \sin \alpha$. Ainsi $O_2O_6 = 2R\sin\alpha$, et

$$O_6K = 2R \sin\alpha \cdot \frac{k}{2R} = k\sin\alpha.$$

**Étape 5. On compare.**

Les étapes 3 et 4 donnent $\dfrac{CF}{2} = k\sin\alpha$, donc $CF = 2k\sin\alpha$.

L'énoncé ne change pas si l'on décale tous les noms de deux crans, c'est-à-dire si l'on remplace $A, B, C, D, E, F$ par $C, D, E, F, A, B$ (et $O_1, \ldots, O_6$ par $O_3, O_4, O_5, O_6, O_1, O_2$). La longueur $k$ ne change pas, puisque $O_1O_4 = O_2O_5 = O_3O_6$. Dans ce décalage, $CF$ devient $EB$ et l'angle $\widehat{AMB}$ devient $\widehat{CMD} = \gamma$, d'où $BE = 2k\sin\gamma$. En décalant encore de deux crans, $CF$ devient $AD$ et l'angle devient $\widehat{EMF}$, qui est opposé par le sommet à $\widehat{BMC}$ : on obtient $AD = 2k\sin\beta$.

Les trois égalités $(\star)$ sont démontrées.

**Conclusion.** Les trois quadrilatères ont la même aire :

$$\text{aire}(ABDE) = \text{aire}(BCEF) = \text{aire}(CDFA) = \frac{AD \cdot BE \cdot CF}{4k}, \qquad \text{où } k = O_1O_4 = O_2O_5 = O_3O_6.$$
