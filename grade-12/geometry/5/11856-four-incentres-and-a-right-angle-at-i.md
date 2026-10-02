---
id: "11856"
title: "Quatre centres de cercles inscrits et un angle droit en I"
grade: 12
theme: geometry
difficulty: 5
duration_min: 90
tags: [quadrilatere-circonscriptible, cercle-inscrit, bissectrice-exterieure, tangente-commune, angle-inscrit, thales]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 5 (pot-pourri)"
  reference: "2023-03_Sujet-envoi-5.pdf, Exercices Seniors, exercice 18 ; corrigé 2023-07_corrige-envoi-5.pdf. Même plan que le corrigé ; le rapport des rayons est obtenu ici par IB = r / sin(B/2) au lieu de la loi des sinus dans IAB et IAD, et le centre du cercle B I_a I_c est placé sur (BI) par un calcul d'angles au lieu des droites isogonales."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/03/Sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-03_Sujet-envoi-5.pdf"
---

## Statement

Un quadrilatère convexe $ABCD$ admet un cercle inscrit, de centre $I$. On note $I_a$, $I_b$, $I_c$ et $I_d$ les centres des cercles inscrits dans les triangles $DAB$, $ABC$, $BCD$ et $CDA$ respectivement.

Les cercles circonscrits aux triangles $AI_bI_d$ et $CI_bI_d$ se coupent en $I_b$ et $I_d$ ; on suppose que leurs deux tangentes communes se coupent en un point $X$. De même, on suppose que les deux tangentes communes des cercles circonscrits aux triangles $BI_aI_c$ et $DI_aI_c$ se coupent en un point $Y$.

Montrer que $\widehat{XIY} = 90^\circ$.

## Hints

1. Montre que les cercles inscrits dans les triangles $DAB$ et $BCD$ touchent la diagonale $[BD]$ au même point $T$. Que peux-tu dire de la droite $(I_aI_c)$ ?
2. Calcule les angles du triangle $BI_aI_c$. Montre que le centre de son cercle circonscrit est sur la droite $(BI)$.
3. Le point $Y$ est sur la droite qui joint les centres des deux cercles, et le rapport de ses distances à ces deux centres est le rapport des rayons. Compare ce rapport à $\frac{IB}{ID}$. Quelle droite remarquable de l'angle $\widehat{BID}$ passe par $Y$ ?
4. Montre que $\widehat{AIB} + \widehat{CID} = 180^\circ$. Qu'en déduis-tu sur les bissectrices des angles $\widehat{AIC}$ et $\widehat{BID}$ ?

## Solution

On note $\hat A$, $\hat B$, $\hat C$, $\hat D$ les angles du quadrilatère, et $r$ le rayon de son cercle inscrit. On note $\Gamma_B$ et $\Gamma_D$ les cercles circonscrits aux triangles $BI_aI_c$ et $DI_aI_c$, $O_B$ et $O_D$ leurs centres, $R_B$ et $R_D$ leurs rayons. De même, $\Gamma_A$ et $\Gamma_C$ sont les cercles circonscrits à $AI_bI_d$ et $CI_bI_d$, de centres $O_A$, $O_C$ et de rayons $R_A$, $R_C$.

La **bissectrice extérieure** d'un angle est la droite perpendiculaire en son sommet à la bissectrice (intérieure).

**Rappels.**

