---
id: "10059"
title: "Deux points à égale distance du milieu de [AC]"
grade: 11
theme: geometry
difficulty: 3
duration_min: 40
tags: [triangles semblables, hauteur, repere, produit scalaire, mediatrice, distances]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 3 (géométrie)"
  reference: "2017-10_ofm-2016-2017-envoi-3.pdf, Exercices du groupe A, exercice 8 ; corrigé 2017-10_ofm-2016-2017-envoi-3-solutions.pdf (le corrigé montre que K est sur le cercle de diamètre [AB] puis que M, K et le pied de la hauteur issue de A sont alignés ; ici on calcule dans un repère. L'énoncé original suppose aussi que K est à l'intérieur du triangle ; c'est automatique, et on a retiré cette hypothèse)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-3.pdf"
---

## Statement

Soit $ABC$ un triangle dont les trois angles sont aigus. Soit $D$ un point du segment $[BC]$ tel que
$$\widehat{ADB} = \widehat{BAC} .$$
Soit $H$ le pied de la hauteur issue de $B$ dans le triangle $ABC$. La perpendiculaire à $(BC)$ passant par $H$ coupe la droite $(AD)$ en $K$. Soit $M$ le milieu de $[AC]$.

![Le triangle ABC, le point D de [BC] avec les deux angles égaux marqués, la hauteur issue de B qui arrive en H, la perpendiculaire à (BC) passant par H qui coupe (AD) en K, et le milieu M de [AC]](10059-figure-1.svg)

Montrer que $MH = MK$.

## Hints

1. Les triangles $BDA$ et $BAC$ ont deux angles égaux. Déduis-en la longueur $BD$ en fonction de $BA$ et de $BC$.
2. Soit $T$ le pied de la hauteur issue de $A$. Prends un repère orthonormé d'origine $T$ dans lequel $A(0\,;\,h)$, $B(-p\,;\,0)$ et $C(q\,;\,0)$. Calcule l'abscisse de $D$.
3. Calcule les coordonnées de $H$ avec un produit scalaire, puis celles de $K$.
4. Calcule la somme des ordonnées de $H$ et de $K$, et compare-la à l'ordonnée de $M$.

## Solution

### Étape 1 : la longueur $BD$

Le point $D$ est sur $[BC]$, et $D \neq B$ puisque l'angle $\widehat{ADB}$ existe. Les triangles $BDA$ et $BAC$ ont donc le même angle en $B$, et l'énoncé dit que $\widehat{BDA} = \widehat{BAC}$. Deux triangles qui ont deux angles égaux sont semblables, et leurs côtés sont proportionnels :
$$\frac{BD}{BA} = \frac{BA}{BC}, \qquad \text{donc} \qquad BD = \frac{BA^2}{BC} .$$

### Étape 2 : un repère

Soit $T$ le pied de la hauteur issue de $A$. Comme les angles en $B$ et en $C$ sont aigus, $T$ est strictement entre $B$ et $C$. On prend un repère orthonormé d'origine $T$, dont l'axe des abscisses est la droite $(BC)$ et l'axe des ordonnées la droite $(TA)$ :
$$A(0\,;\,h), \qquad B(-p\,;\,0), \qquad C(q\,;\,0), \qquad M\left(\frac{q}{2}\,;\,\frac{h}{2}\right),$$
avec $h > 0$, $p > 0$ et $q > 0$.

**L'angle en $A$ est aigu**, donc $\overrightarrow{AB} \cdot \overrightarrow{AC} > 0$. Or $\overrightarrow{AB}(-p\,;\,-h)$ et $\overrightarrow{AC}(q\,;\,-h)$, donc $\overrightarrow{AB} \cdot \overrightarrow{AC} = h^2 - pq$, et
$$h^2 - pq > 0 .$$

