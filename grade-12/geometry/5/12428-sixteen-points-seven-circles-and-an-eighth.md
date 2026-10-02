---
id: "12428"
title: "Seize points, sept cercles, et un huitième"
grade: 12
theme: geometry
difficulty: 5
duration_min: 90
tags: [cocyclicite, puissance-d-un-point, homothetie, translation, produit-scalaire, alignement, parallelisme]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 28 novembre 2018"
  reference: "2018-12_Test_RMM_28_novembre_enonce.pdf, exercice 2 ; corrigé 2018-12_Test_RMM_28_novembre_corrige.pdf (solution réécrite avec la puissance d'un point et des homothéties ; le corrigé ne traite pas les cas où deux lignes ou deux colonnes sont parallèles)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/12/Test_RMM_28_novembre_enonce.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2018-12_Test_RMM_28_novembre_enonce.pdf"
---

## Statement

On place dans le plan $16$ points deux à deux distincts, notés $A_{i,j}$ pour
$i, j \in \{1, 2, 3, 4\}$. On les imagine rangés en un tableau de $4$ lignes et $4$ colonnes. On
suppose que :

- pour chaque $i$, les quatre points $A_{i,1}$, $A_{i,2}$, $A_{i,3}$, $A_{i,4}$ de la ligne $i$
  sont alignés ;
- pour chaque $j$, les quatre points $A_{1,j}$, $A_{2,j}$, $A_{3,j}$, $A_{4,j}$ de la colonne $j$
  sont alignés ;
- chacun des sept quadrilatères suivants a ses quatre sommets sur un même cercle :
  $$A_{1,1}A_{1,2}A_{2,2}A_{2,1}, \quad A_{1,2}A_{1,3}A_{2,3}A_{2,2}, \quad A_{1,3}A_{1,4}A_{2,4}A_{2,3},$$
  $$A_{2,1}A_{2,2}A_{3,2}A_{3,1}, \quad A_{3,1}A_{3,2}A_{4,2}A_{4,1},$$
  $$A_{1,1}A_{2,2}A_{2,3}A_{1,4}, \quad A_{1,1}A_{2,2}A_{3,2}A_{4,1}.$$

Montrer que les quatre points $A_{4,1}$, $A_{3,2}$, $A_{3,3}$, $A_{4,4}$ sont eux aussi sur un même
cercle.

## Hints

1. Appelle $\ell_i$ la droite qui porte la ligne $i$, et $c_j$ celle qui porte la colonne $j$.
   Regarde d'abord les trois quadrilatères coincés entre $\ell_1$ et $\ell_2$, et utilise la
   puissance du point $X$ où se coupent $\ell_1$ et $\ell_2$.
2. Tu dois trouver que $c_1$ et $c_3$ sont parallèles, ainsi que $c_2$ et $c_4$. De même avec les
   colonnes 1 et 2 : $\ell_1$ et $\ell_3$ sont parallèles, ainsi que $\ell_2$ et $\ell_4$.
3. Soit $h$ l'homothétie de centre $X$ qui envoie $c_1$ sur $c_3$. Montre que
   $A_{1,1}A_{2,2}A_{2,3}A_{1,4}$ est sur un cercle si et seulement si $h$ envoie $c_2$ sur $c_4$,
   puis si et seulement si $X$, $Y$ et $Z$ sont alignés, où $Y$ est le point commun de $c_1$ et
   $c_2$, et $Z$ celui de $c_3$ et $c_4$.
4. Fais le même travail en échangeant les lignes et les colonnes, avec le quadrilatère
   $A_{1,1}A_{2,2}A_{3,2}A_{4,1}$. Que peux-tu dire du point $T$ où se coupent $\ell_3$ et $\ell_4$ ?
5. N'oublie pas les cas où $\ell_1$ et $\ell_2$, ou bien $c_1$ et $c_2$, sont parallèles. Les
   homothéties y deviennent des translations, et la puissance d'un point devient une propriété
   des trapèzes.

## Solution

### Deux outils

On utilise le produit scalaire. Si $\vec{e}$ est un vecteur de longueur $1$ qui dirige une droite
$d$, et $O$ un point de $d$, chaque point $M$ de $d$ s'écrit $\overrightarrow{OM} = x\,\vec{e}$ :
le nombre $x$ est l'**abscisse** de $M$ sur $d$, à partir de $O$.