1. *Angle inscrit.* Dans un triangle $UVW$ dont l'angle en $U$ est aigu, de cercle circonscrit de centre $O$, l'angle au centre $\widehat{VOW}$ vaut $2\,\widehat{VUW}$.
2. *Côté et rayon.* Dans ce même triangle, si $R$ est le rayon du cercle circonscrit, alors $VW = 2R \sin \widehat{VUW}$. En effet, le triangle $OVW$ est isocèle en $O$ ; sa hauteur issue de $O$ coupe $[VW]$ en son milieu $H$ et partage l'angle $\widehat{VOW} = 2\,\widehat{VUW}$ en deux, donc dans le triangle rectangle $OHV$ on a $VH = R \sin \widehat{VUW}$.
3. *Un seul point pour un rapport donné.* Soient $U \neq V$ et $\lambda > 0$ avec $\lambda \neq 1$. Sur la droite $(UV)$, il y a un seul point $E$ hors du segment $[UV]$ tel que $\frac{EU}{EV} = \lambda$. Si $\lambda > 1$ par exemple, un tel point est du côté de $V$, donc $EU = EV + UV$, et l'égalité $EV + UV = \lambda\,EV$ donne $EV = \frac{UV}{\lambda - 1}$.
4. *Bissectrice extérieure.* Soit $IUV$ un triangle avec $IU \neq IV$. Alors la bissectrice extérieure $\Delta$ de l'angle $\widehat{UIV}$ coupe la droite $(UV)$ en un point $E$ hors du segment $[UV]$, et $\frac{EU}{EV} = \frac{IU}{IV}$.
   En effet, notons $\theta = \widehat{UIV}$. Les demi-droites $[IU)$ et $[IV)$ font chacune un angle $\frac{\theta}{2} < 90^\circ$ avec la bissectrice, donc elles sont du même côté de $\Delta$, et les distances de $U$ et de $V$ à $\Delta$ valent $IU \cos\frac{\theta}{2}$ et $IV \cos\frac{\theta}{2}$. Elles sont différentes, donc $(UV)$ n'est pas parallèle à $\Delta$ et la coupe en un point $E$, hors de $[UV]$ puisque $U$ et $V$ sont du même côté de $\Delta$. Les triangles $IEU$ et $IEV$ ont la même hauteur issue de $I$, donc le rapport de leurs aires vaut $\frac{EU}{EV}$. Mais ces aires valent aussi $\frac12\, IE \cdot IU \sin\widehat{EIU}$ et $\frac12\, IE \cdot IV \sin\widehat{EIV}$, et les angles $\widehat{EIU}$ et $\widehat{EIV}$ valent $90^\circ - \frac{\theta}{2}$ et $90^\circ + \frac{\theta}{2}$, qui ont le même sinus. Donc $\frac{EU}{EV} = \frac{IU}{IV}$.
5. *Tangentes communes à deux cercles sécants.* Soient deux cercles qui se coupent en deux points, de centres $O_1$, $O_2$ et de rayons $R_1 \neq R_2$. Alors leurs deux tangentes communes passent par le point $Z$ de $(O_1O_2)$, hors du segment $[O_1O_2]$, tel que $\frac{ZO_1}{ZO_2} = \frac{R_1}{R_2}$. Si au contraire $R_1 = R_2$, les tangentes communes sont parallèles.
   En effet, soit $\delta$ une tangente commune, qui touche le premier cercle en $P_1$ et le second en $P_2$. Les deux cercles sont du même côté de $\delta$ : sinon leurs points communs seraient sur $\delta$, donc tous deux égaux à $P_1$, alors qu'il y en a deux. Les centres $O_1$ et $O_2$ sont donc du même côté de $\delta$, à des distances $R_1$ et $R_2$. Si $R_1 = R_2$, la droite $(O_1O_2)$ est parallèle à $\delta$. Sinon, elle coupe $\delta$ en un point $Z$ hors de $[O_1O_2]$, et comme $(O_1P_1)$ et $(O_2P_2)$ sont toutes deux perpendiculaires à $\delta$, donc parallèles, le théorème de Thalès donne $\frac{ZO_1}{ZO_2} = \frac{O_1P_1}{O_2P_2} = \frac{R_1}{R_2}$. D'après le rappel 3, ce point $Z$ est le même pour les deux tangentes.

**Étape 1 : un point de contact commun.** Les deux segments de tangente menés d'un point à un cercle ont la même longueur. Appliqué au cercle inscrit de $ABCD$, cela donne $AB + CD = BC + DA$, car chaque côté est la somme de deux segments de tangente et chacun des huit segments est compté une fois de chaque côté. Appliqué au cercle inscrit d'un triangle $UVW$, cela montre qu'il touche $[VW]$ au point situé à la distance $\frac{VU + VW - UW}{2}$ de $V$.

Le cercle inscrit de $DAB$ touche donc $[BD]$ à la distance $\frac{BA + BD - AD}{2}$ de $B$, et celui de $BCD$ à la distance $\frac{BC + BD - CD}{2}$. Comme $AB - AD = BC - CD$, ces deux points sont le même point $T$. Les droites $(I_aT)$ et $(I_cT)$ sont toutes deux perpendiculaires à $(BD)$ : les points $I_a$, $T$, $I_c$ sont alignés sur la perpendiculaire à $(BD)$ en $T$. De plus $T$ est entre $I_a$ et $I_c$, car $I_a$ est à l'intérieur du triangle $DAB$ et $I_c$ à l'intérieur de $BCD$, de part et d'autre de $(BD)$.

De même, $I_b$ et $I_d$ sont sur la perpendiculaire à $(AC)$ en un point $S$ de $[AC]$, de part et d'autre de $(AC)$.

