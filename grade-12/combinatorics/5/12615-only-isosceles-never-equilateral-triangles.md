---
id: "12615"
title: "Que des triangles isocèles, jamais équilatéraux"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 90
tags: [geometrie-combinatoire, triangle-isocele, distance, principe-des-tiroirs, double-comptage, extremal, pentagone]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 14 et 21 février 2021"
  reference: "2021-12_Enonce-Test-3-2020.pdf, exercice 6 (senior) ; corrigé 2021-03_Corrige-Test-3-Web.pdf. La solution suit la solution alternative n° 3 du corrigé, dont deux lignes échangent par erreur les longueurs BD et CD ; la conclusion n'en est pas changée."
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Enoncé-Test-3-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2021-12_Enonce-Test-3-2020.pdf"
---

## Statement

Trouver le plus grand entier $n \geqslant 3$ pour lequel il existe un ensemble $S$ de $n$ points du
plan ayant la propriété suivante : tout triangle dont les trois sommets sont des points de $S$, y
compris un triangle plat (trois points alignés), est isocèle mais pas équilatéral.

## Hints

1. Cherche des exemples. Un carré et son centre conviennent-ils ? Un pentagone régulier et son
   centre ?
2. Dans un tel ensemble, chaque triangle a exactement deux côtés égaux. Appelle *sommet
   principal* le sommet où ces deux côtés se rejoignent. Avec $7$ points, combien y a-t-il de
   triangles ? Montre qu'un des points est le sommet principal d'au moins $5$ triangles.
3. Montre d'abord que, dans un tel ensemble d'au moins $6$ points, trois points ne sont jamais
   alignés. Dans un triangle plat isocèle, le point situé entre les deux autres est le milieu du
   segment qu'ils forment.
4. Avec $7$ points, montre qu'il existe un point $O$ et trois points $A$, $B$, $C$ à la même distance
   de $O$. Prouve ensuite que tous les points, sauf $O$, sont sur le cercle de centre $O$ qui passe
   par $A$.
5. Combien de points de l'ensemble ce cercle peut-il contenir ? Regarde les triangles $ABP$ pour
   les points $P$ du cercle.

## Solution

Appelons **bon** un ensemble de points qui a la propriété de l'énoncé. Dans un triangle d'un bon
ensemble, deux côtés exactement sont égaux (au moins deux car il est isocèle, pas trois car il
n'est pas équilatéral). Le sommet où se rejoignent les deux côtés égaux s'appelle le **sommet
principal** : chaque triangle en a exactement un.

On va montrer que la réponse est $n = 6$.

**Étape 1 : un bon ensemble de $6$ points.** Prenons les cinq sommets d'un pentagone régulier,
inscrit dans un cercle de centre $O$ et de rayon $R$, ainsi que le centre $O$. Notons $s$ la
longueur d'un côté du pentagone et $d$ celle d'une diagonale.

- *Trois sommets du pentagone.* En faisant le tour du cercle, les trois sommets choisis découpent
  les cinq côtés en trois paquets : $1 + 1 + 3$ ou $1 + 2 + 2$. Deux sommets séparés par un côté
  sont à distance $s$, et deux sommets séparés par deux ou trois côtés sont à distance $d$. Le
  triangle a donc pour côtés $s, s, d$ ou $s, d, d$. Il est isocèle. Il n'est pas équilatéral, car
  $s \neq d$ : le triangle formé par trois sommets consécutifs a un angle de $108°$, et un
  triangle équilatéral n'a que des angles de $60°$.
- *$O$ et deux sommets.* Le triangle a deux côtés égaux à $R$ et un angle en $O$ de $72°$ ou de
  $144°$. Il est isocèle, et pas équilatéral, puisque cet angle n'est pas $60°$.
- *Triangles plats.* Il n'y en a pas : trois points d'un cercle ne sont jamais alignés, et comme le
  pentagone a un nombre impair de sommets, aucun sommet n'est diamétralement opposé à un autre,
  donc $O$ n'est aligné avec aucune paire de sommets.

Cet ensemble est bon, donc $n \geqslant 6$.

**Étape 2 : dans un bon ensemble d'au moins $6$ points, trois points ne sont jamais alignés.**
Supposons que trois points $A$, $B$, $C$ d'un bon ensemble soient alignés dans cet ordre. Alors
$AC = AB + BC$ est le plus long côté, donc le triangle plat ne peut être isocèle qu'avec
$AB = BC$ : $B$ est le milieu de $[AC]$. Plaçons un repère orthonormé avec $A(-1\,;0)$, $B(0\,;0)$
et $C(1\,;0)$.

Soit $D(u\,;v)$ un autre point de l'ensemble. Quitte à échanger les noms de $A$ et $C$ (ce qui ne
change rien, puisque $B$ reste le milieu), on peut supposer $DA \leqslant DC$, c'est-à-dire
$(u+1)^2 \leqslant (u-1)^2$, soit $u \leqslant 0$.

