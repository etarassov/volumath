---
id: "12459"
title: "La tangente en A, deux symétriques et deux droites parallèles"
grade: 11
theme: geometry
difficulty: 4
duration_min: 50
tags: [tangente, cercle-circonscrit, produit-scalaire, puissance-d-un-point, symetrie-centrale, parallelisme, theoreme-de-reim]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 22 janvier 2020"
  reference: "2020-01_sujet-test-janvier.pdf, exercice 2 (groupe Junior) ; corrigé 2020-01_corrige-test-janvier.pdf (le corrigé utilise des angles orientés ; solution réécrite avec le produit scalaire, valable dans toutes les dispositions)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/01/sujet-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2020-01_sujet-test-janvier.pdf"
---

## Statement

Soit $ABC$ un triangle et $\Gamma$ son cercle circonscrit. La tangente à $\Gamma$ en $A$ coupe la
droite $(BC)$ en un point $P$. On note $D$ et $E$ les symétriques respectifs des points $B$ et $A$
par rapport au point $P$.

Soit $\omega_1$ le cercle circonscrit au triangle $DAC$, et $\omega_2$ le cercle circonscrit au
triangle $APB$. Les cercles $\omega_1$ et $\omega_2$ se recoupent en un point $F$, autre que $A$. La
droite $(BF)$ recoupe $\omega_1$ en un point $G$, autre que $F$.

Démontrer que les droites $(BC)$ et $(EG)$ sont parallèles.

## Hints

1. Trace une grande figure soignée, avec les trois cercles. Le point $E$ semble avoir une propriété
   remarquable par rapport au cercle $\omega_1$. Laquelle ?
2. Démontre l'outil suivant : si une droite passant par un point $M$ coupe un cercle de centre $O$
   et de rayon $r$ en $X$ et $Y$, alors $\overrightarrow{MX} \cdot \overrightarrow{MY} = MO^2 - r^2$.
   Introduis le milieu de $[XY]$.
3. Applique cet outil au point $P$, avec le cercle $\Gamma$ puis avec le cercle $\omega_1$, pour
   démontrer que $E$ est sur $\omega_1$.
4. Appelle $Q$ le point d'intersection des droites $(BF)$ et $(AE)$, s'il existe. Applique l'outil au
   point $Q$, avec $\omega_1$ puis avec $\omega_2$, et compare.

## Solution

### Un outil : le produit scalaire et les cordes

**Outil.** Soit $\mathcal{C}$ un cercle de centre $O$ et de rayon $r$, et $M$ un point. Si une droite
passant par $M$ coupe $\mathcal{C}$ en deux points $X$ et $Y$ (avec $X = Y$ si la droite est tangente
au cercle), alors
$$\overrightarrow{MX} \cdot \overrightarrow{MY} = MO^2 - r^2.$$
Le nombre $MO^2 - r^2$ ne dépend que du point $M$ et du cercle, pas de la droite choisie.

