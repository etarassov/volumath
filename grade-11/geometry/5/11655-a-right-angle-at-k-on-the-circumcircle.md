---
id: "11655"
title: "Un angle droit en K"
grade: 11
theme: geometry
difficulty: 5
duration_min: 60
tags: [cercle circonscrit, tangentes, geometrie analytique, equation de cercle, produit scalaire, produit des racines]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 5 (pot-pourri)"
  reference: "2019-02_envoi-5.pdf, exercices Juniors, exercice 3 (l'en-tête du document porte « Envoi 4 : pot-pourri ») ; corrigé juge_Corrige-Envoi-5-2019.pdf (le corrigé fait une chasse aux angles sur le cercle de diamètre [BP] ; la preuve ci-dessous passe par les coordonnées)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/02/envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2019-02_envoi-5.pdf"
---

## Statement

Soit $ABC$ un triangle dont les trois angles sont aigus, avec $AB > AC$, et soit $\Omega$ son cercle circonscrit. On note $M$ le milieu de $[BC]$.

Les tangentes à $\Omega$ en $B$ et en $C$ se coupent en $P$, et les droites $(AP)$ et $(BC)$ se coupent en $S$. On note $D$ le pied de la perpendiculaire à $(AP)$ passant par $B$, et $\omega$ le cercle qui passe par $C$, $S$ et $D$. Enfin, le cercle $\omega$ recoupe $\Omega$ en un point $K$, autre que $C$.

![Le triangle ABC et son cercle circonscrit Ω, les tangentes en B et en C qui se coupent en P, la droite bleue (AP) qui coupe [BC] en S, le pied D de la perpendiculaire issue de B, le cercle vert ω qui passe par C, S et D, et les segments rouges [KC] et [KM].](11655-figure-1.svg)

Montrer que $\widehat{CKM} = 90^\circ$.

## Hints

1. Prends un repère orthonormé d'origine $M$, avec $B(-1\,;\,0)$ et $C(1\,;\,0)$, et note $O(0\,;\,k)$ le centre de $\Omega$. Montre que $P$ a pour coordonnées $(0\,;\,-1/k)$.
2. Pour un point $X(x\,;\,y)$, calcule le produit scalaire $\overrightarrow{XC} \cdot \overrightarrow{XM}$ et appelle-le $g(X)$. Écris ensuite l'équation de $\Omega$ sous la forme $g(X) - \ell(X) = 0$, où $\ell(X)$ est une expression du premier degré en $x$ et $y$.
3. Les points où $g$ et $\ell$ s'annulent tous les deux sont sur $\Omega$, et l'un d'eux est $C$. Calcule l'autre. Il suffit de montrer que c'est $K$.
4. Cherche le cercle $\omega$ sous la forme $g(X) + s\,\ell(X) = 0$, avec un nombre $s$ bien choisi. Quelle valeur de $s$ le fait passer par $S$ ?
5. Pour vérifier que $D$ est aussi sur ce cercle, décris les points de la droite $(PA)$ avec un paramètre $t$, et pense au produit des racines d'un trinôme.

## Solution

**Étape 1 : le repère.** On prend un repère orthonormé d'origine $M$ dans lequel $B(-1\,;\,0)$ et $C(1\,;\,0)$, et où $A$ est au-dessus de l'axe des abscisses : $A(u\,;\,h)$ avec $h > 0$.

- Le centre $O$ de $\Omega$ est sur la médiatrice de $[BC]$, qui est l'axe des ordonnées : $O(0\,;\,k)$. Comme le triangle a trois angles aigus, $O$ est à l'intérieur du triangle, donc du même côté de $(BC)$ que $A$ : $k > 0$. Le rayon vérifie $OB^2 = 1 + k^2$.
- Écrivons $P(p\,;\,q)$. La tangente en $B$ est perpendiculaire au rayon $[OB]$, donc $\overrightarrow{BP} \cdot \overrightarrow{OB} = 0$, soit $-(p + 1) - kq = 0$. De même $\overrightarrow{CP} \cdot \overrightarrow{OC} = 0$ donne $(p - 1) - kq = 0$. En soustrayant, $p = 0$, puis $q = -1/k$. On pose $m = 1/k$, de sorte que $P(0\,;\,-m)$ avec $m > 0$ et $km = 1$.
- On a $AB^2 - AC^2 = (u + 1)^2 - (u - 1)^2 = 4u$. Comme $AB > AC$, on obtient $u > 0$.

