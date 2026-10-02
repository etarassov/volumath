---
id: "12453"
title: "Trois distances qui suffisent à retrouver le côté d'un triangle équilatéral"
grade: 10
theme: geometry
difficulty: 5
duration_min: 60
tags: [triangle-equilateral, rotation, symetrie-axiale, mediatrice, angle-inscrit, cercle-circonscrit, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 15 mai 2019"
  reference: "2019-11_Test-15-05.pdf, exercice 5 (groupe Senior) ; corrigé dans le même fichier (le corrigé conclut avec des cercles tangents et l'égalité de Ptolémée ; solution réécrite avec une symétrie axiale et les angles inscrits)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/11/Test-15-05.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2019-11_Test-15-05.pdf"
---

## Statement

Soit $ABC$ un triangle équilatéral et $P$ un point du plan tel que $PA < PB < PC$.

On suppose que la seule donnée des trois longueurs $PA$, $PB$ et $PC$ permet de retrouver, de
manière unique, la longueur $AB$. Autrement dit : si $A_1B_1C_1$ est un triangle équilatéral et
$P_1$ un point tel que $P_1A_1 = PA$, $P_1B_1 = PB$ et $P_1C_1 = PC$, alors forcément
$A_1B_1 = AB$.

Démontrer que $P$ est sur le cercle circonscrit au triangle $ABC$.

## Hints

1. Appelle $r$ la rotation de centre $A$ et d'angle $60^\circ$ qui envoie $B$ sur $C$, et pose
   $Q = r(P)$. Quelle est la nature du triangle $APQ$ ? Que vaut $QC$ ?
2. Le triangle $PQC$ a pour côtés $PA$, $PB$ et $PC$. Montre que si $PC \neq PA + PB$, le point
   $C$ n'est pas sur la droite $(PQ)$.
3. Dans ce cas, appelle $C'$ le symétrique de $C$ par rapport à la droite $(PQ)$, et $B'$ le point
   tel que $r(B') = C'$. Regarde le triangle $AB'C'$ et les distances de $P$ à ses sommets. Que dit
   l'hypothèse ? Puis cherche qui est sur la médiatrice de $[CC']$.
4. Une fois que tu sais que $PC = PA + PB$, le point $Q$ est sur le segment $[PC]$. Calcule
   $\widehat{APC}$ et $\widehat{APB}$, puis pense aux angles opposés d'un quadrilatère inscrit.

## Solution

On utilise deux propriétés des transformations : une rotation et une symétrie axiale conservent
les distances et les angles.

### Étape 1 : une rotation

Remarquons d'abord que $P \neq A$ : sinon on aurait $PB = AB = AC = PC$, alors que $PB < PC$.

Soit $r$ la rotation de centre $A$ et d'angle $60^\circ$ qui envoie $B$ sur $C$, et $Q = r(P)$.

- On a $AQ = AP$ et $\widehat{PAQ} = 60^\circ$. Le triangle $APQ$ est isocèle en $A$ avec un angle
  de $60^\circ$ au sommet, il est donc **équilatéral**, et $PQ = PA$.
- La rotation $r$ envoie $P$ sur $Q$ et $B$ sur $C$, et elle conserve les distances, donc
  $QC = PB$.

Le triangle $PQC$ a donc pour côtés $PQ = PA$, $QC = PB$ et $PC$.

### Étape 2 : on montre que $PC = PA + PB$

Raisonnons par l'absurde et supposons que $PC \neq PA + PB$.

**Le point $C$ n'est pas sur la droite $(PQ)$.** Si $P$, $Q$ et $C$ étaient alignés, l'un des trois
serait entre les deux autres, et on aurait l'une des trois égalités suivantes :

- $PC = PQ + QC = PA + PB$, ce que l'on a exclu ;
- $PQ = PC + CQ$, soit $PA = PC + PB$, impossible car $PA < PC$ ;
- $QC = QP + PC$, soit $PB = PA + PC$, impossible car $PB < PC$.

**Un deuxième triangle équilatéral.** Soit $C'$ le symétrique de $C$ par rapport à la droite
$(PQ)$. Comme $C$ n'est pas sur cette droite, $C' \neq C$. La symétrie conserve les distances et
laisse fixes $P$ et $Q$, donc
$$PC' = PC \quad \text{et} \quad QC' = QC = PB.$$
Soit $B'$ le point tel que $r(B') = C'$ (c'est l'image de $C'$ par la rotation de centre $A$ et
d'angle $60^\circ$ dans l'autre sens). Alors $AB' = AC'$ et $\widehat{B'AC'} = 60^\circ$, donc le
triangle $AB'C'$ est équilatéral. De plus, la rotation $r$ envoie $P$ sur $Q$ et $B'$ sur $C'$,
donc $PB' = QC' = PB$.