*Preuve.* Soit $H$ le milieu de $[XY]$. Comme $OX = OY$, le point $O$ est sur la médiatrice de
$[XY]$, donc $(OH)$ est perpendiculaire à la droite $(XY)$ (si $O = H$, il n'y a rien à dire). Comme
$\overrightarrow{HY} = -\overrightarrow{HX}$,
$$\overrightarrow{MX} \cdot \overrightarrow{MY} = (\overrightarrow{MH} + \overrightarrow{HX}) \cdot (\overrightarrow{MH} - \overrightarrow{HX}) = MH^2 - HX^2.$$
Les points $M$, $H$, $X$ sont sur la droite, et $(OH)$ lui est perpendiculaire. Le théorème de
Pythagore donne donc $MH^2 = MO^2 - OH^2$ et $HX^2 = OX^2 - OH^2 = r^2 - OH^2$. En retranchant,
$\overrightarrow{MX} \cdot \overrightarrow{MY} = MO^2 - r^2$.

### Étape 1 : le point $E$ est sur le cercle $\omega_1$

Appliquons l'outil au point $P$.

- **Avec le cercle $\Gamma$**, de centre $O$ et de rayon $R$. La droite $(PA)$ est tangente à $\Gamma$
  en $A$, donc $(OA)$ est perpendiculaire à $(PA)$, et $PO^2 = PA^2 + R^2$. La droite $(BC)$ passe
  par $P$ et coupe $\Gamma$ en $B$ et $C$, donc
  $$\overrightarrow{PB} \cdot \overrightarrow{PC} = PO^2 - R^2 = PA^2.$$
- **Les symétriques.** Comme $P$ est le milieu de $[BD]$ et de $[AE]$, on a
  $\overrightarrow{PD} = -\overrightarrow{PB}$ et $\overrightarrow{PE} = -\overrightarrow{PA}$. Donc
  $$\overrightarrow{PD} \cdot \overrightarrow{PC} = -PA^2 \qquad \text{et} \qquad \overrightarrow{PA} \cdot \overrightarrow{PE} = -PA^2.$$
- **Avec le cercle $\omega_1$.** La droite $(PA)$ recoupe $\omega_1$ en un point $E'$ (avec $E' = A$
  si elle est tangente). La droite $(PC)$ coupe $\omega_1$ en $D$ et $C$. L'outil donne
  $$\overrightarrow{PA} \cdot \overrightarrow{PE'} = \overrightarrow{PD} \cdot \overrightarrow{PC} = -PA^2 = \overrightarrow{PA} \cdot \overrightarrow{PE}.$$

Ainsi $\overrightarrow{PA} \cdot \overrightarrow{EE'} = 0$. Mais les points $E$ et $E'$ sont tous les
deux sur la droite $(PA)$, donc $\overrightarrow{EE'}$ est colinéaire à $\overrightarrow{PA}$, et il
est orthogonal à $\overrightarrow{PA}$ : c'est le vecteur nul. Donc $E' = E$, et **le point $E$ est
sur le cercle $\omega_1$**.

On dispose maintenant de deux droites qui coupent les deux cercles :

- la droite $(AE)$, qui passe aussi par $P$, coupe $\omega_1$ en $A$ et $E$, et $\omega_2$ en $A$ et $P$ ;
- la droite $(BF)$ coupe $\omega_1$ en $F$ et $G$, et $\omega_2$ en $F$ et $B$.

### Étape 2 : premier cas, les droites $(BF)$ et $(AE)$ se coupent

Appelons $Q$ leur point d'intersection. Le point $Q$ est différent de $A$, car sinon $A$, $B$, $F$
seraient trois points alignés distincts du cercle $\omega_2$. Il est aussi différent de $F$, car
sinon $F$, $A$, $P$ seraient trois points alignés distincts de $\omega_2$. Pour la même raison, $Q$
n'est ni $B$ ni $P$.

Écrivons $\overrightarrow{QG} = \gamma\,\overrightarrow{QF}$, $\overrightarrow{QB} = \beta\,\overrightarrow{QF}$,
$\overrightarrow{QE} = \varepsilon\,\overrightarrow{QA}$ et $\overrightarrow{QP} = \pi\,\overrightarrow{QA}$,
avec des réels $\gamma$, $\beta$, $\varepsilon$, $\pi$, et $\beta \neq 0$, $\pi \neq 0$. L'outil, appliqué
au point $Q$ :

- avec $\omega_1$, donne $\overrightarrow{QF} \cdot \overrightarrow{QG} = \overrightarrow{QA} \cdot \overrightarrow{QE}$,
  c'est-à-dire $\gamma\,QF^2 = \varepsilon\,QA^2$ ;
- avec $\omega_2$, donne $\overrightarrow{QF} \cdot \overrightarrow{QB} = \overrightarrow{QA} \cdot \overrightarrow{QP}$,
  c'est-à-dire $\beta\,QF^2 = \pi\,QA^2$.

En divisant la première égalité par la seconde, $\dfrac{\gamma}{\beta} = \dfrac{\varepsilon}{\pi}$.
Notons $\lambda$ ce nombre. Alors $\overrightarrow{QG} = \lambda\beta\,\overrightarrow{QF} = \lambda\,\overrightarrow{QB}$
et, de même, $\overrightarrow{QE} = \lambda\,\overrightarrow{QP}$. Par conséquent
$$\overrightarrow{GE} = \overrightarrow{QE} - \overrightarrow{QG} = \lambda\,(\overrightarrow{QP} - \overrightarrow{QB}) = \lambda\,\overrightarrow{BP}.$$
Les droites $(EG)$ et $(BP)$ sont donc parallèles.

### Étape 3 : second cas, les droites $(BF)$ et $(AE)$ sont parallèles

Ces deux droites sont distinctes, car $A$ n'est pas sur $(BF)$. Choisissons un repère orthonormé dont
l'axe des abscisses leur est parallèle.

Dans le cercle $\omega_2$, les cordes $[AP]$ et $[FB]$ sont parallèles à l'axe des abscisses. Leurs
médiatrices passent par le centre de $\omega_2$ et sont perpendiculaires à cet axe : c'est donc la
même droite verticale, d'équation $x = c_2$. Le milieu de $[AP]$ et celui de $[FB]$ ont donc pour
abscisse $c_2$, d'où $x_P = 2c_2 - x_A$ et $x_B = 2c_2 - x_F$. De même, dans le cercle $\omega_1$,
les cordes $[AE]$ et $[FG]$ ont la même médiatrice, d'équation $x = c_1$, d'où $x_E = 2c_1 - x_A$ et
$x_G = 2c_1 - x_F$. Ainsi
$$x_E - x_P = 2(c_1 - c_2) = x_G - x_B, \qquad \text{et} \qquad y_E = y_P, \quad y_G = y_B,$$
car $E$ et $P$ sont sur une même droite horizontale, de même que $G$ et $B$. Donc
$\overrightarrow{PE} = \overrightarrow{BG}$, puis $\overrightarrow{GE} = \overrightarrow{GB} + \overrightarrow{BP} + \overrightarrow{PE} = \overrightarrow{BP}$.
Là encore, les droites $(EG)$ et $(BP)$ sont parallèles.

### Conclusion

Dans les deux cas, $(EG)$ est parallèle à $(BP)$, qui est la droite $(BC)$. **Les droites $(BC)$ et
$(EG)$ sont parallèles.**

## Going further

1. L'étape 2 et l'étape 3 démontrent un résultat général, le **théorème de Reim** : deux cercles se
   coupent en $A$ et $F$ ; une droite passant par $A$ recoupe les cercles en $E$ et $P$, une droite
   passant par $F$ les recoupe en $G$ et $B$. Alors $(EG)$ et $(PB)$ sont parallèles. Le démontrer
   avec des angles inscrits sur une figure où les points sont placés comme on veut.
2. Le nombre $MO^2 - r^2$ de l'outil s'appelle la **puissance** du point $M$ par rapport au cercle.
   Que dit son signe sur la position de $M$ ?
