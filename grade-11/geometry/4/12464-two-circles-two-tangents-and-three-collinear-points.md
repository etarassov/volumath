---
id: "12464"
title: "Deux cercles, deux tangentes et trois points alignés"
grade: 11
theme: geometry
difficulty: 4
duration_min: 50
tags: [cercle, tangente, produit-scalaire, puissance-d-un-point, parallelogramme, alignement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 19 et 20 février 2020"
  reference: "2020-11_Enonce-Test-Fevrier-2020.pdf, exercice 1 (groupe Junior) ; corrigé 2020-03_Correction-Web.pdf (le corrigé fait une chasse aux angles orientés ; solution réécrite avec le produit scalaire, valable dans toutes les configurations)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/11/Enonce-Test-Fevrier-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2020-11_Enonce-Test-Fevrier-2020.pdf"
---

## Statement

Soit $A$, $B$, $E$ et $P$ quatre points deux à deux distincts, tels que $P$ soit le milieu du
segment $[AE]$ et que $B$ appartienne au segment $[AP]$. Soit $\omega_1$ et $\omega_2$ deux cercles
passant par $A$ et par $B$. On note $t_1$ la tangente à $\omega_1$ en $A$, et $t_2$ la tangente à
$\omega_2$ en $A$.

- Soit $C$ le point d'intersection, autre que $A$, de $t_2$ et de $\omega_1$, et soit $Q$ le point
  d'intersection, autre que $C$, de $t_2$ et du cercle circonscrit au triangle $BCE$.
- De même, soit $D$ le point d'intersection, autre que $A$, de $t_1$ et de $\omega_2$, et soit $R$
  le point d'intersection, autre que $D$, de $t_1$ et du cercle circonscrit au triangle $BDE$.

Démontrer que les points $P$, $Q$ et $R$ sont alignés.

![Les cercles ω1 et ω2, leurs tangentes t1 et t2 en A, le segment [AE] et, en pointillés, les cercles circonscrits à BCE et à BDE](12464-figure-1.svg)

## Hints

1. Fais une figure précise, place le milieu du segment $[QR]$ et trace les droites $(EQ)$ et
   $(ER)$. Que remarques-tu ?
2. Il suffit de montrer que $AQER$ est un parallélogramme. Pour cela, appelle $Q'$ le point de $t_2$
   tel que $(EQ')$ soit parallèle à $t_1$, et montre que $Q' = Q$.
3. Si une droite passant par $M$ coupe un cercle de centre $O$ et de rayon $r$ en $X$ et $Y$, alors
   $\overrightarrow{MX} \cdot \overrightarrow{MY} = MO^2 - r^2$. Applique-le au point $A$ et au
   cercle circonscrit à $BCE$.
4. Si $O_1$ est le centre de $\omega_1$, un point $X$ est sur $\omega_1$ si et seulement si
   $AX^2 = 2\,\overrightarrow{AO_1} \cdot \overrightarrow{AX}$. Applique-le à $B$ et à $C$, et
   remarque que $\overrightarrow{AO_1}$ est orthogonal à $t_1$.

## Solution

**L'idée.** Sur une figure précise, $P$ semble être le milieu de $[QR]$, et les droites $(EQ)$ et
$(ER)$ semblent parallèles à $t_1$ et à $t_2$. Nous allons montrer que **$AQER$ est un
parallélogramme**. Ses diagonales $[AE]$ et $[QR]$ auront alors le même milieu, qui est $P$, et
$P$, $Q$, $R$ seront alignés.

### Un outil : le produit scalaire et les cordes

**Outil.** Soit $\mathcal{C}$ un cercle de centre $O$ et de rayon $r$, et $M$ un point. Si une droite
passant par $M$ coupe $\mathcal{C}$ en deux points $X$ et $Y$, alors
$$\overrightarrow{MX} \cdot \overrightarrow{MY} = MO^2 - r^2.$$
Le nombre $MO^2 - r^2$ ne dépend que du point $M$ et du cercle, pas de la droite choisie.

*Preuve.* Soit $H$ le milieu de $[XY]$. Comme $OX = OY$, le point $O$ est sur la médiatrice de
$[XY]$, donc $(OH)$ est perpendiculaire à la droite $(XY)$ (si $O = H$, il n'y a rien à dire). Comme
$\overrightarrow{HY} = -\overrightarrow{HX}$,
$$\overrightarrow{MX} \cdot \overrightarrow{MY} = (\overrightarrow{MH} + \overrightarrow{HX}) \cdot (\overrightarrow{MH} - \overrightarrow{HX}) = MH^2 - HX^2.$$
Les points $M$, $H$, $X$ sont sur la droite, et $(OH)$ lui est perpendiculaire. Le théorème de
Pythagore donne donc $MH^2 = MO^2 - OH^2$ et $HX^2 = OX^2 - OH^2 = r^2 - OH^2$. En retranchant,
$\overrightarrow{MX} \cdot \overrightarrow{MY} = MO^2 - r^2$.

### Étape 1 : mise en place

Les points $A$, $B$, $P$, $E$ sont alignés dans cet ordre. Posons $\lambda = \dfrac{AB}{AE}$, de
sorte que $\overrightarrow{AB} = \lambda\,\overrightarrow{AE}$ avec $\lambda > 0$.

La droite $(AE)$ passe par $A$ et $B$, qui sont deux points de $\omega_1$ : elle n'est donc pas
tangente à $\omega_1$, et $(AE) \neq t_1$. De même, $(AE) \neq t_2$. Enfin $t_2 \neq t_1$, sinon
$t_2$ serait tangente à $\omega_1$ et ne la recouperait pas en un point $C$. Les deux droites $t_1$
et $t_2$ se coupent donc en $A$ seulement, et $E$ n'est sur aucune des deux.

Soit $Q'$ le point d'intersection de $t_2$ avec la parallèle à $t_1$ passant par $E$, et $R'$ le
point d'intersection de $t_1$ avec la parallèle à $t_2$ passant par $E$. Le quadrilatère $AQ'ER'$ a
ses côtés opposés parallèles : c'est un parallélogramme. Il reste à montrer que $Q' = Q$ et
$R' = R$.

### Étape 2 : une équation du cercle $\omega_1$

Soit $O_1$ le centre de $\omega_1$ et posons $\vec{n} = \overrightarrow{AO_1}$. Comme $t_1$ est
tangente à $\omega_1$ en $A$, le vecteur $\vec{n}$ est orthogonal à $t_1$. Le rayon de $\omega_1$
est $AO_1$. Pour un point $X$ du plan,
$$O_1X^2 = (\overrightarrow{AX} - \vec{n}) \cdot (\overrightarrow{AX} - \vec{n}) = AX^2 - 2\,\vec{n} \cdot \overrightarrow{AX} + AO_1^2.$$
Donc $X$ est sur $\omega_1$, c'est-à-dire $O_1X^2 = AO_1^2$, si et seulement si
$$AX^2 = 2\,\vec{n} \cdot \overrightarrow{AX}.$$

### Étape 3 : on calcule $\overrightarrow{AC} \cdot \overrightarrow{AQ'}$

**Avec le point $B$.** Le point $B$ est sur $\omega_1$, donc
$AB^2 = 2\,\vec{n} \cdot \overrightarrow{AB}$, c'est-à-dire
$\lambda^2 AE^2 = 2\lambda\,\vec{n} \cdot \overrightarrow{AE}$. En divisant par $\lambda$ :
$$\lambda\,AE^2 = 2\,\vec{n} \cdot \overrightarrow{AE}.$$
Or $\overrightarrow{AE} = \overrightarrow{AQ'} + \overrightarrow{Q'E}$, et $\overrightarrow{Q'E}$ est
parallèle à $t_1$, donc orthogonal à $\vec{n}$. Ainsi
$\vec{n} \cdot \overrightarrow{AE} = \vec{n} \cdot \overrightarrow{AQ'}$, et
$$2\,\vec{n} \cdot \overrightarrow{AQ'} = \lambda\,AE^2 = \overrightarrow{AB} \cdot \overrightarrow{AE}.$$

**Avec le point $C$.** Les points $A$, $C$, $Q'$ sont sur $t_2$, et $C \neq A$ : il existe un réel
$\mu$ tel que $\overrightarrow{AQ'} = \mu\,\overrightarrow{AC}$. Comme $C$ est sur $\omega_1$,
$AC^2 = 2\,\vec{n} \cdot \overrightarrow{AC}$. Donc
$$\overrightarrow{AC} \cdot \overrightarrow{AQ'} = \mu\,AC^2 = 2\mu\,\vec{n} \cdot \overrightarrow{AC} = 2\,\vec{n} \cdot \overrightarrow{AQ'} = \overrightarrow{AB} \cdot \overrightarrow{AE}.$$

### Étape 4 : $Q' = Q$, puis $R' = R$

Notons $\Gamma$ le cercle circonscrit au triangle $BCE$. La droite $t_2$ passe par $A$ et coupe
$\Gamma$ en $C$ et $Q$. La droite $(AE)$ passe par $A$ et coupe $\Gamma$ en $B$ et $E$. L'outil,
appliqué deux fois au point $A$, donne
$$\overrightarrow{AC} \cdot \overrightarrow{AQ} = \overrightarrow{AB} \cdot \overrightarrow{AE}.$$
Avec l'étape 3, $\overrightarrow{AC} \cdot \overrightarrow{AQ} = \overrightarrow{AC} \cdot \overrightarrow{AQ'}$.
Écrivons $\overrightarrow{AQ} = \nu\,\overrightarrow{AC}$, ce qui est possible car $Q$ est sur
$t_2$. On obtient $\nu\,AC^2 = \mu\,AC^2$, donc $\nu = \mu$ puisque $AC \neq 0$, et
$\overrightarrow{AQ} = \overrightarrow{AQ'}$ : **$Q = Q'$**.

L'énoncé est symétrique : en échangeant les indices $1$ et $2$, les points $C$ et $D$, et les points
$Q$ et $R$, on obtient de la même façon **$R = R'$**.

### Conclusion

D'après l'étape 1, $AQER$ est un parallélogramme. Ses diagonales $[AE]$ et $[QR]$ se coupent en leur
milieu. Le milieu de $[AE]$ est $P$, donc $P$ est aussi le milieu de $[QR]$. **Les points $P$, $Q$ et
$R$ sont alignés.**

On n'a jamais eu besoin de savoir dans quel ordre les points sont placés sur les droites : la
démonstration vaut pour toutes les figures.

## Going further

1. Démontrer que les triangles $ABC$ et $DBA$ sont semblables, puis que $AB^2 = BC \times BD$.
   (On pourra utiliser l'angle entre une tangente et une corde.)
2. Que devient l'exercice si $P$ n'est plus le milieu de $[AE]$ ? Le point $P$ est-il encore sur la
   droite $(QR)$ ? Quel point de $[AE]$ est sur $(QR)$ ?
