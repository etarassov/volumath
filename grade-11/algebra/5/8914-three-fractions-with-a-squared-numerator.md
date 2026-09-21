---
id: "8914"
title: "Trois fractions de numérateur a², b², c²"
grade: 11
theme: algebra
difficulty: 5
duration_min: 45
tags: [inegalites, cauchy-schwarz, cas-degalite, symetrie]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2026, Groupe A"
  reference: "Poly-Valbonne-2026.pdf, chapitre III « Groupe A », entraînement de mi-parcours, exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois nombres réels positifs ou nuls vérifiant

$$ab + bc + ca = 3.$$

Montrer que

$$\dfrac{a^2}{1+bc} + \dfrac{b^2}{1+ca} + \dfrac{c^2}{1+ab} \geq \dfrac{3}{2}.$$

Déterminer ensuite tous les cas où il y a égalité.

## Hints

1. Cherchez d'abord un cas d'égalité évident. Que donne $a = b = c$ ?
2. Regardez la somme des trois dénominateurs. La contrainte de l'énoncé la rend étonnamment simple.
3. Voici l'outil central, à démontrer d'abord : pour $x$, $y$ réels et $u$, $v$ strictement positifs, $$\dfrac{x^2}{u} + \dfrac{y^2}{v} \geq \dfrac{(x+y)^2}{u+v}.$$ Tout multiplier par $uv(u+v)$ et tout ramener d'un côté fait apparaître un carré.
4. Appliquez cet outil deux fois de suite pour obtenir la version à trois fractions.
5. Il restera à minorer $(a+b+c)^2$. Développez-le, et comparez $a^2+b^2+c^2$ à $ab+bc+ca$ : là encore, une somme de carrés règle la question.

## Solution

### L'outil : couper les fractions

> **Lemme 1.** Pour tous réels $x$, $y$ et tous réels strictement positifs $u$, $v$,
> $$\dfrac{x^2}{u} + \dfrac{y^2}{v} \geq \dfrac{(x+y)^2}{u+v}.$$

*Démonstration.* Multiplions les deux membres par $uv(u+v)$, qui est strictement positif : l'inégalité à démontrer devient

$$x^2 v (u+v) + y^2 u (u+v) \geq (x+y)^2 uv.$$

Développons les deux côtés :

$$x^2 uv + x^2 v^2 + y^2 u^2 + y^2 uv \geq x^2 uv + 2xy\,uv + y^2 uv.$$

Après simplification des termes communs, il reste

$$x^2 v^2 + y^2 u^2 \geq 2xy\,uv, \qquad \text{c'est-à-dire} \qquad (xv - yu)^2 \geq 0,$$

ce qui est vrai. L'égalité a lieu exactement quand $xv = yu$. $\square$

En appliquant le lemme une première fois aux deux premières fractions, puis une seconde fois au résultat et à la troisième, on obtient la version à trois termes : pour $u$, $v$, $w$ strictement positifs,

$$\dfrac{x^2}{u} + \dfrac{y^2}{v} + \dfrac{z^2}{w} \geq \dfrac{(x+y)^2}{u+v} + \dfrac{z^2}{w} \geq \dfrac{(x+y+z)^2}{u+v+w}.$$

### On applique

Les trois dénominateurs de l'énoncé sont strictement positifs (ils valent au moins $1$). Leur somme est remarquablement simple :

$$(1+bc) + (1+ca) + (1+ab) = 3 + (ab+bc+ca) = 3 + 3 = 6.$$

Le lemme donne donc

$$\dfrac{a^2}{1+bc} + \dfrac{b^2}{1+ca} + \dfrac{c^2}{1+ab} \geq \dfrac{(a+b+c)^2}{6}.$$

### Il reste à minorer $(a+b+c)^2$

> **Lemme 2.** Pour tous réels $a$, $b$, $c$, on a $a^2+b^2+c^2 \geq ab+bc+ca$.

*Démonstration.* La différence, multipliée par $2$, vaut

$$2a^2+2b^2+2c^2-2ab-2bc-2ca = (a-b)^2 + (b-c)^2 + (c-a)^2 \geq 0.$$

L'égalité a lieu exactement quand $a = b = c$. $\square$

Développons maintenant :

$$(a+b+c)^2 = a^2+b^2+c^2 + 2(ab+bc+ca) \geq (ab+bc+ca) + 2(ab+bc+ca) = 3(ab+bc+ca) = 9.$$

### Conclusion

En combinant les deux étapes :

$$\dfrac{a^2}{1+bc} + \dfrac{b^2}{1+ca} + \dfrac{c^2}{1+ab} \geq \dfrac{(a+b+c)^2}{6} \geq \dfrac{9}{6} = \dfrac{3}{2}.$$

$$\boxed{\dfrac{a^2}{1+bc} + \dfrac{b^2}{1+ca} + \dfrac{c^2}{1+ab} \geq \dfrac{3}{2}.}$$

### Le cas d'égalité

Si l'inégalité de l'énoncé est une égalité, alors la deuxième minoration ci-dessus en est une aussi, donc $(a+b+c)^2 = 9$, donc on a égalité dans le lemme 2, donc $a = b = c$. La contrainte $ab+bc+ca=3$ devient alors $3a^2 = 3$, d'où $a = 1$ (les nombres sont positifs). Donc $a = b = c = 1$.

Réciproquement, pour $a = b = c = 1$ chaque fraction vaut $\tfrac{1}{2}$ et la somme vaut bien $\tfrac{3}{2}$.

$$\boxed{\text{Il y a égalité si et seulement si } a = b = c = 1.}$$

## Going further

1. Le lemme 1 se généralise à autant de fractions qu'on veut. Énoncez-le pour $n$ fractions et démontrez-le par récurrence.
2. Reprenez l'exercice en remplaçant la contrainte par $ab+bc+ca = 12$. Quelle est la nouvelle borne ?