**Étape 2 : deux expressions.** Pour tout point $X(x\,;\,y)$, on pose

$$g(X) = x^2 + y^2 - x \qquad \text{et} \qquad \ell(X) = -x + 2ky + 1.$$

Avec $\overrightarrow{XC}(1 - x\,;\,-y)$ et $\overrightarrow{XM}(-x\,;\,-y)$, on trouve $\overrightarrow{XC} \cdot \overrightarrow{XM} = -x + x^2 + y^2$, donc

$$g(X) = \overrightarrow{XC} \cdot \overrightarrow{XM}.$$

Le point $X$ est sur $\Omega$ quand $OX^2 = 1 + k^2$, c'est-à-dire $x^2 + (y - k)^2 = 1 + k^2$, ou encore $x^2 + y^2 - 2ky - 1 = 0$. Or $g(X) - \ell(X) = x^2 + y^2 - 2ky - 1$. Donc

$$X \in \Omega \iff g(X) - \ell(X) = 0.$$

**Étape 3 : le point qui convient.** Cherchons les points où $g$ et $\ell$ s'annulent tous les deux. La condition $\ell(X) = 0$ s'écrit $x = 1 + 2ky$. En reportant dans $g$ :

$$(1 + 2ky)^2 + y^2 - (1 + 2ky) = (4k^2 + 1)\,y^2 + 2ky = y\left((4k^2 + 1)\,y + 2k\right).$$

On trouve $y = 0$, qui donne le point $C$, ou $y = -2k/(4k^2 + 1)$, qui donne le point

$$K_0\left(\frac{1}{4k^2 + 1}\,;\,\frac{-2k}{4k^2 + 1}\right).$$

Ce point $K_0$ est différent de $C$, et il est sur $\Omega$ puisque $g(K_0) - \ell(K_0) = 0$. Il est aussi différent de $M$, car $M$ n'est pas sur $\Omega$. Enfin $\overrightarrow{K_0C} \cdot \overrightarrow{K_0M} = g(K_0) = 0$, donc $\widehat{CK_0M} = 90^\circ$.

**Il reste à montrer que $K = K_0$.** Pour cela, on va trouver une équation du cercle $\omega$.

**Étape 4 : les points $S$ et $D$.** Les points de la droite $(PA)$ sont les points $X_t = P + t\,\overrightarrow{PA}$, avec $t$ réel, c'est-à-dire

$$X_t\left(tu\,;\,-m + t(h + m)\right).$$

- *Le point $S$.* Comme $h + m > 0$, l'ordonnée de $X_t$ s'annule pour $t_S = m/(h + m)$. Donc $S(s\,;\,0)$ avec $s = mu/(h + m) > 0$.
- *Le point $D$.* Le point $X_t$ est le pied $D$ quand $\overrightarrow{BX_t} \cdot \overrightarrow{PA} = 0$. Avec $\overrightarrow{BX_t}(tu + 1\,;\,-m + t(h + m))$ et $\overrightarrow{PA}(u\,;\,h + m)$, cela donne $tQ + u - m(h + m) = 0$, où $Q = u^2 + (h + m)^2$. Donc
$$t_D = \frac{m(h + m) - u}{Q}.$$

Vérifions que $C$, $S$ et $D$ sont bien trois points non alignés, pour que $\omega$ existe. On a $S \neq C$, car sinon $(PA)$ serait la tangente $(PC)$, qui ne touche $\Omega$ qu'en $C$, alors que $A$ est sur $\Omega$ et différent de $C$. On a $D \neq S$, car sinon $(BS) = (BC)$ serait perpendiculaire à $(PA)$, la droite $(PA)$ serait verticale et l'on aurait $u = 0$. Enfin, le seul point de $(PA)$ situé sur $(BC)$ est $S$, donc $D$ n'est pas sur $(BC)$.

**Étape 5 : une équation de $\omega$.** Considérons l'ensemble $\mathcal{C}$ des points $X$ tels que

