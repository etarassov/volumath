---
id: "12252"
title: "Une tangente au demi-cercle de diamètre BD"
grade: 12
theme: geometry
difficulty: 5
duration_min: 60
tags: [nombres-complexes, forme-exponentielle, produit-scalaire, tangente, triangle-rectangle, similitude, maths-expertes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de mars 2016"
  reference: "2017-10_ofm-2015-2016-test-mars.pdf, test du 23 mars 2016, exercice 6 (groupe A) ; pas de corrigé publié, solution par les nombres complexes rédigée pour cette base et vérifiée numériquement sur 20 000 figures tirées au hasard. Il s'agit du problème G3 de la liste courte des Olympiades internationales 2015"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-test-mars.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2015-2016-test-mars.pdf"
---

## Statement

Soit $ABC$ un triangle rectangle en $C$, et soit $H$ le pied de la hauteur issue de $C$. On choisit un point $D$ à l'intérieur du triangle $CBH$, de sorte que le milieu du segment $[AD]$ soit sur la droite $(CH)$. On note $P$ le point d'intersection des droites $(BD)$ et $(CH)$.

Soit $\omega$ celui des deux demi-cercles de diamètre $[BD]$ qui rencontre le segment $[CB]$ en un point autre que $B$ et $C$. Une droite passant par $P$ est tangente à $\omega$ en un point $Q$.

Montrer que les droites $(CQ)$ et $(AD)$ se coupent en un point de $\omega$.

![Le triangle ABC rectangle en C, la hauteur [CH], le point D et le milieu de [AD] sur (CH), le point P, le demi-cercle ω et la tangente (PQ)](12252-figure-1.svg)

## Hints

1. Place-toi dans le plan complexe, avec $B$ pour origine et l'axe des réels porté par $(BA)$. On note $a$ l'affixe de $A$, un réel positif, et $\beta$ l'angle $\widehat{ABC}$. Montre que $C$ a pour affixe $s\,a$, où $s = \cos\beta \, e^{i\beta}$.
2. Calcule l'affixe de $D$ et celle de $P$ en fonction de $a$, de $\beta$ et de la partie imaginaire de $D$.
3. On note $d$ l'affixe de $D$. Montre que le point d'affixe $s\,d$ est sur $\omega$, et que la tangente en ce point passe par $P$. C'est donc $Q$.
4. Montre que, pour tout nombre complexe $z$, les vecteurs qui vont de $B$ au point d'affixe $s\,z$, et du point d'affixe $s\,z$ au point d'affixe $z$, sont orthogonaux. Applique cela au pied $X$ de la perpendiculaire à $(AD)$ passant par $B$.

## Solution

On utilise deux résultats du cours de maths expertes.

- Si deux vecteurs $\vec u$ et $\vec v$ ont pour affixes $z$ et $w$, alors $\vec u \cdot \vec v = \mathrm{Re}\left(\overline{z}\, w\right)$. En effet, si $z = x + iy$ et $w = x' + iy'$, alors $\overline{z}\,w = (xx' + yy') + i\,(xy' - yx')$.
- Pour tout réel $\theta$, $e^{i\theta} = \cos\theta + i \sin\theta$, et $\left|e^{i\theta}\right| = 1$.

**Étape 1. Le repère, et les affixes de $C$, $H$, $D$, $P$.**

On prend $B$ pour origine, et l'on porte l'axe des réels par la droite $(BA)$, orientée de $B$ vers $A$. Le point $A$ a pour affixe un réel $a > 0$. On choisit le sens de l'axe des imaginaires pour que $C$ ait une partie imaginaire positive. On note $\beta = \widehat{ABC}$, avec $0 < \beta < 90°$.

*Le point $C$.* Dans le triangle $ABC$ rectangle en $C$, on a $BC = AB \cos\beta = a \cos\beta$, et la demi-droite $[BC)$ fait l'angle $\beta$ avec $[BA)$. Donc $C$ a pour affixe $a\cos\beta\, e^{i\beta}$. On pose
$$s = \cos\beta\, e^{i\beta} = \cos^2\beta + i \sin\beta\cos\beta.$$
Ainsi $C$ a pour affixe $s\,a$. On retiendra deux propriétés de $s$ :
$$\mathrm{Re}(s) = \cos^2\beta = |s|^2 \qquad \text{et} \qquad s - \frac{1}{2} = \frac{\cos^2\beta - \sin^2\beta}{2} + i\sin\beta\cos\beta = \frac{(\cos\beta + i\sin\beta)^2}{2} = \frac{e^{2i\beta}}{2}.$$
Pour la seconde, on a utilisé $\cos^2\beta - \frac{1}{2} = \frac{\cos^2\beta - \sin^2\beta}{2}$, qui vient de $\cos^2\beta + \sin^2\beta = 1$.

*Le point $H$.* C'est le projeté de $C$ sur l'axe des réels, d'affixe $\mathrm{Re}(s\,a) = a\cos^2\beta$. La droite $(CH)$ est formée des points dont la partie réelle vaut $a\cos^2\beta$.

*Le point $D$.* Notons $d = u + iv$ son affixe. Le milieu de $[AD]$ a pour partie réelle $\frac{a + u}{2}$. Il est sur $(CH)$, donc $\frac{a + u}{2} = a\cos^2\beta$, et
$$u = \gamma\,a, \qquad \text{où } \gamma = 2\cos^2\beta - 1.$$
Comme $D$ est à l'intérieur du triangle $CBH$, on a $v > 0$ et $0 < u < a\cos^2\beta$. En particulier $\gamma > 0$. De plus $D$ est à l'intérieur de l'angle $\widehat{HBC}$, donc un argument $\delta$ de $d$ vérifie $0 < \delta < \beta$.

*Le point $P$.* Il est sur la droite $(BD)$, qui passe par l'origine : son affixe s'écrit $t\,d$ avec $t$ réel. Il est sur $(CH)$, donc $t\,u = a\cos^2\beta$, c'est-à-dire
$$t\,\gamma = \cos^2\beta.$$
Comme $\gamma = \cos^2\beta - \sin^2\beta < \cos^2\beta$, on a $t > 1$.

**Étape 2. Le cercle de diamètre $[BD]$ et ses deux moitiés.**

Notons $\Gamma$ le cercle de diamètre $[BD]$. Son centre $O$ a pour affixe $\frac{d}{2}$ et son rayon vaut $r = \frac{|d|}{2}$. Ses points sont donc ceux d'affixe
$$z_\varphi = \frac{d}{2} + \frac{d}{2}\, e^{i\varphi} = d \times \frac{1 + e^{i\varphi}}{2}, \qquad \varphi \in [0, 2\pi[.$$
Pour $\varphi = 0$ on obtient $D$, et pour $\varphi = \pi$ on obtient $B$. On a $\mathrm{Im}\left(\frac{z_\varphi}{d}\right) = \frac{\sin\varphi}{2}$. Les deux demi-cercles de diamètre $[BD]$ sont donc formés des points de $\Gamma$ pour lesquels $\mathrm{Im}\left(\frac{z}{d}\right) \geqslant 0$, d'une part, et $\mathrm{Im}\left(\frac{z}{d}\right) \leqslant 0$, d'autre part.

*Lequel est $\omega$ ?* Un point du segment $[CB]$ autre que $B$ a une affixe de la forme $\lambda\, e^{i\beta}$ avec $\lambda > 0$. En écrivant $d = |d|\, e^{i\delta}$, on trouve
$$\mathrm{Im}\left(\frac{\lambda\, e^{i\beta}}{d}\right) = \frac{\lambda}{|d|}\sin(\beta - \delta) > 0,$$
puisque $0 < \beta - \delta < 90°$. Le point où $\omega$ rencontre $[CB]$ vérifie donc $\mathrm{Im}\left(\frac{z}{d}\right) > 0$, et ne peut pas être sur le second demi-cercle. Ainsi $\omega$ est formé des points de $\Gamma$ tels que $\mathrm{Im}\left(\frac{z}{d}\right) \geqslant 0$, c'est-à-dire des $z_\varphi$ avec $0 \leqslant \varphi \leqslant \pi$.

**Étape 3. Le point $Q$ a pour affixe $s\,d$.**

Soit $T$ un point de $\Gamma$, d'affixe $z_\varphi$. La tangente à $\Gamma$ en $T$ est la droite perpendiculaire en $T$ au rayon $[OT]$. Elle passe par $P$ si et seulement si $\overrightarrow{TP} \cdot \overrightarrow{OT} = 0$. Comme $\overrightarrow{TP} = \overrightarrow{OP} - \overrightarrow{OT}$ et $OT^2 = r^2$, cela s'écrit
$$\overrightarrow{OP} \cdot \overrightarrow{OT} = r^2.$$

Les vecteurs $\overrightarrow{OP}$ et $\overrightarrow{OT}$ ont pour affixes $\left(t - \frac{1}{2}\right) d$ et $\frac{d}{2}\, e^{i\varphi}$. Leur produit scalaire vaut
$$\mathrm{Re}\left(\left(t - \frac{1}{2}\right)\overline{d} \times \frac{d}{2}\, e^{i\varphi}\right) = \left(t - \frac{1}{2}\right)\frac{|d|^2}{2}\cos\varphi.$$
Comme $r^2 = \frac{|d|^2}{4}$, la tangente en $T$ passe par $P$ si et seulement si
$$\cos\varphi = \frac{1}{2t - 1}.$$
Or $t > 1$, donc ce nombre est strictement compris entre $0$ et $1$. Il y a exactement une valeur de $\varphi$ dans $[0, \pi]$ qui vérifie cette égalité. Donc **$Q$ est l'unique point de $\omega$ dont l'angle $\varphi$ vérifie $\cos\varphi = \frac{1}{2t - 1}$.**

Montrons que $\varphi = 2\beta$ convient. D'une part $0 < 2\beta < \pi$, puisque $\gamma > 0$ impose $\beta < 45°$. D'autre part, $\cos 2\beta = \cos^2\beta - \sin^2\beta = \gamma$, et
$$(2t - 1)\,\gamma = 2t\gamma - \gamma = 2\cos^2\beta - (2\cos^2\beta - 1) = 1.$$
Donc $\cos 2\beta = \frac{1}{2t - 1}$, et $Q$ est le point d'affixe
$$q = z_{2\beta} = d \times \frac{1 + e^{2i\beta}}{2} = d \times \left(\frac{1}{2} + s - \frac{1}{2}\right) = s\,d,$$
d'après la seconde propriété de $s$.

**Étape 4. Une propriété de la multiplication par $s$.**

Soit $z$ un nombre complexe, $Z$ le point d'affixe $z$ et $Z'$ le point d'affixe $s\,z$. Alors
$$\overrightarrow{BZ'} \cdot \overrightarrow{Z'Z} = \mathrm{Re}\left(\overline{s\,z}\,(z - s\,z)\right) = |z|^2\, \mathrm{Re}\left(\overline{s} - |s|^2\right) = |z|^2 \left(\cos^2\beta - \cos^2\beta\right) = 0.$$
Les vecteurs $\overrightarrow{BZ'}$ et $\overrightarrow{Z'Z}$ sont donc toujours orthogonaux.

**Étape 5. Les droites $(CQ)$ et $(AD)$ se coupent au pied de la perpendiculaire issue de $B$.**

Soit $X$ le pied de la perpendiculaire à $(AD)$ passant par $B$, d'affixe $x$. Le point $B$ n'est pas sur $(AD)$, car cette droite ne rencontre l'axe des réels qu'en $A$ (on a $v > 0$). Donc $X \neq B$ et $x \neq 0$. Soit $X'$ le point d'affixe $s\,x$, qui est aussi différent de $B$.

*$X'$ est sur la droite $(CQ)$.* Les points de $(AD)$ ont pour affixes $a + \lambda(d - a)$, avec $\lambda$ réel. En multipliant par $s$, on obtient $s\,a + \lambda\,(s\,d - s\,a)$ : ce sont les points de la droite $(CQ)$, puisque $C$ et $Q$ ont pour affixes $s\,a$ et $s\,d$. Comme $X$ est sur $(AD)$, le point $X'$ est sur $(CQ)$.

*$(BX')$ est perpendiculaire à $(CQ)$.* On sait que $\overrightarrow{BX} \cdot \overrightarrow{AD} = \mathrm{Re}\left(\overline{x}\,(d - a)\right) = 0$. Donc
$$\overrightarrow{BX'} \cdot \overrightarrow{CQ} = \mathrm{Re}\left(\overline{s\,x}\,(s\,d - s\,a)\right) = |s|^2\,\mathrm{Re}\left(\overline{x}\,(d - a)\right) = 0.$$

*Conclusion de l'étape.* La droite $(CQ)$ est donc la droite qui passe par $X'$ et qui est perpendiculaire à $(BX')$. D'après l'étape 4, $\overrightarrow{X'X}$ est orthogonal à $\overrightarrow{BX'}$, donc $X$ est aussi sur cette droite. Ainsi **$X$ est sur $(CQ)$ et sur $(AD)$.**

Ces deux droites sont différentes. En effet, le triangle $CBH$ est tout entier du même côté de la droite $(AC)$ que $B$, et ne touche cette droite qu'en $C$. Le point $D$, intérieur au triangle, n'est donc pas sur $(AC)$, et $C$ n'est pas sur $(AD)$. Les droites $(CQ)$ et $(AD)$ se coupent donc en un seul point, qui est $X$.

**Étape 6. Le point $X$ est sur $\omega$.**

Le point $X$ est l'un des points $a + \lambda(d - a)$, et comme c'est le projeté orthogonal de $B$ sur $(AD)$,
$$\lambda = \frac{\overrightarrow{AB} \cdot \overrightarrow{AD}}{AD^2} = \frac{\mathrm{Re}\left(-a\,(\overline{d} - a)\right)}{|d - a|^2} = \frac{a\,(a - u)}{(a - u)^2 + v^2}.$$

*On a $\lambda \geqslant 1$.* Cela revient à $a(a - u) \geqslant (a - u)^2 + v^2$, c'est-à-dire $u(a - u) \geqslant v^2$, ou encore $\left(u - \frac{a}{2}\right)^2 + v^2 \leqslant \frac{a^2}{4}$. Autrement dit, $D$ doit être dans le disque de diamètre $[BA]$. C'est le cas : ce disque contient $B$, $H$, et $C$ (car $\widehat{ACB} = 90°$), donc tout le triangle $CBH$, puisqu'un disque contient tout segment qui joint deux de ses points.

*$X$ est sur $\Gamma$.* Si $\lambda = 1$, alors $X = D$. Sinon $X \neq D$, et $\widehat{BXD} = 90°$, donc $X$ est sur le cercle de diamètre $[BD]$.

*$X$ est sur la bonne moitié.* On a $\frac{x}{d} = (1 - \lambda)\frac{a}{d} + \lambda$, donc
$$\mathrm{Im}\left(\frac{x}{d}\right) = (1 - \lambda)\, \mathrm{Im}\left(\frac{a}{d}\right) = (1 - \lambda)\, \mathrm{Im}\left(\frac{a\,\overline{d}}{|d|^2}\right) = (\lambda - 1)\,\frac{a\,v}{|d|^2} \geqslant 0.$$
D'après l'étape 2, $X$ est donc sur $\omega$.

**Conclusion.** Les droites $(CQ)$ et $(AD)$ se coupent au point $X$, qui est sur $\omega$.

## Going further

1. Multiplier par $s = \cos\beta\, e^{i\beta}$, c'est faire tourner de l'angle $\beta$ autour de $B$, puis réduire les distances à $B$ dans le rapport $\cos\beta$. L'étape 3 dit donc que $\widehat{DBQ} = \widehat{ABC}$. Peux-tu le démontrer sans nombres complexes, en comparant le triangle rectangle $OQP$ et le triangle rectangle $NHC$, où $N$ est le milieu de $[AB]$ ?
2. L'étape 1 montre que la figure n'existe que si $\widehat{ABC} < 45°$. Explique-le directement : pourquoi faut-il que $CA < CB$ ?