**Étape 2 : $O_B$ est sur la demi-droite $[BI)$.** Posons $\beta_1 = \widehat{ABD}$ et $\beta_2 = \widehat{DBC}$, de sorte que $\beta_1 + \beta_2 = \hat B$, car $ABCD$ est convexe et $[BD)$ est à l'intérieur de l'angle $\widehat{ABC}$. Les droites $(BI_a)$, $(BI)$ et $(BI_c)$ sont les bissectrices des angles $\widehat{ABD}$, $\widehat{ABC}$ et $\widehat{DBC}$. En mesurant les angles à partir de $[BA)$, en tournant vers $[BC)$, les demi-droites $[BI_a)$, $[BI)$, $[BD)$, $[BI_c)$ font donc des angles
$$\frac{\beta_1}{2}, \qquad \frac{\beta_1 + \beta_2}{2}, \qquad \beta_1, \qquad \beta_1 + \frac{\beta_2}{2}$$
avec $[BA)$. On en tire $\widehat{I_aBI_c} = \frac{\beta_1 + \beta_2}{2} = \frac{\hat B}{2}$ et $\widehat{I_aBI} = \frac{\beta_2}{2}$, et la demi-droite $[BI)$ est à l'intérieur de l'angle $\widehat{I_aBI_c}$.

Le triangle $BTI_c$ est rectangle en $T$ et $\widehat{TBI_c} = \frac{\beta_2}{2}$, donc $\widehat{BI_cT} = 90^\circ - \frac{\beta_2}{2}$. Comme $T$ est sur $[I_aI_c]$, c'est l'angle en $I_c$ du triangle $BI_aI_c$. De même, son angle en $I_a$ vaut $90^\circ - \frac{\beta_1}{2}$. Les trois angles du triangle $BI_aI_c$ sont aigus, donc son centre $O_B$ est à l'intérieur du triangle, et la demi-droite $[BO_B)$ est à l'intérieur de l'angle $\widehat{I_aBI_c}$.

D'après le rappel 1, $\widehat{BO_BI_a} = 2\,\widehat{BI_cI_a} = 180^\circ - \beta_2$. Le triangle $O_BBI_a$ est isocèle en $O_B$, donc
$$\widehat{O_BBI_a} = \frac{180^\circ - \widehat{BO_BI_a}}{2} = \frac{\beta_2}{2} = \widehat{IBI_a}.$$
Les demi-droites $[BO_B)$ et $[BI)$ sont toutes deux à l'intérieur de l'angle $\widehat{I_aBI_c}$ et font le même angle avec $[BI_a)$ : elles sont confondues. Donc $O_B$ est sur la demi-droite $[BI)$.

Le même raisonnement au sommet $D$ montre que $O_D$ est sur $[DI)$. Avec la diagonale $[AC]$ et le point $S$ à la place de $[BD]$ et $T$, il montre aussi que $O_A$ est sur $[AI)$ et $O_C$ sur $[CI)$.

**Étape 3 : le rapport des rayons.** Dans le triangle $BI_aI_c$, l'angle en $B$ vaut $\frac{\hat B}{2}$, et dans le triangle $DI_aI_c$, l'angle en $D$ vaut $\frac{\hat D}{2}$ (même calcul). D'après le rappel 2,
$$I_aI_c = 2R_B \sin\frac{\hat B}{2} = 2R_D \sin\frac{\hat D}{2}.$$
D'autre part, soit $K$ le point de contact du cercle inscrit de $ABCD$ avec $[AB]$. Le triangle $IKB$ est rectangle en $K$, avec $IK = r$ et $\widehat{IBK} = \frac{\hat B}{2}$, donc $IB = \frac{r}{\sin(\hat B/2)}$. De même $ID = \frac{r}{\sin(\hat D/2)}$. Par conséquent
$$\frac{R_B}{R_D} = \frac{\sin(\hat D/2)}{\sin(\hat B/2)} = \frac{IB}{ID}.$$

**Étape 4 : $Y$ est sur la bissectrice extérieure de $\widehat{BID}$.** Les cercles $\Gamma_B$ et $\Gamma_D$ se coupent en $I_a$ et $I_c$. Par hypothèse, leurs tangentes communes se coupent, donc elles ne sont pas parallèles, et d'après le rappel 5, $R_B \neq R_D$. Par suite $IB \neq ID$, les deux cercles sont distincts, et leurs centres aussi (un cercle passant par $I_a$ est déterminé par son centre). Toujours d'après le rappel 5, $Y$ est le point de $(O_BO_D)$, hors du segment $[O_BO_D]$, tel que $\frac{YO_B}{YO_D} = \frac{R_B}{R_D}$.