Soit un cercle de centre $\Omega$ et de rayon $R$. Comme
$\overrightarrow{\Omega M} = \overrightarrow{\Omega O} + x\,\vec{e}$ et $\vec{e} \cdot \vec{e} = 1$,
$$\Omega M^2 = x^2 + 2(\vec{e} \cdot \overrightarrow{\Omega O}) x + \Omega O^2.$$
Donc **$M$ est sur le cercle si et seulement si**
$$x^2 + 2(\vec{e} \cdot \overrightarrow{\Omega O}) x + \Omega O^2 - R^2 = 0. \qquad (\star)$$
Les points communs à $d$ et au cercle correspondent aux racines de cette équation du second degré.

**Outil 1 (deux droites sécantes).** Soient $d$ et $d'$ deux droites qui se coupent en $O$, avec
des abscisses à partir de $O$. Soient $U, V$ sur $d$ et $W, W'$ sur $d'$, quatre points
distincts, tous différents de $O$, d'abscisses $u, v, w, w'$. Alors
$$U, V, W, W' \text{ sont sur un même cercle} \iff uv = ww'.$$

*Preuve.* Si les quatre points sont sur un cercle, $u$ et $v$ sont les deux racines de $(\star)$
sur $d$, donc $uv = \Omega O^2 - R^2$. De même $ww' = \Omega O^2 - R^2$, d'où $uv = ww'$.
Inversement, supposons $uv = ww'$. Le point $W$ n'est pas sur $d$, donc $U, V, W$ ne sont pas
alignés, et il passe un cercle par ces trois points. Sur $d'$, l'équation $(\star)$ de ce cercle a
la racine $w$, et le produit de ses deux racines vaut $\Omega O^2 - R^2 = uv = ww'$. Comme
$w \neq 0$, l'autre racine est $w'$ : le point $W'$ est sur le cercle.

