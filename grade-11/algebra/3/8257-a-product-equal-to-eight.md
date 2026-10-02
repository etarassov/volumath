---
id: "8257"
title: "Un produit égal à 8"
grade: 11
theme: algebra
difficulty: 3
duration_min: 30
tags: [inegalite, inegalite-arithmetico-geometrique, changement-de-variable]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe B"
  reference: "PolycopieV1-1.pdf, chapitre IV « Groupe B », entraînement de fin de parcours, exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Soient $a$, $b$, $c$ des réels positifs ou nuls tels que

$$(a+1)(b+1)(c+1) = 8 .$$

Montrer que $a + b + c \ge 3$.

## Hints

1. L'hypothèse porte sur $a+1$, $b+1$, $c+1$, et la conclusion sur $a$, $b$, $c$. Change de
   variables pour que tout parle de la même chose.
2. Avec $u = a+1$, $v = b+1$, $w = c+1$, que deviennent l'hypothèse et la conclusion ?
3. Tu veux minorer une **somme** connaissant un **produit** : c'est exactement ce que fait
   l'inégalité entre moyenne arithmétique et moyenne géométrique.
4. Pour trois nombres positifs, cette inégalité s'écrit
   $\dfrac{u+v+w}{3} \ge \sqrt[3]{uvw}$.

## Solution

**Changement de variables.**

Posons

$$u = a+1, \qquad v = b+1, \qquad w = c+1 .$$

Comme $a$, $b$, $c$ sont positifs ou nuls, $u$, $v$, $w$ sont tous au moins égaux à $1$, donc
strictement positifs. L'hypothèse devient

$$uvw = 8 ,$$

et la conclusion à démontrer, $a+b+c \ge 3$, devient

$$(u-1) + (v-1) + (w-1) \ge 3, \qquad \text{c'est-à-dire} \qquad u + v + w \ge 6 .$$

**Le bon outil : moyenne arithmétique contre moyenne géométrique.**

*Lemme. Pour tous réels positifs $u$, $v$, $w$ :*

$$\frac{u+v+w}{3} \ \ge \ \sqrt[3]{uvw} .$$

*Démonstration.* Posons $x = \sqrt[3]{u}$, $y = \sqrt[3]{v}$, $z = \sqrt[3]{w}$, qui sont
positifs. Il s'agit de montrer $x^3 + y^3 + z^3 \ge 3xyz$. Or on dispose de l'identité

$$x^3 + y^3 + z^3 - 3xyz = (x+y+z)\left(x^2 + y^2 + z^2 - xy - yz - zx\right) ,$$

et le second facteur se réécrit

$$x^2 + y^2 + z^2 - xy - yz - zx = \frac{(x-y)^2 + (y-z)^2 + (z-x)^2}{2} \ \ge \ 0 .$$

Le premier facteur $x+y+z$ est positif. Le produit est donc positif, ce qui donne
$x^3+y^3+z^3 \ge 3xyz$ et le lemme. $\square$

**On applique.**

Avec $uvw = 8$, on a $\sqrt[3]{uvw} = \sqrt[3]{8} = 2$, donc

$$\frac{u+v+w}{3} \ \ge \ 2, \qquad \text{d'où} \qquad u+v+w \ \ge \ 6 .$$

C'est exactement ce qu'il fallait démontrer :

$$\boxed{a + b + c \ \ge \ 3 .}$$

**Le cas d'égalité.**

Dans la démonstration du lemme, l'égalité demande $(x-y)^2 + (y-z)^2 + (z-x)^2 = 0$, donc
$x = y = z$, donc $u = v = w$. Avec $uvw = 8$ cela donne $u = v = w = 2$, c'est-à-dire
$a = b = c = 1$. On vérifie : $(1+1)^3 = 8$ et $1+1+1 = 3$. L'inégalité est donc optimale.

## Going further

1. Avec la même méthode, que peut-on dire de $a+b+c$ si $(a+1)(b+1)(c+1) = 27$ ?
2. Peut-on aussi **majorer** $a+b+c$ sous l'hypothèse $(a+1)(b+1)(c+1) = 8$ ? Essayer
   $a = 7$, $b = c = 0$, puis chercher le maximum.
3. Démontrer de la même façon que si $abc = 1$ avec $a$, $b$, $c > 0$, alors
   $a + b + c \ge 3$.
