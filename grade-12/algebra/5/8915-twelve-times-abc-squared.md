---
id: "8915"
title: "Une somme de trois fractions qui dépasse 12(abc)²"
grade: 12
theme: algebra
difficulty: 5
duration_min: 45
tags: [inegalite, moyenne, cas-degalite, puissances]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2026, Groupe A"
  reference: "Poly-Valbonne-2026.pdf, chapitre III « Groupe A », entraînement de mi-parcours, exercice 3"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois nombres réels strictement positifs. Montrer que

$$\dfrac{1+3a^{12}}{b^3} + \dfrac{1+3b^{12}}{c^3} + \dfrac{1+3c^{12}}{a^3} \geq 12\,(abc)^2 .$$

Déterminer ensuite tous les cas où il y a égalité.

## Hints

1. Avant tout : cherchez le cas d'égalité. Essayez $a = b = c = 1$ et regardez ce que valent les deux membres.
2. Les deux côtés ont l'air très différents. Il faut donc une étape qui simplifie les numérateurs, mais **sans casser le cas d'égalité**.
3. Écrivez $1 + 3a^{12}$ comme une somme de quatre termes : $1 + a^{12} + a^{12} + a^{12}$. Que donne l'inégalité entre moyenne arithmétique et moyenne géométrique sur ces quatre nombres ?
4. Vous obtiendrez une somme de la forme $\dfrac{a^9}{b^3} + \dfrac{b^9}{c^3} + \dfrac{c^9}{a^3}$. Appliquez la même inégalité, cette fois à trois termes, et regardez ce que donne le produit.

## Solution

**Repère de départ.** Pour $a = b = c = 1$, le membre de gauche vaut $\tfrac{4}{1}+\tfrac{4}{1}+\tfrac{4}{1} = 12$ et le membre de droite vaut $12$. C'est donc un cas d'égalité, et toutes les inégalités que nous écrirons devront être des égalités en ce point : c'est ce qui va guider les découpages.

### L'outil : l'inégalité arithmético-géométrique

> **Pour deux nombres positifs** $x$, $y$ : $\dfrac{x+y}{2} \geq \sqrt{xy}$, car $x + y - 2\sqrt{xy} = (\sqrt{x}-\sqrt{y})^2 \geq 0$. Égalité si et seulement si $x = y$.
>
> **Pour quatre nombres positifs** $x_1, x_2, x_3, x_4$ : en appliquant deux fois le cas de deux nombres, puis une troisième fois,
> $$x_1+x_2+x_3+x_4 \geq 2\sqrt{x_1x_2} + 2\sqrt{x_3x_4} \geq 4\sqrt{\sqrt{x_1x_2}\sqrt{x_3x_4}} = 4\,(x_1x_2x_3x_4)^{1/4}.$$
> Égalité si et seulement si les quatre nombres sont égaux.
>
> **Pour trois nombres positifs** $x$, $y$, $z$ : posons $x = u^3$, $y = v^3$, $z = w^3$ avec $u,v,w > 0$. L'identité
> $$u^3+v^3+w^3-3uvw = (u+v+w)\left(u^2+v^2+w^2-uv-vw-wu\right)$$
> a son premier facteur strictement positif et son second positif ou nul (c'est le lemme $2a^2+2b^2+2c^2 \geq 2ab+2bc+2ca$, qui se réécrit comme une somme de trois carrés). Donc $x+y+z \geq 3\,(xyz)^{1/3}$, avec égalité si et seulement si $x = y = z$.

### Étape 1 : simplifier chaque numérateur

Découpons $1 + 3a^{12}$ en quatre morceaux, de façon qu'ils soient tous égaux à $1$ quand $a = 1$ :

$$1 + 3a^{12} = 1 + a^{12} + a^{12} + a^{12}.$$

L'inégalité à quatre termes donne

$$1 + 3a^{12} \geq 4 \left(1 \cdot a^{12} \cdot a^{12} \cdot a^{12}\right)^{1/4} = 4\left(a^{36}\right)^{1/4} = 4a^{9}.$$

En faisant de même pour $b$ et pour $c$, et en divisant chaque ligne par le dénominateur correspondant (qui est strictement positif) :

$$\dfrac{1+3a^{12}}{b^3} + \dfrac{1+3b^{12}}{c^3} + \dfrac{1+3c^{12}}{a^3} \geq 4\left(\dfrac{a^9}{b^3} + \dfrac{b^9}{c^3} + \dfrac{c^9}{a^3}\right).$$

### Étape 2 : regrouper les trois fractions

L'inégalité à trois termes appliquée à $\dfrac{a^9}{b^3}$, $\dfrac{b^9}{c^3}$, $\dfrac{c^9}{a^3}$ donne

$$\dfrac{a^9}{b^3} + \dfrac{b^9}{c^3} + \dfrac{c^9}{a^3} \geq 3 \left(\dfrac{a^9}{b^3} \cdot \dfrac{b^9}{c^3} \cdot \dfrac{c^9}{a^3}\right)^{1/3}.$$

Le produit à l'intérieur se simplifie très bien : au numérateur $a^9 b^9 c^9$, au dénominateur $a^3b^3c^3$, donc le produit vaut $a^6 b^6 c^6$, et sa racine cubique vaut $a^2b^2c^2 = (abc)^2$. Donc

$$\dfrac{a^9}{b^3} + \dfrac{b^9}{c^3} + \dfrac{c^9}{a^3} \geq 3\,(abc)^2.$$

### Conclusion

En enchaînant les deux étapes :

$$\dfrac{1+3a^{12}}{b^3} + \dfrac{1+3b^{12}}{c^3} + \dfrac{1+3c^{12}}{a^3} \geq 4 \times 3 (abc)^2 = 12\,(abc)^2.$$

$$\boxed{\dfrac{1+3a^{12}}{b^3} + \dfrac{1+3b^{12}}{c^3} + \dfrac{1+3c^{12}}{a^3} \geq 12\,(abc)^2.}$$

### Le cas d'égalité

S'il y a égalité au total, il y a égalité à chaque étape. En particulier, il y a égalité dans l'inégalité à quatre termes appliquée à $1$, $a^{12}$, $a^{12}$, $a^{12}$, ce qui impose $a^{12} = 1$, donc $a = 1$ puisque $a > 0$. De même $b = 1$ et $c = 1$.

Réciproquement, on a vérifié au départ que $a = b = c = 1$ donne $12 = 12$.

$$\boxed{\text{Il y a égalité si et seulement si } a = b = c = 1.}$$

*Pourquoi découper en $1 + a^{12} + a^{12} + a^{12}$ ?* Parce que l'inégalité arithmético-géométrique n'est une égalité que si tous les termes sont égaux. On veut donc que le découpage donne quatre termes égaux **précisément** au point $a = 1$, sinon la première étape perdrait déjà trop et le résultat final serait plus faible que demandé. Choisir son découpage en regardant le cas d'égalité est le réflexe central de ce genre d'exercice.

## Going further

1. Que devient l'inégalité si l'on remplace $3a^{12}$ par $a^{12}$ au numérateur ? Le membre de droite $12(abc)^2$ tient-il encore ?
2. Démontrez l'inégalité arithmético-géométrique pour $8$ nombres, puis pour $2^n$ nombres.
