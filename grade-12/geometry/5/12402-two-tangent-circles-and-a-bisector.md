---
id: "12402"
title: "Deux cercles tangents et une bissectrice"
grade: 12
theme: geometry
difficulty: 5
duration_min: 75
tags: [cercles-tangents, puissance-d-un-point, angle-inscrit, bissectrice, trigonometrie, aire]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 29 novembre 2017"
  reference: "2017-12_pofm-2017-2018-test-novembre.pdf, exercice 2 ; corrigé 2017-12_pofm-2017-2018-test-novembre-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/12/pofm-2017-2018-test-novembre.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-12_pofm-2017-2018-test-novembre.pdf"
---

## Statement

Deux cercles $\omega_1$ et $\omega_2$ sont tangents en un point $T$, et $\omega_1$ est à
l'intérieur de $\omega_2$.

Soient $M$ et $N$ deux points distincts de $\omega_1$, tous deux différents de $T$. Soient $[AB]$
et $[CD]$ deux cordes du cercle $\omega_2$ qui passent respectivement par $M$ et par $N$.

On suppose que les trois segments $[BD]$, $[AC]$ et $[MN]$ se coupent en un même point $K$.

Montrer que la droite $(TK)$ est la bissectrice de l'angle $\widehat{MTN}$.

![Les deux cercles tangents en T, les cordes [AB] et [CD], et le point K où se coupent [AC], [BD] et [MN]](12402-figure-1.svg)

## Hints

1. Il suffit de montrer que $\dfrac{TM}{TN} = \dfrac{KM}{KN}$. Pour passer de là à la
   bissectrice, et pour beaucoup de calculs de longueurs, une formule est précieuse : l'aire
   d'un triangle vaut la moitié du produit de deux côtés par le sinus de l'angle qu'ils forment.
2. Prolonge $(TM)$ et $(TN)$ jusqu'à recouper $\omega_2$ en $E$ et $F$. Les deux cercles se
   déduisent l'un de l'autre par un agrandissement de centre $T$ : compare $\dfrac{TM}{ME}$ et
   $\dfrac{TN}{NF}$.
3. Le point $M$ est sur deux cordes de $\omega_2$, $[AB]$ et $[TE]$. Que dire de $MA \cdot MB$
   et de $MT \cdot ME$ ? Tu dois obtenir $\dfrac{TM^2}{TN^2} = \dfrac{AM \cdot MB}{CN \cdot ND}$.
4. Il reste à montrer que $\dfrac{AM \cdot MB}{CN \cdot ND} = \dfrac{KM^2}{KN^2}$. Écris la
   formule de l'indication 1 dans les triangles $AMK$, $DNK$, $BMK$ et $CNK$, et utilise des
   angles inscrits et des angles opposés par le sommet.

## Solution

Dans toute la solution, on utilise trois outils simples. On les démontre d'abord.

### Trois outils

**Outil 1 (aire et sinus).** Dans un triangle $XYZ$, la hauteur issue de $Z$ mesure
$XZ \times \sin \widehat{X}$ (si l'angle en $X$ est obtus, on utilise
$\sin(180^\circ - x) = \sin x$). L'aire du triangle vaut donc
$\frac{1}{2} \, XY \cdot XZ \cdot \sin \widehat{X}$. En écrivant cette aire de deux façons, avec
l'angle en $Y$ puis avec l'angle en $Z$, on obtient
$$\tfrac{1}{2} \, YX \cdot YZ \cdot \sin \widehat{Y} = \tfrac{1}{2} \, ZX \cdot ZY \cdot \sin \widehat{Z},
\qquad \text{donc} \qquad XY \cdot \sin \widehat{Y} = XZ \cdot \sin \widehat{Z}.$$

**Outil 2 (deux cordes qui se coupent).** Si deux cordes $[PQ]$ et $[RS]$ d'un même cercle se
coupent en un point $M$, alors $MP \cdot MQ = MR \cdot MS$. En effet, les triangles $MPR$ et
$MSQ$ ont des angles égaux en $M$ (opposés par le sommet), et $\widehat{MPR} = \widehat{QPR}$ et
$\widehat{MSQ} = \widehat{RSQ}$ sont deux angles inscrits qui interceptent le même arc $RQ$.
Ces deux triangles sont donc semblables, d'où $\dfrac{MP}{MS} = \dfrac{MR}{MQ}$.

**Outil 3 (deux cercles tangents).** Plaçons l'origine en $T$. Comme les cercles sont tangents en
$T$, leurs centres $O_1$ et $O_2$ sont alignés avec $T$, du même côté. Notons $r_1 < r_2$ les
rayons et $k = \dfrac{r_2}{r_1}$, de sorte que $\overrightarrow{TO_2} = k \, \overrightarrow{TO_1}$.
Si $M$ est sur $\omega_1$, le point $E$ défini par $\overrightarrow{TE} = k \, \overrightarrow{TM}$
vérifie
$$O_2E = \| k \, \overrightarrow{TM} - k \, \overrightarrow{TO_1} \| = k \cdot O_1M = k \, r_1 = r_2,$$
donc $E$ est sur $\omega_2$ : c'est le second point d'intersection de $(TM)$ avec $\omega_2$.
Ainsi $TE = k \cdot TM$, et comme $M$ est entre $T$ et $E$, $ME = TE - TM = (k - 1) \, TM$.