Les centres $O_B$ et $O_D$ sont sur la médiatrice de $[I_aI_c]$, qui est perpendiculaire à $(I_aI_c)$, donc parallèle à $(BD)$ d'après l'étape 1. Comme $O_B$ est sur $(IB)$, $O_D$ sur $(ID)$, et $(O_BO_D) \parallel (BD)$, le théorème de Thalès donne un réel $k$ tel que
$$\overrightarrow{IO_B} = k\,\overrightarrow{IB} \quad \text{et} \quad \overrightarrow{IO_D} = k\,\overrightarrow{ID}.$$
On a $k \neq 0$ car $O_B \neq O_D$. Ainsi $I$, $O_B$, $O_D$ forment un vrai triangle, avec $\frac{IO_B}{IO_D} = \frac{IB}{ID} = \frac{R_B}{R_D} \neq 1$. Selon le signe de $k$, l'angle $\widehat{O_BIO_D}$ est l'angle $\widehat{BID}$ lui-même ou son opposé par le sommet ; dans les deux cas, il a les mêmes bissectrices.

D'après le rappel 4, la bissectrice extérieure de $\widehat{O_BIO_D}$ coupe $(O_BO_D)$ en un point hors de $[O_BO_D]$ dont le rapport des distances à $O_B$ et $O_D$ vaut $\frac{IO_B}{IO_D} = \frac{R_B}{R_D}$. D'après le rappel 3, ce point est $Y$. Donc **$Y$ est sur la bissectrice extérieure de l'angle $\widehat{BID}$**, et $Y \neq I$ car $I$ n'est pas sur la droite $(O_BO_D)$.

De la même façon, **$X$ est sur la bissectrice extérieure de l'angle $\widehat{AIC}$**, et $X \neq I$.

**Étape 5 : les bissectrices de $\widehat{AIC}$ et de $\widehat{BID}$.** Posons $a = \widehat{AIB}$, $b = \widehat{BIC}$, $c = \widehat{CID}$. Dans le triangle $AIB$, les droites $(AI)$ et $(BI)$ sont des bissectrices, donc $a = 180^\circ - \frac{\hat A + \hat B}{2}$. De même $c = 180^\circ - \frac{\hat C + \hat D}{2}$. Comme $\hat A + \hat B + \hat C + \hat D = 360^\circ$, on obtient
$$a + c = 180^\circ.$$

Le point $I$ est à l'intérieur de $ABCD$. Repérons chaque demi-droite issue de $I$ par l'angle qu'elle fait avec $[IA)$, compté en tournant dans le sens de $A$ vers $B$, puis $C$, puis $D$ : les demi-droites $[IA)$, $[IB)$, $[IC)$, $[ID)$ correspondent à $0$, $a$, $a + b$, $a + b + c$. Une droite passant par $I$ correspond à deux demi-droites opposées, donc à un angle défini à $180^\circ$ près.

La bissectrice de l'angle $\widehat{AIC}$ correspond à l'angle $\frac{a + b}{2}$. (Si $a + b > 180^\circ$, la demi-droite d'angle $\frac{a+b}{2}$ partage en deux l'angle rentrant, mais elle est sur la même droite que la bissectrice de $\widehat{AIC}$.) De même, la bissectrice de $\widehat{BID}$ correspond à l'angle $\frac{a + (a + b + c)}{2} = a + \frac{b + c}{2}$. La différence vaut
$$a + \frac{b + c}{2} - \frac{a + b}{2} = \frac{a + c}{2} = 90^\circ.$$
La bissectrice de $\widehat{AIC}$ est donc perpendiculaire à celle de $\widehat{BID}$ : c'est la bissectrice extérieure de $\widehat{BID}$. Et la bissectrice extérieure de $\widehat{AIC}$, perpendiculaire en $I$ à la bissectrice de $\widehat{AIC}$, est la bissectrice de $\widehat{BID}$.

**Conclusion.** Le point $X$ est sur la bissectrice extérieure de $\widehat{AIC}$, c'est-à-dire sur la bissectrice de $\widehat{BID}$, et le point $Y$ est sur la bissectrice extérieure de $\widehat{BID}$. Ces deux droites sont perpendiculaires en $I$, et $X$, $Y$ sont différents de $I$, donc $\widehat{XIY} = 90^\circ$.

## Going further

- L'étape 2 est un cas particulier d'un fait classique : dans un triangle, la hauteur issue d'un sommet et la droite qui joint ce sommet au centre du cercle circonscrit sont symétriques par rapport à la bissectrice de l'angle en ce sommet. Ici la hauteur issue de $B$ dans le triangle $BI_aI_c$ est $(BT)$, et sa symétrique est $(BI)$.
- Le point d'intersection des tangentes communes extérieures de deux cercles est le centre de l'homothétie de rapport positif qui envoie un cercle sur l'autre. Le rappel 5 en donne la position sans parler d'homothétie.
