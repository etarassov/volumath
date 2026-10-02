---
id: "10020"
title: "Deux centres de cercles et un carré"
grade: 10
theme: geometry
difficulty: 2
duration_min: 30
tags: [carre, cercle-circonscrit, mediatrice, coordonnees, vecteurs]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 1 (géométrie)"
  reference: "2017-10_ofm-2013-2014-envoi-1.pdf, Exercices du groupe B, exercice 2 ; corrigé 2017-10_ofm-2013-2014-envoi-1-solutions.pdf (le corrigé utilise l'angle au centre ; la solution est refaite ici avec des coordonnées, la méthode du corrigé est donnée en prolongement)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-1.pdf"
---

## Statement

Soit $ABCD$ un carré. On choisit un point $E$ sur la diagonale $[BD]$, différent de $B$ et de $D$. On note $O_1$ le centre du cercle circonscrit au triangle $ABE$, et $O_2$ le centre du cercle circonscrit au triangle $ADE$.

![Le carré ABCD, le point E sur la diagonale [BD], et les cercles en pointillés passant par A, B, E et par A, D, E, de centres O1 et O2](10020-figure-1.svg)

Montrer que $AO_1EO_2$ est un carré.

## Hints

1. Place le carré dans un repère orthonormé : $A(0\,;\,0)$, $B(1\,;\,0)$, $D(0\,;\,1)$. Écris les coordonnées de $E$ à l'aide d'un nombre $t$ tel que $\overrightarrow{BE} = t\,\overrightarrow{BD}$.
2. Le point $O_1$ est à la même distance de $A$ et de $B$. Sur quelle droite se trouve-t-il ? Il est aussi à la même distance de $A$ et de $E$ : cela donne son ordonnée.
3. Une fois $O_1$ et $O_2$ connus, montre que $AO_1EO_2$ est un parallélogramme, puis que deux côtés consécutifs ont la même longueur et que les diagonales ont la même longueur.

## Solution

### Étape 1 : un repère

On prend le côté du carré comme unité de longueur, et le repère orthonormé $(A\,;\,\overrightarrow{AB}, \overrightarrow{AD})$. Alors
$$A(0\,;\,0), \qquad B(1\,;\,0), \qquad C(1\,;\,1), \qquad D(0\,;\,1).$$
Le point $E$ est sur $[BD]$, donc il existe un nombre $t$ tel que $\overrightarrow{BE} = t\,\overrightarrow{BD}$, avec $0 < t < 1$ car $E$ n'est ni $B$ ni $D$. Comme $\overrightarrow{BD} = (-1\,;\,1)$, on obtient $E(1 - t\,;\,t)$.

### Étape 2 : le point $O_1$

Le point $O_1$ est à la même distance de $A$ et de $B$, donc il est sur la médiatrice de $[AB]$, qui est la droite d'équation $x = \dfrac{1}{2}$. On écrit $O_1\left(\dfrac{1}{2}\,;\,y\right)$.

Il est aussi à la même distance de $A$ et de $E$ : $O_1A^2 = O_1E^2$, c'est-à-dire
$$\frac{1}{4} + y^2 = \left(\frac{1}{2} - t\right)^2 + (t - y)^2 = \frac{1}{4} - t + t^2 + t^2 - 2ty + y^2 .$$
Après simplification, $0 = -t + 2t^2 - 2ty$, soit $t\,(2t - 1 - 2y) = 0$. Comme $t \neq 0$, on trouve $y = t - \dfrac{1}{2}$, et
$$O_1\left(\frac{1}{2}\,;\,t - \frac{1}{2}\right).$$

### Étape 3 : le point $O_2$

De même, $O_2$ est sur la médiatrice de $[AD]$, d'équation $y = \dfrac{1}{2}$. On écrit $O_2\left(x\,;\,\dfrac{1}{2}\right)$. L'égalité $O_2A^2 = O_2E^2$ s'écrit
$$x^2 + \frac{1}{4} = (1 - t - x)^2 + \left(t - \frac{1}{2}\right)^2 = (1 - t)^2 - 2(1 - t)\,x + x^2 + t^2 - t + \frac{1}{4} .$$
On simplifie : $2(1 - t)\,x = (1 - t)^2 + t^2 - t = 2t^2 - 3t + 1 = (1 - t)(1 - 2t)$. Comme $t \neq 1$, on peut diviser par $2(1 - t)$, et $x = \dfrac{1}{2} - t$ :
$$O_2\left(\frac{1}{2} - t\,;\,\frac{1}{2}\right).$$

### Étape 4 : $AO_1EO_2$ est un carré

On a
$$\overrightarrow{AO_1} = \left(\frac{1}{2}\,;\,t - \frac{1}{2}\right), \qquad \overrightarrow{AO_2} = \left(\frac{1}{2} - t\,;\,\frac{1}{2}\right), \qquad \overrightarrow{AE} = (1 - t\,;\,t).$$

- **C'est un parallélogramme.** $\overrightarrow{AO_1} + \overrightarrow{AO_2} = (1 - t\,;\,t) = \overrightarrow{AE}$. Donc $\overrightarrow{O_2E} = \overrightarrow{AE} - \overrightarrow{AO_2} = \overrightarrow{AO_1}$, et $AO_1EO_2$ est un parallélogramme.
- **Deux côtés consécutifs sont égaux.** $AO_1^2 = \dfrac{1}{4} + \left(t - \dfrac{1}{2}\right)^2$ et $AO_2^2 = \left(\dfrac{1}{2} - t\right)^2 + \dfrac{1}{4}$, donc $AO_1 = AO_2$. Le parallélogramme est un losange.
- **Les diagonales sont égales.** $\overrightarrow{O_1O_2} = (-t\,;\,1 - t)$, donc $O_1O_2^2 = t^2 + (1 - t)^2$, et $AE^2 = (1 - t)^2 + t^2$. Donc $O_1O_2 = AE$. Un parallélogramme dont les diagonales ont la même longueur est un rectangle.

**Conclusion.** $AO_1EO_2$ est à la fois un losange et un rectangle : c'est un carré.

## Going further

Voici la méthode du corrigé, plus courte, qui utilise l'angle au centre : dans un cercle, un angle au centre est le double d'un angle inscrit qui intercepte le même arc.

L'angle $\widehat{ABE}$ est l'angle entre un côté et une diagonale du carré, il vaut $45°$. C'est un angle inscrit dans le cercle de centre $O_1$, donc l'angle au centre $\widehat{AO_1E}$ vaut $90°$. Comme $O_1A = O_1E$, le triangle $AO_1E$ est rectangle et isocèle en $O_1$. De même, avec $\widehat{ADE} = 45°$, le triangle $AO_2E$ est rectangle et isocèle en $O_2$. Les points $O_1$ et $O_2$ sont de part et d'autre de la droite $(AE)$, du côté de $B$ pour l'un et du côté de $D$ pour l'autre, donc $AO_1EO_2$ est un carré.