Ainsi, pour le triangle équilatéral $AB'C'$, les distances du point $P$ aux trois sommets sont
$$PA, \qquad PB' = PB, \qquad PC' = PC :$$
ce sont les mêmes que pour le triangle $ABC$. D'après l'hypothèse, les deux triangles ont le même
côté : $AC' = AB' = AB = AC$.

**La contradiction.** Les points $C$ et $C'$ sont distincts. On a $AC = AC'$, donc $A$ est sur la
médiatrice de $[CC']$. De même $PC = PC'$ et $QC = QC'$, donc $P$ et $Q$ sont aussi sur cette
médiatrice. Les trois points $A$, $P$, $Q$ sont donc alignés, alors qu'ils forment un triangle
équilatéral de côté $PA > 0$. C'est absurde.

Par conséquent, $$PC = PA + PB.$$

### Étape 3 : deux angles en $P$

Comme $PC = PQ + QC$, le point $Q$ est sur le segment $[PC]$, et il est distinct de $P$ et de $C$
puisque $PQ = PA > 0$ et $QC = PB > 0$.

- Les demi-droites $[PQ)$ et $[PC)$ sont les mêmes, donc
  $\widehat{APC} = \widehat{APQ} = 60^\circ$.
- Les angles $\widehat{AQP}$ et $\widehat{AQC}$ sont supplémentaires, donc
  $\widehat{AQC} = 180^\circ - 60^\circ = 120^\circ$. La rotation $r$ envoie $A$, $P$, $B$ sur $A$,
  $Q$, $C$, et elle conserve les angles, donc
  $$\widehat{APB} = \widehat{AQC} = 120^\circ.$$

### Étape 4 : $P$ et $C$ sont de part et d'autre de $(AB)$

Le point $P$ n'est pas sur la droite $(AB)$, sinon $\widehat{APB}$ vaudrait $0^\circ$ ou
$180^\circ$. Supposons que $P$ soit du même côté de $(AB)$ que $C$, et cherchons une
contradiction.

Dans le triangle $APB$, on a $\widehat{PAB} + \widehat{PBA} = 180^\circ - 120^\circ = 60^\circ$,
donc $\widehat{PAB} < 60^\circ = \widehat{CAB}$ et $\widehat{PBA} < 60^\circ = \widehat{CBA}$.
Comme $P$ et $C$ sont du même côté de $(AB)$, la demi-droite $[AP)$ est donc à l'intérieur de
l'angle $\widehat{CAB}$, et $P$ est du même côté de $(AC)$ que $B$. De même, $P$ est du même côté
de $(BC)$ que $A$. Le point $P$ est donc **strictement à l'intérieur** du triangle $ABC$.

Dans ce cas, la droite $(AP)$ coupe le segment $[BC]$ en un point $X$, et $P$ est entre $A$ et $X$.
On utilise deux fois le fait qu'un angle extérieur d'un triangle est la somme des deux angles
intérieurs qui ne lui sont pas adjacents :

- dans le triangle $PXC$, l'angle extérieur en $P$ vaut
  $\widehat{APC} = \widehat{PXC} + \widehat{PCX} > \widehat{PXC} = \widehat{AXC}$ ;
- dans le triangle $ABX$, l'angle extérieur en $X$ vaut
  $\widehat{AXC} = \widehat{ABX} + \widehat{BAX} > \widehat{ABX} = \widehat{ABC}$.

On obtient $\widehat{APC} > \widehat{ABC} = 60^\circ$, ce qui contredit l'étape 3. Donc $P$ et $C$
sont de part et d'autre de la droite $(AB)$.

### Conclusion

Les points $P$ et $C$ sont de part et d'autre de $(AB)$, et
$$\widehat{APB} + \widehat{ACB} = 120^\circ + 60^\circ = 180^\circ.$$
D'après la réciproque du théorème de l'angle inscrit (deux angles opposés supplémentaires), les
points $A$, $P$, $B$, $C$ sont sur un même cercle. **Le point $P$ est sur le cercle circonscrit au
triangle $ABC$**, plus précisément sur l'arc $AB$ qui ne contient pas $C$.

## Going further

1. Montrer, avec la même rotation, que pour tout point $P$ du plan on a $PC \leqslant PA + PB$.
2. Réciproquement, montrer que si $P$ est sur l'arc $AB$ du cercle circonscrit qui ne contient pas
   $C$, alors $PC = PA + PB$.
3. Montrer que, dans ce cas, les trois longueurs $PA$, $PB$, $PC$ déterminent bien le côté :
   on trouve $AB^2 = PA^2 + PA \times PB + PB^2$. (On pourra utiliser la formule d'Al-Kashi.)
