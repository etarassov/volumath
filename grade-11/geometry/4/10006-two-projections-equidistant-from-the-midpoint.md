---
id: "10006"
title: "Deux projections à égale distance du milieu"
grade: 11
theme: geometry
difficulty: 4
duration_min: 45
tags: [produit scalaire, projection orthogonale, milieu, trigonometrie, coordonnees]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 1 (géométrie)"
  reference: "2017-10_ofm-2012-2013-envoi1.pdf, Exercices communs, exercice 6 ; corrigé 2017-10_ofm-2012-2013-envoi1-corrige.pdf (le corrigé passe par des angles orientés ; la solution ci-dessous utilise le produit scalaire)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi1.pdf"
---

## Statement

$ABC$ est un triangle et $O$ un point à l'intérieur de ce triangle. On note $D$ le pied de la perpendiculaire à $(BC)$ passant par $O$, $E$ le pied de la perpendiculaire à $(AC)$ passant par $O$, et $F$ le milieu du segment $[AB]$.

![Le triangle ABC, le point O, ses projections D sur (BC) et E sur (AC), et le milieu F de [AB] relié à D et à E](10006-figure-1.svg)

Montrer que si $DF = EF$, alors les angles $\widehat{OBD}$ et $\widehat{OAE}$ sont égaux.

## Hints

1. Travaille avec des vecteurs d'origine $O$. Comme $2\,\overrightarrow{OF} = \overrightarrow{OA} + \overrightarrow{OB}$, développe $FE^2 = \left(\overrightarrow{OE} - \overrightarrow{OF}\right)^2$.
2. Comme $(OE)$ est perpendiculaire à $(EA)$, le produit scalaire $\overrightarrow{OE} \cdot \overrightarrow{OA}$ se simplifie beaucoup. Tu dois obtenir $FE^2 = OF^2 - \overrightarrow{OE} \cdot \overrightarrow{OB}$, et une formule semblable pour $FD^2$.
3. L'hypothèse devient $\overrightarrow{OE} \cdot \overrightarrow{DB} = \overrightarrow{OD} \cdot \overrightarrow{EA}$. Pour calculer ces deux produits, place-toi dans un repère d'origine $C$ dont l'axe des abscisses est $(CB)$.
4. Les deux produits font apparaître le même facteur $\sin \widehat{ACB}$. Il reste une égalité entre les côtés des deux triangles rectangles $AEO$ et $BDO$.

## Solution

### L'hypothèse traduite par le produit scalaire

Comme $F$ est le milieu de $[AB]$, on a $2\,\overrightarrow{OF} = \overrightarrow{OA} + \overrightarrow{OB}$. Développons :
$$FE^2 = \left(\overrightarrow{OE} - \overrightarrow{OF}\right)^2 = OE^2 - 2\,\overrightarrow{OE} \cdot \overrightarrow{OF} + OF^2 = OE^2 - \overrightarrow{OE} \cdot \overrightarrow{OA} - \overrightarrow{OE} \cdot \overrightarrow{OB} + OF^2 .$$

Le vecteur $\overrightarrow{EA}$ est porté par $(AC)$, donc il est orthogonal à $\overrightarrow{OE}$. Ainsi
$$\overrightarrow{OE} \cdot \overrightarrow{OA} = \overrightarrow{OE} \cdot \left(\overrightarrow{OE} + \overrightarrow{EA}\right) = OE^2 + 0 = OE^2 ,$$
et il reste
$$FE^2 = OF^2 - \overrightarrow{OE} \cdot \overrightarrow{OB} .$$

Le même calcul, avec $D$ à la place de $E$ et les rôles de $A$ et $B$ échangés, donne
$$FD^2 = OF^2 - \overrightarrow{OD} \cdot \overrightarrow{OA} .$$

Faisons la différence, en écrivant $\overrightarrow{OB} = \overrightarrow{OD} + \overrightarrow{DB}$ et $\overrightarrow{OA} = \overrightarrow{OE} + \overrightarrow{EA}$ :
$$FD^2 - FE^2 = \overrightarrow{OE} \cdot \overrightarrow{OB} - \overrightarrow{OD} \cdot \overrightarrow{OA} = \overrightarrow{OE} \cdot \overrightarrow{DB} - \overrightarrow{OD} \cdot \overrightarrow{EA} ,$$
car les deux termes $\overrightarrow{OE} \cdot \overrightarrow{OD}$ se compensent. Donc
$$DF = EF \iff \overrightarrow{OE} \cdot \overrightarrow{DB} = \overrightarrow{OD} \cdot \overrightarrow{EA} .$$

### Le calcul des deux produits

Notons $\gamma = \widehat{ACB}$. Prenons un repère orthonormé d'origine $C$, dont l'axe des abscisses est la demi-droite $[CB)$, et tel que $A$ ait une ordonnée positive. Le vecteur unitaire de $[CB)$ est $\vec v = (1\,;\,0)$ et celui de $[CA)$ est $\vec u = (\cos\gamma\,;\,\sin\gamma)$.

- Les points $D$ et $B$ sont sur l'axe des abscisses : $\overrightarrow{DB} = \delta\,\vec v$ pour un certain nombre $\delta$, avec $|\delta| = DB$.
- Les points $E$ et $A$ sont sur $(CA)$ : $\overrightarrow{EA} = \varepsilon\,\vec u$ pour un certain nombre $\varepsilon$, avec $|\varepsilon| = EA$.
- Le point $O$ est au-dessus de $(CB)$, puisqu'il est du même côté que $A$. Le vecteur $\overrightarrow{OD}$ descend verticalement : $\overrightarrow{OD} = (0\,;\,-OD)$.
- Le vecteur $\overrightarrow{OE}$ est perpendiculaire à $(CA)$, donc dirigé par $\vec n = (-\sin\gamma\,;\,\cos\gamma)$ ou par son opposé. Le point $B$ vérifie $\vec n \cdot \overrightarrow{CB} < 0$, et $O$ est du même côté de $(CA)$ que $B$, donc $\overrightarrow{OE}$ va de ce côté vers la droite $(CA)$ : $\overrightarrow{OE} = OE \times \vec n$.

On calcule alors :
$$\overrightarrow{OE} \cdot \overrightarrow{DB} = OE \times \delta \times (\vec n \cdot \vec v) = -\,\delta \times OE \times \sin\gamma ,$$
$$\overrightarrow{OD} \cdot \overrightarrow{EA} = \varepsilon \times (\overrightarrow{OD} \cdot \vec u) = -\,\varepsilon \times OD \times \sin\gamma .$$

Comme $\sin\gamma \neq 0$, l'hypothèse $DF = EF$ devient
$$\delta \times OE = \varepsilon \times OD .$$

### Les deux triangles rectangles

En prenant les valeurs absolues, on obtient $DB \times OE = EA \times OD$, c'est-à-dire
$$\frac{OE}{EA} = \frac{OD}{DB} .$$

Dans le triangle $AEO$, rectangle en $E$, on a $\tan \widehat{OAE} = \dfrac{OE}{EA}$. Dans le triangle $BDO$, rectangle en $D$, on a $\tan \widehat{OBD} = \dfrac{OD}{DB}$. Ces deux tangentes sont égales. Les deux angles sont aigus (ce sont des angles non droits de triangles rectangles), et deux angles aigus qui ont la même tangente sont égaux.

**Conclusion.** Si $DF = EF$, alors $\widehat{OBD} = \widehat{OAE}$.