- Le triangle $BCD$ est isocèle. Le cas $DB = DC$ donnerait $u = \tfrac{1}{2}$, impossible. Le cas
  $CD = CB = 1$ donnerait $(u-1)^2 + v^2 = 1$ ; or $(u - 1)^2 \geqslant 1$ puisque $u \leqslant 0$,
  donc $u = 0$ et $v = 0$, c'est-à-dire $D = B$, impossible. Il reste $BD = BC = 1$, donc
  $u^2 + v^2 = 1$.
- Le triangle $ACD$ est isocèle, avec $AC = 2$. Avec $u^2 + v^2 = 1$, on calcule
  $AD^2 = 2 + 2u \leqslant 2$, donc $AD \neq 2$, et $CD^2 = 2 - 2u$, qui vaut $4$ seulement si
  $u = -1$, donc $D = A$, impossible. Il reste $AD = CD$, donc $u = 0$, puis $v = \pm 1$.

Ainsi, tout autre point de l'ensemble est $(0\,;1)$ ou $(0\,;-1)$ : l'ensemble a au plus
$3 + 2 = 5$ points. Donc, s'il a au moins $6$ points, trois d'entre eux ne sont jamais alignés.

**Étape 3 : supposons qu'il existe un bon ensemble de $7$ points.** C'est suffisant pour
conclure : si un bon ensemble avait plus de $7$ points, en en gardant seulement $7$ on obtiendrait
encore un bon ensemble. On va aboutir à une contradiction. Soit $S$ un bon ensemble de $7$ points.

*Un point très « central ».* Le **score** d'un point $P$ de $S$ est le nombre de triangles dont $P$
est le sommet principal. Il y a $\binom{7}{3} = 35$ triangles, chacun a exactement un sommet
principal, donc la somme des $7$ scores vaut $35$. Si tous les scores valaient au plus $4$, leur
somme vaudrait au plus $28$. Il existe donc un point $O$ de score au moins $5$.

*Trois points à la même distance de $O$.* Un triangle de sommet principal $O$ correspond à deux
autres points à la même distance de $O$. Rangeons les six autres points en groupes selon leur
distance à $O$. Si aucun groupe n'avait trois points ou plus, chaque groupe aurait un ou deux
points, il y aurait au plus trois groupes de deux, et le score de $O$ vaudrait au plus $3$. Il
existe donc trois points $A$, $B$, $C$ avec
$$OA = OB = OC = x .$$
Le triangle $ABC$ est isocèle : nommons ses sommets de sorte que $AB = AC = y$, et notons
$BC = z$. Les trois nombres $x$, $y$, $z$ sont deux à deux différents : $y \neq z$ car $ABC$ n'est
pas équilatéral, $y \neq x$ car $OAB$ ne l'est pas, $z \neq x$ car $OBC$ ne l'est pas.

Notons $\mathcal{C}$ le cercle de centre $O$ et de rayon $x$. Il passe par $A$, $B$ et $C$.

**Étape 4 : tous les points de $S$, sauf $O$, sont sur $\mathcal{C}$.** Supposons qu'un point $D$
de $S$, différent de $O$, ne soit pas sur $\mathcal{C}$, c'est-à-dire $OD \neq x$.

