---
id: "10036"
title: "Un triangle isocèle caché"
grade: 12
theme: geometry
difficulty: 5
duration_min: 60
tags: [triangle-isocele, trigonometrie, formules-d-addition, chasse-aux-angles, repere, tangente]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 5 (géométrie)"
  reference: "2017-10_ofm-2013-2014-envoi-5.pdf, Exercices du groupe A, exercice 9 ; corrigé 2017-10_ofm-2013-2014-envoi-5-solutions.pdf (le corrigé utilise la loi des sinus et la forme trigonométrique du théorème de Ceva ; ici l'hypothèse sur les angles est traduite dans un repère, et les formules d'addition sont démontrées ; l'hypothèse « AMB obtus » ne sert pas dans la preuve)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-5.pdf"
---

## Statement

Soit $ABC$ un triangle isocèle en $A$, et $D$ le pied de la hauteur issue de $A$. Soit $M$ un point à l'intérieur du triangle $ADC$ tel que l'angle $\widehat{AMB}$ soit obtus et que
$$\widehat{DBM} + \widehat{DAM} = \widehat{MCB} .$$
Les droites $(CM)$ et $(AD)$ se coupent en $P$, et les droites $(BM)$ et $(AD)$ se coupent en $Q$. Soit $S$ un point du segment $[AB]$, et $R$ un point de la demi-droite $[AM)$ qui n'est pas sur le segment $[AM]$, tels que
$$\widehat{SQB} = \widehat{DPC} \qquad \text{et} \qquad \widehat{MRQ} = 2\,\widehat{QAM} .$$

![Le triangle ABC isocèle en A, la hauteur [AD], le point M, les points P et Q sur [AD], et les points S et R. Les deux angles marqués, en P et en Q, sont égaux](10036-figure-1.svg)

Montrer que le triangle $QRS$ est isocèle.

## Hints

1. Note $\alpha = \widehat{BAD}$, $\beta = \widehat{CBM}$, $\gamma = \widehat{MCB}$ et $\theta = \widehat{DAM}$, de sorte que $\beta + \theta = \gamma$. Calcule l'angle $\widehat{BSQ}$ avec ces lettres.
2. Exprime la distance du point $Q$ à la droite $(AB)$ de deux façons, puis la distance de $Q$ à la droite $(AM)$ de deux façons. Tu obtiens $QS$ et $QR$ en fonction de $AQ$.
3. Tu dois trouver qu'il suffit de montrer que $\sin(\alpha + \beta + \gamma) = 2 \sin \alpha \cos \theta$.
4. Place $D$ à l'origine d'un repère, avec $B(-1\,;\,0)$ et $C(1\,;\,0)$. Donne les coordonnées de $A$, $Q$ et $P$ à l'aide de $\tan \alpha$, $\tan \beta$ et $\tan \gamma$, puis traduis l'égalité $\theta = \gamma - \beta$.

## Solution

**Rappel : les formules d'addition.** Pour tous angles $x$ et $y$,
$$\cos(x - y) = \cos x \cos y + \sin x \sin y .$$
En effet, les vecteurs unitaires $\vec u(\cos x\,;\,\sin x)$ et $\vec v(\cos y\,;\,\sin y)$ font entre eux un angle $x - y$, donc $\vec u \cdot \vec v = \cos(x - y)$, et en coordonnées $\vec u \cdot \vec v = \cos x \cos y + \sin x \sin y$. En remplaçant $y$ par $-y$, on obtient $\cos(x + y) = \cos x \cos y - \sin x \sin y$. En remplaçant $x$ par $90° - x$, et avec $\cos(90° - t) = \sin t$ et $\sin(90° - t) = \cos t$, on obtient
$$\sin(x + y) = \sin x \cos y + \cos x \sin y .$$
En particulier $\sin 2x = 2 \sin x \cos x$.

**Notations et position des points.** On note
$$\alpha = \widehat{BAD}, \qquad \beta = \widehat{CBM}, \qquad \gamma = \widehat{MCB}, \qquad \theta = \widehat{DAM} .$$
Le point $D$ est sur $[BC]$, donc $\widehat{DBM} = \beta$, et l'hypothèse s'écrit
$$\beta + \theta = \gamma . \qquad (\text{H})$$
Le point $M$ est à l'intérieur du triangle $ADC$, à droite de $(AD)$ sur la figure, et $B$ est à gauche. Le segment $[BM]$ traverse donc $[AD]$ en $Q$, et $Q$ est entre $B$ et $M$. La demi-droite issue de $C$ qui passe par $M$ sort du triangle $ADC$ par le côté $[AD]$, en $P$, donc $M$ est entre $C$ et $P$. Les points $P$ et $Q$ sont strictement entre $A$ et $D$, et $R$ est sur $[AM)$ au-delà de $M$.

### Étape 1 : les angles

- Le triangle $DPC$ est rectangle en $D$ et $\widehat{DCP} = \widehat{BCM} = \gamma$, donc $\widehat{DPC} = 90° - \gamma$. Ainsi $\widehat{SQB} = 90° - \gamma$.
- Le triangle $ABD$ est rectangle en $D$, donc $\widehat{ABD} = 90° - \alpha$. Le point $M$ est à l'intérieur de l'angle $\widehat{ABC}$, donc $\widehat{QBS} = \widehat{MBA} = 90° - \alpha - \beta$.
- Dans le triangle $BSQ$, on en déduit
$$\widehat{BSQ} = 180° - (90° - \alpha - \beta) - (90° - \gamma) = \alpha + \beta + \gamma .$$
Comme $S$ est entre $A$ et $B$, on a $\widehat{QSA} = 180° - (\alpha + \beta + \gamma)$.
- Le point $Q$ est sur $[AD]$ et $S$ sur $[AB]$, donc $\widehat{QAS} = \alpha$. De même $\widehat{QAR} = \widehat{DAM} = \theta$, et $\widehat{QRA} = \widehat{QRM} = 2\theta$.