**Le point $D$.** On a $BA^2 = p^2 + h^2$ et $BC = p + q$. D'après l'étape 1, $D$ est le point de $[BC]$ tel que
$$BD = \frac{p^2 + h^2}{p + q} ,$$
donc son abscisse est
$$d = -p + \frac{p^2 + h^2}{p + q} = \frac{-p^2 - pq + p^2 + h^2}{p + q} = \frac{h^2 - pq}{p + q} .$$
En particulier $d > 0$ : la droite $(AD)$ n'est pas l'axe des ordonnées. Elle a pour équation
$$y = h\left(1 - \frac{x}{d}\right) ,$$
puisque cette droite passe par $A(0\,;\,h)$ et par $D(d\,;\,0)$.

### Étape 3 : le point $H$

Le point $H$ est sur la droite $(AC)$, donc $\overrightarrow{AH} = t\,\overrightarrow{AC}$ pour un réel $t$, et $H(tq\,;\,h - th)$. La droite $(BH)$ est perpendiculaire à $(AC)$, donc $\overrightarrow{BH} \cdot \overrightarrow{AC} = 0$. Comme $\overrightarrow{BH}(tq + p\,;\,h - th)$,
$$(tq + p)\,q - h\,(h - th) = 0, \qquad \text{c'est-à-dire} \qquad t\,(q^2 + h^2) = h^2 - pq .$$
On pose $N = q^2 + h^2$. On obtient
$$t = \frac{h^2 - pq}{N} ,$$
puis
$$x_H = \frac{q\,(h^2 - pq)}{N}, \qquad y_H = h\,(1 - t) = \frac{h\,(q^2 + h^2 - h^2 + pq)}{N} = \frac{h\,(q^2 + pq)}{N} .$$

### Étape 4 : le point $K$

La perpendiculaire à $(BC)$ passant par $H$ est la droite verticale d'abscisse $x_H$. Elle coupe la droite $(AD)$, qui n'est pas verticale, en un seul point $K$, d'abscisse $x_H$. On calcule
$$\frac{x_H}{d} = \frac{q\,(h^2 - pq)}{N} \times \frac{p + q}{h^2 - pq} = \frac{q\,(p + q)}{N} ,$$
donc, d'après l'étape 2,
$$y_K = h\left(1 - \frac{q\,(p + q)}{N}\right) = \frac{h\,(q^2 + h^2 - pq - q^2)}{N} = \frac{h\,(h^2 - pq)}{N} .$$

### Étape 5 : conclusion

On fait la somme des deux ordonnées :
$$y_H + y_K = \frac{h\,(q^2 + pq + h^2 - pq)}{N} = \frac{h\,(q^2 + h^2)}{N} = h .$$
Donc
$$y_K - \frac{h}{2} = \frac{h}{2} - y_H .$$
Les points $H$ et $K$ ont la même abscisse $x_H$, donc
$$MH^2 = \left(x_H - \frac{q}{2}\right)^2 + \left(y_H - \frac{h}{2}\right)^2 \qquad \text{et} \qquad MK^2 = \left(x_H - \frac{q}{2}\right)^2 + \left(y_K - \frac{h}{2}\right)^2$$
sont égaux. **On a bien $MH = MK$.**

Autrement dit, quand $H \neq K$, la droite parallèle à $(BC)$ passant par $M$ est la médiatrice du segment $[HK]$.

## Going further

- Montre que $0 < x_H < d$. Le point $K$ est donc toujours sur le segment $[AD]$, à l'intérieur du triangle : l'énoncé original le supposait, mais c'est automatique.
- Le corrigé officiel raisonne sans repère. Montre que $\widehat{ABH} = \widehat{AKH}$, et déduis-en que $K$ est sur le cercle de diamètre $[AB]$, qui passe aussi par $H$ et par $T$. Montre ensuite que $M$, $K$ et $T$ sont alignés, et conclus avec $MA = MT$ et le parallélisme de $(AT)$ et $(HK)$.
- Le point $D$ existe sur le segment $[BC]$ seulement si $BA \leqslant BC$. Pourquoi ?