### Étape 1 : $\dfrac{TM^2}{TN^2} = \dfrac{AM \cdot MB}{CN \cdot ND}$

Soient $E$ et $F$ les seconds points d'intersection de $(TM)$ et de $(TN)$ avec $\omega_2$.
D'après l'outil 3,
$$ME = (k - 1) \, TM \qquad \text{et} \qquad NF = (k - 1) \, TN.$$

Le point $M$ est sur les deux cordes $[AB]$ et $[TE]$ de $\omega_2$. L'outil 2 donne
$AM \cdot MB = TM \cdot ME = (k-1) \, TM^2$. De même, $N$ est sur les cordes $[CD]$ et $[TF]$,
donc $CN \cdot ND = TN \cdot NF = (k-1) \, TN^2$. En divisant :
$$\frac{AM \cdot MB}{CN \cdot ND} = \frac{TM^2}{TN^2}.$$

### Étape 2 : $\dfrac{AM \cdot MB}{CN \cdot ND} = \dfrac{KM^2}{KN^2}$

Appliquons l'outil 1 dans quatre triangles.

- Dans $AMK$ : $AM \cdot \sin \widehat{MAK} = MK \cdot \sin \widehat{AKM}$.
- Dans $DNK$ : $DN \cdot \sin \widehat{NDK} = NK \cdot \sin \widehat{DKN}$.
- Dans $BMK$ : $BM \cdot \sin \widehat{MBK} = MK \cdot \sin \widehat{BKM}$.
- Dans $CNK$ : $CN \cdot \sin \widehat{NCK} = NK \cdot \sin \widehat{CKN}$.

Comparons les angles.

- $\widehat{MAK} = \widehat{BAC}$ et $\widehat{NDK} = \widehat{BDC}$ (car $M \in [AB]$, $K \in [AC]$,
  $N \in [DC]$, $K \in [DB]$). Ce sont deux angles inscrits dans $\omega_2$ qui interceptent la
  corde $[BC]$ : ils sont égaux ou supplémentaires, donc ils ont le même sinus.
- De même, $\widehat{MBK} = \widehat{ABD}$ et $\widehat{NCK} = \widehat{ACD}$ interceptent la corde
  $[AD]$ : même sinus.
- Comme $K$ est à la fois entre $A$ et $C$, entre $B$ et $D$, et entre $M$ et $N$, les angles
  $\widehat{AKM}$ et $\widehat{CKN}$ sont opposés par le sommet, donc égaux. De même
  $\widehat{BKM} = \widehat{DKN}$.

En divisant la première égalité par la deuxième, puis la troisième par la quatrième, les sinus
des angles inscrits disparaissent :
$$\frac{AM}{DN} = \frac{MK}{NK} \cdot \frac{\sin \widehat{AKM}}{\sin \widehat{DKN}}
\qquad \text{et} \qquad
\frac{BM}{CN} = \frac{MK}{NK} \cdot \frac{\sin \widehat{BKM}}{\sin \widehat{CKN}}.$$
Multiplions ces deux égalités. Grâce aux angles opposés par le sommet, les quatre sinus restants
se simplifient :
$$\frac{AM \cdot BM}{DN \cdot CN} = \frac{MK^2}{NK^2} \cdot
\frac{\sin \widehat{AKM} \cdot \sin \widehat{BKM}}{\sin \widehat{BKM} \cdot \sin \widehat{AKM}}
= \frac{MK^2}{NK^2}.$$

### Étape 3 : la bissectrice

Les étapes 1 et 2 donnent $\dfrac{TM^2}{TN^2} = \dfrac{KM^2}{KN^2}$, donc, les longueurs étant
positives,
$$\frac{TM}{TN} = \frac{KM}{KN}.$$

Appliquons encore l'outil 1, dans les triangles $TKM$ et $TKN$ :
$$TM \cdot \sin \widehat{MTK} = KM \cdot \sin \widehat{MKT}
\qquad \text{et} \qquad
TN \cdot \sin \widehat{NTK} = KN \cdot \sin \widehat{NKT}.$$
Comme $K$ est entre $M$ et $N$, les angles $\widehat{MKT}$ et $\widehat{NKT}$ sont
supplémentaires, donc ont le même sinus. En divisant, puis en utilisant
$\dfrac{TM}{TN} = \dfrac{KM}{KN}$ :
$$\frac{\sin \widehat{MTK}}{\sin \widehat{NTK}} = \frac{KM}{KN} \cdot \frac{TN}{TM} = 1.$$

Les angles $\widehat{MTK}$ et $\widehat{NTK}$ ont donc le même sinus : ils sont égaux ou
supplémentaires. Ils ne peuvent pas être supplémentaires, car leur somme vaut
$\widehat{MTN}$ (le point $K$ est sur le segment $[MN]$), qui est strictement inférieur à
$180^\circ$ puisque $M$, $T$, $N$ sont trois points distincts d'un cercle, donc non alignés.

Donc $\widehat{MTK} = \widehat{KTN}$ : **la droite $(TK)$ est la bissectrice de l'angle
$\widehat{MTN}$.**

## Going further

Dans le cas particulier où la corde $[AB]$ est tangente à $\omega_1$ en $M$, montrer que $(TM)$
est la bissectrice de l'angle $\widehat{ATB}$. C'est un résultat classique, très utile dans les
problèmes de cercles tangents.
