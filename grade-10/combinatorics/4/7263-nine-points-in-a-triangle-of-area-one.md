---
id: "7263"
title: "Neuf points dans un triangle d'aire 1"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [tiroirs, aire, triangle des milieux, decoupage]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Saint-Chéron 2024"
  reference: "Poly_StCheron_2024.pdf, groupe A, « Principe des tiroirs », exercice 9"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_StCheron_2024.pdf"
---

## Statement

On place $9$ points à l'intérieur d'un triangle d'aire $1$.

Montrer qu'on peut en choisir trois qui forment un triangle d'aire strictement inférieure à
$\dfrac{1}{4}$.

## Hints

1. Le nombre $\dfrac{1}{4}$ suggère un découpage du triangle en quatre morceaux de même aire.
   Lequel ?
2. Joins les milieux des trois côtés. Combien de petits triangles obtiens-tu, et quelle est l'aire
   de chacun ?
3. Neuf points, quatre morceaux : applique le principe des tiroirs.
4. Reste à comprendre pourquoi trois points d'un petit triangle forment un triangle d'aire au plus
   celle de ce petit triangle.

## Solution

**Le découpage.**

Notons $ABC$ le triangle de départ, et $A'$, $B'$, $C'$ les milieux respectifs de $[BC]$, $[CA]$,
$[AB]$.

Les trois segments $[A'B']$, $[B'C']$, $[C'A']$ découpent $ABC$ en quatre petits triangles :
$AC'B'$, $C'BA'$, $B'A'C$ et $A'B'C'$.

D'après le théorème des milieux, $A'B' = \dfrac{AB}{2}$, $B'C' = \dfrac{BC}{2}$ et
$C'A' = \dfrac{CA}{2}$. Les quatre petits triangles sont donc tous semblables à $ABC$ dans le
rapport $\dfrac{1}{2}$, et leurs aires valent toutes
$$\left(\frac{1}{2}\right)^2 \times 1 = \frac{1}{4} .$$

**Le principe des tiroirs.**

Les $9$ points sont répartis dans ces $4$ petits triangles (si un point tombe sur une des lignes de
découpage, on le range dans l'un des deux triangles qui la bordent, peu importe lequel).

Comme $9 = 4 \times 2 + 1$, l'un des quatre petits triangles contient **au moins $3$** des points.
Appelons-le $T$, et notons $P$, $Q$, $R$ trois des points qu'il contient.

**Trois points dans un triangle forment un petit triangle.**

Montrons que l'aire de $PQR$ est au plus celle de $T$.

Fixons d'abord $Q$ et $R$, et faisons bouger $P$ dans $T$. L'aire de $PQR$ vaut
$$\frac{QR \times d}{2} ,$$
où $d$ est la distance de $P$ à la droite $(QR)$. Cette aire est donc maximale lorsque $P$ est le
plus loin possible de la droite $(QR)$. Or, parmi tous les points d'un triangle, celui qui est le
plus éloigné d'une droite donnée est toujours l'un des trois sommets : en effet, si on se déplace
en ligne droite dans le triangle, la distance à une droite fixée varie de façon régulière, sans
bosse ni creux, donc son maximum se produit au bord, puis de proche en proche en un sommet.

On peut donc remplacer $P$ par un sommet de $T$ sans diminuer l'aire. En recommençant avec $Q$,
puis avec $R$, on aboutit aux trois sommets de $T$. Ainsi
$$\text{aire}(PQR) \leqslant \text{aire}(T) = \frac{1}{4} .$$

**Pourquoi l'inégalité est stricte.**

L'égalité ne pourrait avoir lieu que si $P$, $Q$ et $R$ étaient exactement les trois sommets de
$T$.

Or regardons ces sommets. Pour les trois petits triangles des coins, ce sont un sommet de $ABC$ et
deux milieux de côtés. Pour le triangle du milieu, ce sont les trois milieux $A'$, $B'$, $C'$.
Dans tous les cas, **les sommets de $T$ sont sur le bord du triangle $ABC$**.

Mais nos $9$ points sont à l'intérieur de $ABC$ : aucun d'eux n'est sur le bord. Donc $P$, $Q$, $R$
ne peuvent pas être les sommets de $T$, et
$$\text{aire}(PQR) < \frac{1}{4} .$$

**Trois des neuf points forment donc bien un triangle d'aire strictement inférieure à
$\dfrac{1}{4}$.**

## Going further

Le même découpage, poussé d'un cran, coupe chaque petit triangle en quatre : on obtient $16$
triangles d'aire $\dfrac{1}{16}$. Avec $16 \times 2 + 1 = 33$ points à l'intérieur, on trouverait
donc trois points formant un triangle d'aire inférieure à $\dfrac{1}{16}$.

De façon générale, avec $2 \times 4^{k} + 1$ points on obtient un triangle d'aire inférieure à
$\dfrac{1}{4^{k}}$.

Attention, ce raisonnement ne dit rien sur le **meilleur** résultat possible : avec $9$ points on
peut sans doute faire mieux que $\dfrac{1}{4}$, mais le découpage en quatre ne permet pas de le
démontrer.