$$g(X) + s\,\ell(X) = 0, \qquad \text{c'est-à-dire} \qquad x^2 + y^2 - (1 + s)\,x + 2ks\,y + s = 0.$$

*C'est un cercle.* En complétant les carrés, l'équation devient

$$\left(x - \frac{1 + s}{2}\right)^2 + (y + ks)^2 = \left(\frac{1 + s}{2}\right)^2 - s + k^2s^2 = \left(\frac{1 - s}{2}\right)^2 + k^2s^2,$$

et le membre de droite est strictement positif puisque $ks \neq 0$.

*Il passe par $C$ et par $S$.* On a $g(C) = 0$ et $\ell(C) = 0$. Pour $S(s\,;\,0)$, on a $g(S) = s^2 - s$ et $\ell(S) = 1 - s$, donc $g(S) + s\,\ell(S) = s^2 - s + s - s^2 = 0$.

*Il passe par $D$.* Posons $\varphi(t) = g(X_t) + s\,\ell(X_t)$. En développant, $\varphi(t)$ est un trinôme du second degré en $t$ :

- le terme en $t^2$ vient de $x^2 + y^2 = t^2u^2 + \left(t(h + m) - m\right)^2$, donc son coefficient est $Q$ ;
- son terme constant est $\varphi(0) = g(P) + s\,\ell(P) = m^2 + s\,(1 - 2km) = m^2 - s$, puisque $km = 1$.

On sait que $t_S$ est une racine de $\varphi$, puisque $S = X_{t_S}$ est sur $\mathcal{C}$. Le produit des deux racines vaut $(m^2 - s)/Q$, donc l'autre racine est

$$\frac{m^2 - s}{Q\,t_S} = \frac{(m^2 - s)(h + m)}{Q\,m} = \frac{m^2(h + m) - mu}{Q\,m} = \frac{m(h + m) - u}{Q} = t_D,$$

où l'on a utilisé $s\,(h + m) = mu$. Donc $\varphi(t_D) = 0$ : le point $D$ est sur $\mathcal{C}$.

Le cercle $\mathcal{C}$ passe par les trois points non alignés $C$, $S$, $D$. Un seul cercle passe par trois points non alignés, donc $\mathcal{C} = \omega$.

**Étape 6 : conclusion.** Comme $g(K_0) = 0$ et $\ell(K_0) = 0$, on a $g(K_0) + s\,\ell(K_0) = 0$ : le point $K_0$ est sur $\omega$. Il est aussi sur $\Omega$.

Les cercles $\Omega$ et $\omega$ sont différents : $S$ est sur $\omega$, mais pas sur $\Omega$, car $g(S) - \ell(S) = s^2 - 1$ n'est pas nul ($s > 0$ et $s \neq 1$ puisque $S \neq C$). Or deux cercles différents ont au plus deux points communs : en soustrayant leurs équations, on obtient l'équation d'une droite (ou une équation impossible), et une droite coupe un cercle en au plus deux points. Les points communs à $\Omega$ et $\omega$ sont donc exactement $C$ et $K_0$, et le point $K$ de l'énoncé est $K_0$.

D'après l'étape 3, **$\widehat{CKM} = 90^\circ$.**

## Going further

Le point $K_0$ ne dépend que de $k$, pas de $A$. Autrement dit, quand $A$ se déplace sur $\Omega$, le cercle $\omega$ change, mais il recoupe toujours $\Omega$ au même point $K$ : c'est le second point commun à $\Omega$ et au cercle de diamètre $[CM]$. Le calcul de l'étape 5 marche d'ailleurs pour n'importe quelle droite passant par $P$ et coupant $(BC)$ ailleurs qu'en $B$, $C$ ou $M$.

L'hypothèse $AB > AC$ ne sert qu'à éviter $D = S$. Si $AB = AC$, la droite $(AP)$ est la médiatrice de $[BC]$, les points $S$, $D$ et $M$ sont confondus, et le cercle $\omega$ n'est plus défini.

Le corrigé original donne une preuve sans calcul. Les angles $\widehat{BMP}$ et $\widehat{BDP}$ sont droits, donc $B$, $D$, $M$, $P$ sont sur le cercle de diamètre $[BP]$. Une chasse aux angles, avec le théorème de l'angle inscrit et le cas de la tangente, montre que $K$ est aussi sur ce cercle. On conclut en découpant l'angle $\widehat{CKM}$ en deux au niveau de $D$.
