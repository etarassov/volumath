---
id: "22006"
title: "Un produit égal à 8 : la somme et le produit"
grade: 10
theme: algebra
difficulty: 3
duration_min: 30
tags: [inegalite, inegalite-arithmetico-geometrique, racine-cubique, cas-d-egalite]
adapted_from: null
see_also: ["8257", "22008"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », première partie, cours « Inégalités » (Gaspard D.), exercice 6 (erreur de la source : pour abc ≤ 1, le corrigé écrit 1 = (a + b + c)/3, ce qui est faux en général puisqu'on sait seulement que a + b + c ≥ 3 ; la solution ci-dessous démontre abc ≤ 1 autrement)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois nombres réels positifs ou nuls tels que

$$(a+1)(b+1)(c+1) = 8.$$

1. Montrer que $a + b + c \geq 3$.
2. Montrer que $abc \leq 1$.

Dans chaque cas, trouver quand il y a égalité.

## Hints

1. Pour trois nombres positifs $x$, $y$, $z$, on a $\frac{x+y+z}{3} \geq \sqrt[3]{xyz}$. Pour le démontrer, regardez $u^3 + v^3 + w^3 - 3uvw$ et factorisez par $u + v + w$.
2. Pour la question 1, appliquez cette inégalité aux trois nombres $a+1$, $b+1$, $c+1$.
3. Pour la question 2, développez le produit $(a+1)(b+1)(c+1)$ et posez $t = \sqrt[3]{abc}$. Minorez $a+b+c$ et $ab+bc+ca$ à l'aide de $t$.
4. On doit trouver $(1+t)^3 \leq 8$.

## Solution

**Un outil : la moyenne de trois nombres.** Pour un nombre $x \geq 0$, on note $\sqrt[3]{x}$ sa racine cubique : c'est le nombre positif dont le cube vaut $x$. Il est unique, car la fonction cube est strictement croissante sur $[0, +\infty[$.

*Lemme.* Pour tous $x, y, z \geq 0$,
$$\frac{x+y+z}{3} \geq \sqrt[3]{xyz},$$
avec égalité seulement si $x = y = z$.

*Preuve.* Posons $u = \sqrt[3]{x}$, $v = \sqrt[3]{y}$, $w = \sqrt[3]{z}$. En développant le membre de droite, on vérifie que
$$u^3 + v^3 + w^3 - 3uvw = (u+v+w)\left(u^2 + v^2 + w^2 - uv - vw - wu\right),$$
et que
$$u^2 + v^2 + w^2 - uv - vw - wu = \frac{1}{2}\left((u-v)^2 + (v-w)^2 + (w-u)^2\right) \geq 0.$$
Comme $u + v + w \geq 0$, on obtient $u^3 + v^3 + w^3 \geq 3uvw$, c'est-à-dire $x + y + z \geq 3\sqrt[3]{xyz}$. Il y a égalité seulement si $u+v+w = 0$ ou si les trois carrés sont nuls, et dans les deux cas $u = v = w$, donc $x = y = z$.

**Question 1.** Appliquons le lemme aux trois nombres $a+1$, $b+1$, $c+1$, qui sont positifs :
$$\frac{a + b + c + 3}{3} \geq \sqrt[3]{(a+1)(b+1)(c+1)} = \sqrt[3]{8} = 2.$$
Donc $a + b + c + 3 \geq 6$, c'est-à-dire $a + b + c \geq 3$.

Égalité : il faut $a + 1 = b + 1 = c + 1$, donc $a = b = c$, puis $(a+1)^3 = 8$, donc $a + 1 = 2$. Il y a égalité seulement pour $a = b = c = 1$, et ce triplet convient bien : $2 \times 2 \times 2 = 8$ et $1 + 1 + 1 = 3$.

**Question 2.** Développons :
$$8 = (a+1)(b+1)(c+1) = abc + (ab + bc + ca) + (a + b + c) + 1.$$
Posons $t = \sqrt[3]{abc}$, de sorte que $abc = t^3$. Le lemme donne :

- avec $a$, $b$, $c$ : $a + b + c \geq 3\sqrt[3]{abc} = 3t$ ;
- avec $ab$, $bc$, $ca$, dont le produit vaut $(abc)^2 = t^6 = (t^2)^3$ : $ab + bc + ca \geq 3t^2$.

Donc
$$8 \geq t^3 + 3t^2 + 3t + 1 = (1 + t)^3.$$
Comme $(1+t)^3 \leq 8 = 2^3$ et que la fonction cube est croissante, $1 + t \leq 2$, donc $t \leq 1$, et $abc = t^3 \leq 1$.

Égalité : il faut $t = 1$ et l'égalité dans $a + b + c \geq 3t$, donc $a = b = c$ et $a^3 = 1$. Là encore, seul le triplet $a = b = c = 1$ donne l'égalité.

**Conclusion.** On a $a + b + c \geq 3$ et $abc \leq 1$, avec égalité dans les deux cas seulement pour $a = b = c = 1$.

## Going further

1. La question 1 ne donne pas la question 2 : un grand $a + b + c$ ne dit rien sur $abc$. Trouvez un triplet qui vérifie la condition avec $a + b + c = 7$. Quelle est la plus grande valeur possible de $a + b + c$ ?
2. Montrer plus généralement que, pour $a, b, c \geq 0$, on a $(1+a)(1+b)(1+c) \geq \left(1 + \sqrt[3]{abc}\right)^3$.