### Étape 2 : les longueurs $QS$ et $QR$

Soit $H$ le pied de la perpendiculaire menée de $Q$ à la droite $(AB)$. L'angle $\widehat{QAB} = \alpha$ est aigu, et le triangle $AHQ$ est rectangle en $H$, donc $QH = AQ \sin \alpha$. Dans le triangle $QHS$, rectangle en $H$, l'angle en $S$ est $\widehat{QSA}$ ou son supplémentaire. Ils ont le même sinus, donc
$$QH = QS \sin \widehat{QSA} = QS \sin(\alpha + \beta + \gamma) .$$
(Si $S = H$, l'angle $\widehat{QSA}$ est droit et l'égalité reste vraie.) Donc
$$QS = \frac{AQ \sin \alpha}{\sin(\alpha + \beta + \gamma)} .$$

De la même façon, soit $K$ le pied de la perpendiculaire menée de $Q$ à la droite $(AM)$. On a $QK = AQ \sin \theta$, et aussi $QK = QR \sin 2\theta = 2\,QR \sin \theta \cos \theta$. Donc
$$QR = \frac{AQ}{2 \cos \theta} .$$

Ainsi $QS = QR$ si et seulement si
$$\sin(\alpha + \beta + \gamma) = 2 \sin \alpha \cos \theta . \qquad (\star)$$

### Étape 3 : l'hypothèse dans un repère

On prend un repère orthonormé d'origine $D$, avec $B(-1\,;\,0)$ et $C(1\,;\,0)$, et $A$ sur l'axe des ordonnées, au-dessus. On pose
$$a = \tan \alpha, \qquad b = \tan \beta, \qquad c = \tan \gamma .$$
Ces trois nombres sont strictement positifs, car les angles sont aigus.

- Dans le triangle $ADB$, rectangle en $D$, $\tan \alpha = \dfrac{DB}{DA} = \dfrac{1}{DA}$, donc $A\left(0\,;\,\dfrac{1}{a}\right)$.
- Dans le triangle $QDB$, rectangle en $D$, $DQ = DB \tan \beta = b$, donc $Q(0\,;\,b)$. De même $P(0\,;\,c)$.
- La droite $(BQ)$ a pour équation $y = b(x + 1)$, et la droite $(CP)$ a pour équation $y = c(1 - x)$. Leur point commun $M$ a pour coordonnées
$$x_M = \frac{c - b}{b + c}, \qquad y_M = \frac{2bc}{b + c} .$$
- Soit $N(0\,;\,y_M)$ le projeté de $M$ sur $(AD)$. Le triangle $ANM$ est rectangle en $N$, donc
$$\tan \theta = \frac{NM}{AN} = \frac{x_M}{\frac{1}{a} - y_M} = \frac{a(c - b)}{b + c - 2abc} .$$

D'autre part, d'après (H) et les formules d'addition, en divisant par $\cos \beta \cos \gamma$,
$$\tan \theta = \tan(\gamma - \beta) = \frac{\sin \gamma \cos \beta - \cos \gamma \sin \beta}{\cos \gamma \cos \beta + \sin \gamma \sin \beta} = \frac{c - b}{1 + bc} .$$
On a $\theta > 0$, donc $\gamma > \beta$ et $c \neq b$. En égalant les deux expressions de $\tan \theta$ et en simplifiant par $c - b$, on obtient $a(1 + bc) = b + c - 2abc$, c'est-à-dire
$$b + c = a(1 + 3bc) . \qquad (\star\star)$$

### Étape 4 : la preuve de $(\star)$

Avec les formules d'addition,
$$\sin(\alpha + \beta + \gamma) = \sin \alpha \cos(\beta + \gamma) + \cos \alpha \sin(\beta + \gamma)$$
$$= \sin \alpha\,(\cos \beta \cos \gamma - \sin \beta \sin \gamma) + \cos \alpha\,(\sin \beta \cos \gamma + \cos \beta \sin \gamma) ,$$
et, d'après (H),
$$2 \sin \alpha \cos \theta = 2 \sin \alpha \cos(\gamma - \beta) = 2 \sin \alpha\,(\cos \beta \cos \gamma + \sin \beta \sin \gamma) .$$
En faisant la différence, puis en mettant $\cos \alpha \cos \beta \cos \gamma$ en facteur,
$$2 \sin \alpha \cos \theta - \sin(\alpha + \beta + \gamma) = \sin \alpha\,(\cos \beta \cos \gamma + 3 \sin \beta \sin \gamma) - \cos \alpha\,(\sin \beta \cos \gamma + \cos \beta \sin \gamma)$$
$$= \cos \alpha \cos \beta \cos \gamma \times \left[\, a(1 + 3bc) - (b + c) \,\right] .$$
D'après $(\star\star)$, cette différence est nulle. L'égalité $(\star)$ est donc vraie, et $QS = QR$.

**Conclusion.** Le triangle $QRS$ est isocèle en $Q$.

## Going further

- L'hypothèse « $\widehat{AMB}$ obtus » n'a pas servi. Dans le triangle $AQM$, on trouve $\widehat{AMB} = 90° + \beta - \theta$ : cet angle est obtus exactement quand $\beta > \theta$. La preuve marche aussi quand il est aigu, du moment que les points $S$ et $R$ existent.
- Le corrigé calcule $\dfrac{QS}{QR}$ avec la loi des sinus dans les triangles $QAS$ et $QAR$, et obtient $(\star)$ grâce à la forme trigonométrique du théorème de Ceva appliquée au point $M$ dans le triangle $ABC$.