**Outil 2 (deux droites parallèles).** Soient $d$ et $d'$ deux droites parallèles distinctes,
dirigées par le même vecteur $\vec{e}$. On prend $O$ sur $d$ et $O'$ sur $d'$ tels que $(OO')$
soit perpendiculaire à $\vec{e}$, et on mesure les abscisses à partir de $O$ sur $d$ et de $O'$ sur
$d'$. Avec $U, V$ sur $d$ et $W, W'$ sur $d'$ comme avant,
$$U, V, W, W' \text{ sont sur un même cercle} \iff u + v = w + w'.$$

*Preuve.* La somme des racines de $(\star)$ vaut $-2\,\vec{e} \cdot \overrightarrow{\Omega O}$ sur
$d$, et $-2\,\vec{e} \cdot \overrightarrow{\Omega O'}$ sur $d'$. Ces deux nombres sont égaux, car
$\vec{e} \cdot \overrightarrow{\Omega O'} = \vec{e} \cdot \overrightarrow{\Omega O} + \vec{e} \cdot \overrightarrow{OO'}$
et $\vec{e} \cdot \overrightarrow{OO'} = 0$. On conclut comme pour l'outil 1, avec la somme à la
place du produit.

### Notations et précautions

Notons $\ell_i$ la droite qui porte la ligne $i$ et $c_j$ celle qui porte la colonne $j$. Une
droite coupe un cercle en au plus deux points, donc **trois sommets d'un des sept quadrilatères ne
sont jamais alignés.** On en tire :

- $\ell_1 \neq \ell_2$, sinon $A_{1,1}$, $A_{1,2}$, $A_{2,1}$ seraient alignés ;
- $\ell_1$ et $\ell_2$ sont différentes de chaque colonne $c_j$. Par exemple, si l'on avait
  $\ell_2 = c_j$, cette droite contiendrait $A_{1,j}$, $A_{2,j}$ et un voisin $A_{2,j+1}$ ou
  $A_{2,j-1}$ : trois sommets d'un des trois quadrilatères des lignes 1 et 2 ;
- de même, $c_1 \neq c_2$, et $c_1$, $c_2$ sont différentes de chaque ligne $\ell_i$ (avec les
  trois quadrilatères des colonnes 1 et 2).

En particulier $\ell_1$ ne coupe $c_j$ qu'au point $A_{1,j}$, et de même pour $\ell_2$, $c_1$ et
$c_2$.

### Étape 1 : des droites parallèles

**Si $\ell_1$ et $\ell_2$ se coupent en un point $X$.** Le point $X$ n'est aucun des $A_{1,j}$ :
sinon $A_{1,j}$ serait sur $\ell_2$ et sur $c_j$, donc égal à $A_{2,j}$. De même, $X$ n'est aucun
des $A_{2,j}$. Prenons des vecteurs unitaires $\vec{e}$ sur $\ell_1$ et $\vec{f}$ sur $\ell_2$, et
notons $x_j$ l'abscisse de $A_{1,j}$ sur $\ell_1$ et $y_j$ celle de $A_{2,j}$ sur $\ell_2$, à
partir de $X$. Ces nombres ne sont pas nuls. L'outil 1, appliqué aux trois quadrilatères des
lignes 1 et 2, donne
$$x_1 x_2 = y_1 y_2, \qquad x_2 x_3 = y_2 y_3, \qquad x_3 x_4 = y_3 y_4.$$
Posons $t_j = \dfrac{x_j}{y_j}$. Alors $t_1 t_2 = t_2 t_3 = t_3 t_4 = 1$, donc
$t_1 = \dfrac{1}{t_2} = t_3$ et $t_2 = \dfrac{1}{t_3} = t_4$. Or la droite $c_j$ est dirigée par
$$\overrightarrow{A_{2,j}A_{1,j}} = x_j\,\vec{e} - y_j\,\vec{f} = y_j(t_j\,\vec{e} - \vec{f}).$$
Donc **$c_1$ et $c_3$ sont parallèles, ainsi que $c_2$ et $c_4$.**

**Si $\ell_1$ et $\ell_2$ sont parallèles.** On mesure les abscisses comme dans l'outil 2, à partir
de $O$ sur $\ell_1$ et de $O'$ sur $\ell_2$. L'outil 2 donne
$x_j + x_{j+1} = y_j + y_{j+1}$ pour $j = 1, 2, 3$. Avec $s_j = x_j - y_j$, on obtient
$s_1 = -s_2 = s_3$ et $s_2 = -s_3 = s_4$. Comme $c_j$ est dirigée par
$\overrightarrow{A_{2,j}A_{1,j}} = \overrightarrow{O'O} + s_j\,\vec{e}$, la conclusion est la même.

**En échangeant lignes et colonnes**, les trois quadrilatères des colonnes 1 et 2 donnent de même :
**$\ell_1$ et $\ell_3$ sont parallèles, ainsi que $\ell_2$ et $\ell_4$.**

Chaque ligne est donc parallèle à $\ell_1$ ou à $\ell_2$, et chaque colonne à $c_1$ ou à $c_2$. Or
$\ell_1$ et $\ell_2$ coupent $c_1$ et $c_2$ en un seul point. Donc **chaque ligne $\ell_i$ coupe
chaque colonne $c_j$ en un seul point, qui est $A_{i,j}$.** Enfin $\ell_3$ et $\ell_4$ sont
parallèles exactement quand $\ell_1$ et $\ell_2$ le sont.

### Étape 2 : ce que dit le quadrilatère $A_{1,1}A_{2,2}A_{2,3}A_{1,4}$

Gardons les abscisses de l'étape 1 sur $\ell_1$ et $\ell_2$, et notons $f$ la transformation
suivante :

- si $\ell_1$ et $\ell_2$ se coupent en $X$, l'homothétie de centre $X$ et de rapport
  $k = \dfrac{x_3}{x_1}$ ;
- si elles sont parallèles, la translation de vecteur $\delta\,\vec{e}$, où $\delta = x_3 - x_1$.

Dans les deux cas, $f$ garde la droite $\ell_1$ et envoie $A_{1,1}$ sur $A_{1,3}$. Elle envoie donc
$c_1$ sur la parallèle à $c_1$ passant par $A_{1,3}$, c'est-à-dire sur $c_3$.

**Propriété (P).** $A_{1,1}$, $A_{2,2}$, $A_{2,3}$, $A_{1,4}$ sont sur un même cercle si et
seulement si $f(c_2) = c_4$.

*Preuve, cas sécant.* D'après l'outil 1, les quatre points sont sur un cercle si et seulement si
$x_1 x_4 = y_2 y_3$. Or $y_2 y_3 = x_2 x_3$ (deuxième quadrilatère). La condition devient
$x_1 x_4 = x_2 x_3$, c'est-à-dire $x_4 = k\,x_2$, c'est-à-dire $f(A_{1,2}) = A_{1,4}$.

*Preuve, cas parallèle.* D'après l'outil 2, la condition est $x_1 + x_4 = y_2 + y_3 = x_2 + x_3$,
c'est-à-dire $x_4 = x_2 + \delta$, c'est-à-dire encore $f(A_{1,2}) = A_{1,4}$.

*Fin de la preuve.* Si $f(A_{1,2}) = A_{1,4}$, alors $f(c_2)$ est la parallèle à $c_2$ passant par
$A_{1,4}$, qui est $c_4$. Inversement, si $f(c_2) = c_4$, le point $f(A_{1,2})$ est à la fois sur
$f(c_2) = c_4$ et sur $f(\ell_1) = \ell_1$ : c'est $A_{1,4}$.

En échangeant lignes et colonnes, on obtient de même la **propriété (P')** : si $f'$ est
l'homothétie de centre $c_1 \cap c_2$ (ou la translation, si $c_1$ et $c_2$ sont parallèles) qui
envoie $A_{1,1}$ sur $A_{3,1}$, donc $\ell_1$ sur $\ell_3$, alors $A_{1,1}$, $A_{2,2}$, $A_{3,2}$,
$A_{4,1}$ sont sur un même cercle si et seulement si $f'(\ell_2) = \ell_4$. Le quadrilatère utilisé
à la place du deuxième est $A_{2,1}A_{2,2}A_{3,2}A_{3,1}$, qui fait bien partie des hypothèses.

D'après les hypothèses, on a donc **$f(c_2) = c_4$ et $f'(\ell_2) = \ell_4$.**

### Étape 3 : ce qu'il suffit de montrer

Notons $g$ l'homothétie de centre $T = \ell_3 \cap \ell_4$ qui envoie $c_1$ sur $c_3$ (ou, si
$\ell_3$ et $\ell_4$ sont parallèles, la translation parallèle à $\ell_3$ qui envoie $c_1$ sur
$c_3$).

**Propriété (Q).** Si $g(c_2) = c_4$, alors $A_{4,1}$, $A_{3,2}$, $A_{3,3}$, $A_{4,4}$ sont sur un
même cercle.

*Preuve, cas sécant.* Le point $T$ n'est aucun des $A_{3,j}$ : sinon $A_{3,j}$ serait sur $\ell_4$
et sur $c_j$, donc égal à $A_{4,j}$. De même, $T$ n'est aucun des $A_{4,j}$. Notons $a_j$ et $b_j$
les abscisses de $A_{3,j}$ sur $\ell_3$ et de $A_{4,j}$ sur $\ell_4$, à partir de $T$, et $m$ le
rapport de $g$. L'homothétie $g$ garde $\ell_3$ et $\ell_4$ (elles passent par son centre), et elle
envoie $c_1$ sur $c_3$ et $c_2$ sur $c_4$. Elle envoie donc $A_{3,1}$ sur $A_{3,3}$, $A_{4,1}$ sur
$A_{4,3}$ et $A_{4,2}$ sur $A_{4,4}$ :
$$a_3 = m\,a_1, \qquad b_4 = m\,b_2.$$
L'outil 1, appliqué au quadrilatère $A_{3,1}A_{3,2}A_{4,2}A_{4,1}$, donne $a_1 a_2 = b_1 b_2$. Donc
$$b_1 b_4 = m\,b_1 b_2 = m\,a_1 a_2 = a_3 a_2,$$
et l'outil 1 (dans le sens réciproque) montre que $A_{4,1}$, $A_{4,4}$, $A_{3,2}$, $A_{3,3}$ sont
sur un même cercle.

*Preuve, cas parallèle.* Avec les abscisses de l'outil 2 et $g$ de vecteur $\delta'\,\vec{e}$, on
obtient de même $a_3 = a_1 + \delta'$ et $b_4 = b_2 + \delta'$, et l'outil 2 donne
$a_1 + a_2 = b_1 + b_2$. Donc $b_1 + b_4 = b_1 + b_2 + \delta' = a_1 + a_2 + \delta' = a_2 + a_3$, et
l'outil 2 conclut.

Il reste à montrer que $g(c_2) = c_4$. On distingue trois cas.

### Étape 4, premier cas : $\ell_1$, $\ell_2$ sécantes en $X$, et $c_1$, $c_2$ sécantes en $Y$

Les points $Y$, $Z = c_3 \cap c_4$ et $T = \ell_3 \cap \ell_4$ existent, puisque $c_3$, $c_4$ sont
parallèles à $c_1$, $c_2$ et que $\ell_3$, $\ell_4$ sont parallèles à $\ell_1$, $\ell_2$.

**Un lemme.** Soit $P$ un point qui n'est pas sur $c_1$, et $\varphi$ une homothétie de centre $P$
qui envoie $c_1$ sur $c_3$. Alors $\varphi(c_2) = c_4$ si et seulement si $P$, $Y$, $Z$ sont
alignés.

*Preuve.* Si $\varphi(c_2) = c_4$, le point $\varphi(Y)$ est sur $\varphi(c_1) = c_3$ et sur
$\varphi(c_2) = c_4$ : c'est $Z$. Or une homothétie de centre $P$ envoie $Y$ sur un point de la
droite $(PY)$. Donc $P$, $Y$, $Z$ sont alignés. Inversement, supposons $Z$ sur $(PY)$. La droite
$(PY)$ n'est pas parallèle à $c_3$ : sinon elle serait parallèle à $c_1$ en passant par $Y$, donc
égale à $c_1$, qui ne contient pas $P$. Elle coupe donc $c_3$ en un seul point. Or $\varphi(Y)$ et
$Z$ sont tous les deux sur $(PY)$ et sur $c_3$ : ils sont égaux. Alors $\varphi(c_2)$ est la
parallèle à $c_2$ passant par $\varphi(Y) = Z$, c'est-à-dire $c_4$.

**Conclusion du premier cas.** Le point $X$ n'est pas sur $c_1$ (il est sur $\ell_1$, qui ne coupe
$c_1$ qu'en $A_{1,1}$, et $X \neq A_{1,1}$). Comme $f(c_2) = c_4$, le lemme montre que **$X$, $Y$,
$Z$ sont alignés.** En échangeant lignes et colonnes, $f'(\ell_2) = \ell_4$ montre de même que
**$Y$, $X$, $T$ sont alignés.** Les points $X$ et $Y$ sont distincts ($X$ n'est pas sur $c_1$),
donc $Z$ et $T$ sont tous les deux sur la droite $(XY)$, et **$T$, $Y$, $Z$ sont alignés.**

Enfin $T$ n'est pas sur $c_1$ : il est sur $\ell_3$, qui ne coupe $c_1$ qu'en $A_{3,1}$, et
$T \neq A_{3,1}$ (étape 3). Le lemme, appliqué à $g$ de centre $T$, donne $g(c_2) = c_4$.

### Étape 4, deuxième cas : $\ell_1$ et $\ell_2$ parallèles

Alors les quatre lignes sont parallèles, de direction $\vec{e}$. La transformation $f$ est la
translation de vecteur $\delta\,\vec{e}$, parallèle aux lignes, qui envoie $c_1$ sur $c_3$. La
transformation $g$ est aussi une translation de vecteur parallèle à $\vec{e}$ qui envoie $c_1$ sur
$c_3$. Il n'y en a qu'une : une telle translation doit envoyer le point $A_{1,1}$ de $\ell_1$ sur le
point de $\ell_1$ qui est sur $c_3$, c'est-à-dire sur $A_{1,3}$. Donc $g = f$ et
$g(c_2) = f(c_2) = c_4$.

(Dans ce cas, le dernier des sept quadrilatères ne sert même pas.)

### Étape 4, troisième cas : $\ell_1$, $\ell_2$ sécantes en $X$, et $c_1$, $c_2$ parallèles

Alors les quatre colonnes sont parallèles, $f$ est l'homothétie $h$ de centre $X$ et de rapport
$k$, et $f'$ est une translation $\sigma$ de vecteur parallèle aux colonnes. On sait que
$h(c_2) = c_4$, et que $\sigma$ envoie $\ell_1$ sur $\ell_3$ et $\ell_2$ sur $\ell_4$. Donc
$\sigma(X)$ est sur $\ell_3$ et sur $\ell_4$ : **$\sigma(X) = T$.**

Considérons la transformation $\psi$ qui consiste à appliquer $\sigma^{-1}$ (la translation de
vecteur opposé), puis $h$, puis $\sigma$. Pour tout point $M$, notons $M_0$ son image par
$\sigma^{-1}$, de sorte que $\overrightarrow{M_0 M} = \overrightarrow{XT}$. On a
$\overrightarrow{X h(M_0)} = k\,\overrightarrow{X M_0}$, puis, en translatant par le même vecteur,
$$\overrightarrow{T\psi(M)} = \overrightarrow{X h(M_0)} = k\,\overrightarrow{XM_0} = k\,\overrightarrow{TM}.$$
Donc **$\psi$ est l'homothétie de centre $T$ et de rapport $k$.**

Une translation de vecteur parallèle aux colonnes garde chaque colonne. Donc
$$\psi(c_1) = \sigma(h(c_1)) = \sigma(c_3) = c_3, \qquad \psi(c_2) = \sigma(h(c_2)) = \sigma(c_4) = c_4.$$
L'homothétie $\psi$, de centre $T$, envoie $c_1$ sur $c_3$ : elle envoie le point $A_{3,1}$ de
$\ell_3$ sur le point de $\ell_3$ qui est sur $c_3$, c'est-à-dire $A_{3,3}$, donc elle a le même
rapport que $g$. Ainsi $\psi = g$, et $g(c_2) = c_4$.

### Conclusion

Dans tous les cas $g(c_2) = c_4$, et la propriété (Q) donne le résultat : **les points $A_{4,1}$,
$A_{3,2}$, $A_{3,3}$ et $A_{4,4}$ sont sur un même cercle.**