- *Le triangle $BCD$.* Il est isocèle, donc $DB = DC$, $BD = BC$ ou $CD = CB$. Si $DB = DC$, le
  point $D$ serait sur la médiatrice de $[BC]$. Mais cette médiatrice contient déjà $A$ (car
  $AB = AC$) et $O$ (car $OB = OC$), et les trois points $A$, $O$, $D$ seraient alignés, ce que
  l'étape 2 interdit. Donc $BD = z$ ou $CD = z$. Les points $B$ et $C$ jouent le même rôle
  ($AB = AC$ et $OB = OC$) : quitte à échanger leurs noms, on peut supposer $BD = z$.
- *Le triangle $OBD$* a pour côtés $OB = x$, $BD = z$ et $OD$. Comme $x \neq z$, l'égalité de deux
  côtés impose $OD = x$ ou $OD = z$. Or $OD \neq x$, donc $OD = z$.
- *Le triangle $BCD$* a $BD = BC = z$ ; il n'est pas équilatéral, donc $CD \neq z$.
- *Le triangle $OCD$* a pour côtés $OC = x$, $OD = z$ et $CD$. Comme $x \neq z$ et $CD \neq z$, il
  faut $CD = x$.

Regardons maintenant la longueur $AD$ dans trois triangles :

- dans $ABD$, on a $AB = y$ et $BD = z$, avec $y \neq z$, donc $AD = y$ ou $AD = z$ ;
- dans $AOD$, on a $AO = x$ et $OD = z$, avec $x \neq z$, donc $AD = x$ ou $AD = z$ ;
- dans $ACD$, on a $AC = y$ et $CD = x$, avec $x \neq y$, donc $AD = x$ ou $AD = y$.

Les deux premières lignes imposent $AD = z$ (car $x \neq y$), et la troisième interdit alors
$AD = z$. C'est une contradiction. Donc tous les points de $S$ autres que $O$ sont sur
$\mathcal{C}$.

**Étape 5 : le cercle $\mathcal{C}$ contient au plus $5$ points de $S$.** Soit $P$ un point de $S$
sur $\mathcal{C}$, autre que $A$ et $B$. Le triangle $ABP$ est isocèle, donc :

- ou bien $PA = AB$ : $P$ est sur le cercle de centre $A$ et de rayon $y$. Ce cercle et
  $\mathcal{C}$ sont différents (leurs centres sont différents), donc ils ont au plus deux points
  communs, et ce sont $B$ et $C$. Donc $P = C$ ;
- ou bien $PB = BA$ : $P$ est sur le cercle de centre $B$ et de rayon $y$. Ce cercle a au plus
  deux points communs avec $\mathcal{C}$, et l'un d'eux est $A$. Cela laisse au plus un point
  possible ;
- ou bien $PA = PB$ : $P$ est sur la médiatrice de $[AB]$, qui passe par $O$. Elle coupe
  $\mathcal{C}$ en deux points diamétralement opposés. S'ils étaient tous les deux dans $S$, ils
  seraient alignés avec $O$, ce que l'étape 2 interdit. Cela laisse au plus un point possible.

Le cercle $\mathcal{C}$ contient donc au plus $2 + 1 + 1 + 1 = 5$ points de $S$, à savoir $A$, $B$,
$C$ et au plus deux autres. Avec $O$, l'ensemble $S$ a au plus $6$ points, ce qui contredit le
fait qu'il en a $7$.

**Conclusion.** Il n'existe pas de bon ensemble de $7$ points ou plus, et il en existe un de
$6$ points. Le plus grand entier cherché est $n = 6$.

## Going further

Les petits cas se traitent à la main. Un triangle isocèle non équilatéral convient pour $n = 3$, un
carré pour $n = 4$, un carré et son centre pour $n = 5$ : le triangle plat formé par le centre et
deux sommets opposés est isocèle, puisque le centre est le milieu. On remarque d'ailleurs que le
centre $O$ du pentagone de l'étape 1 est exactement le point « central » de l'étape 3, qui est le
sommet principal de $\binom{5}{2} = 10$ triangles.

Le corrigé officiel propose quatre démonstrations différentes de la majoration. Celle-ci est la
plus courte. D'autres utilisent le théorème de Turán sur les graphes, ou une étude des angles
$36°$, $72°$ et $108°$ qui apparaissent forcément.
