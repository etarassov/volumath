---
id: "8742"
title: "Trois racines carrées dont la somme atteint au moins 6"
grade: 12
theme: algebra
difficulty: 5
duration_min: 50
tags: [inegalite, moyenne, factorisation, contraintes]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024"
  reference: "poly_valbonne_2024.pdf, groupe B, entraînement de fin de parcours, exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois réels positifs tels que
$$a + b + c + ab + bc + ca + abc = 7 .$$

Montrer que
$$\sqrt{a^2 + b^2 + 2} \;+\; \sqrt{b^2 + c^2 + 2} \;+\; \sqrt{c^2 + a^2 + 2} \;\geq\; 6 .$$

## Hints

1. La contrainte est laide. Regarde bien la liste $a + b + c + ab + bc + ca + abc$ : elle
   ressemble beaucoup au développement d'un produit connu. Lequel ?
2. Développe $(1+a)(1+b)(1+c)$. Que vaut ce produit sous l'hypothèse de l'énoncé ?
3. Il faut donc faire apparaître $1+a$, $1+b$, $1+c$ dans l'inégalité. Dans
   $\sqrt{a^2 + b^2 + 2}$, regroupe le $2$ en $1 + 1$ pour voir apparaître $a^2 + 1$ et
   $b^2 + 1$.
4. Pour deux réels $u$ et $v$, on a toujours $u^2 + v^2 \geq \dfrac{(u+v)^2}{2}$. C'est la
   même inégalité que $(u - v)^2 \geq 0$, écrite autrement. Utilise-la deux fois : une fois sur
   $a^2 + 1$, une fois sur le résultat.
5. Après addition des trois inégalités, il te restera à montrer que
   $(1+a) + (1+b) + (1+c) \geq 6$, sachant que $(1+a)(1+b)(1+c) = 8$. C'est l'inégalité
   arithmético-géométrique pour trois nombres.

## Solution

Notons, pour alléger,
$$x = 1 + a, \qquad y = 1 + b, \qquad z = 1 + c .$$
Comme $a, b, c$ sont positifs, $x$, $y$ et $z$ sont des réels au moins égaux à $1$.

**Étape 1 : simplifier la contrainte.**

Développons le produit $(1+a)(1+b)(1+c)$ :
$$(1+a)(1+b)(1+c) = 1 + a + b + c + ab + bc + ca + abc .$$

La parenthèse qui suit le $1$ est exactement le membre de gauche de la contrainte, qui vaut $7$.
Donc
$$xyz = (1+a)(1+b)(1+c) = 1 + 7 = 8 .$$

La contrainte de l'énoncé se résume donc à une seule information très simple : **le produit
$xyz$ vaut $8$**.

**Étape 2 : minorer chaque racine carrée.**

Commençons par une inégalité élémentaire. Pour tous réels $u$ et $v$,
$$(u - v)^2 \geq 0 \quad\Longleftrightarrow\quad u^2 + v^2 \geq 2uv \quad\Longleftrightarrow\quad 2(u^2 + v^2) \geq u^2 + 2uv + v^2 = (u+v)^2 ,$$
c'est-à-dire
$$(\star) \qquad u^2 + v^2 \;\geq\; \frac{(u+v)^2}{2} .$$

Appliquons-la deux fois de suite à la première racine.

D'abord, on écrit $2 = 1 + 1$ et on regroupe :
$$a^2 + b^2 + 2 = (a^2 + 1) + (b^2 + 1) .$$
Par $(\star)$ avec $u = a$ et $v = 1$, on a $a^2 + 1 \geq \dfrac{(a+1)^2}{2} = \dfrac{x^2}{2}$, et
de même $b^2 + 1 \geq \dfrac{y^2}{2}$. Donc
$$a^2 + b^2 + 2 \;\geq\; \frac{x^2 + y^2}{2} .$$

Ensuite, par $(\star)$ appliquée cette fois à $u = x$ et $v = y$, on a
$x^2 + y^2 \geq \dfrac{(x+y)^2}{2}$, d'où
$$a^2 + b^2 + 2 \;\geq\; \frac{(x+y)^2}{4} .$$

La fonction racine carrée est croissante, et le membre de droite est positif, donc
$$\sqrt{a^2 + b^2 + 2} \;\geq\; \frac{x + y}{2} .$$

Le même calcul avec les autres couples donne
$$\sqrt{b^2 + c^2 + 2} \;\geq\; \frac{y + z}{2}, \qquad \sqrt{c^2 + a^2 + 2} \;\geq\; \frac{z + x}{2} .$$

**Étape 3 : additionner.**

En additionnant les trois inégalités, chacune des lettres $x$, $y$, $z$ apparaît deux fois au
numérateur :
$$\sqrt{a^2 + b^2 + 2} + \sqrt{b^2 + c^2 + 2} + \sqrt{c^2 + a^2 + 2} \;\geq\; \frac{2x + 2y + 2z}{2} = x + y + z .$$

**Étape 4 : minorer $x + y + z$ sachant que $xyz = 8$.**

Il s'agit de l'inégalité arithmético-géométrique pour trois nombres positifs :
$$x + y + z \;\geq\; 3\sqrt[3]{xyz} .$$

En voici une démonstration courte. Posons $u = \sqrt[3]{x}$, $v = \sqrt[3]{y}$,
$w = \sqrt[3]{z}$, qui sont positifs. L'identité
$$u^3 + v^3 + w^3 - 3uvw = (u + v + w) \times \frac{(u-v)^2 + (v-w)^2 + (w-u)^2}{2}$$
se vérifie en développant le membre de droite. Le facteur $u + v + w$ est positif, et la
parenthèse est une somme de carrés, donc positive. Le membre de droite est donc positif, c'est-à-dire
$$u^3 + v^3 + w^3 \geq 3uvw, \qquad \text{soit} \qquad x + y + z \geq 3\sqrt[3]{xyz} .$$

Avec $xyz = 8$ et $\sqrt[3]{8} = 2$, on obtient
$$x + y + z \;\geq\; 3 \times 2 = 6 .$$

**Conclusion.** En enchaînant les étapes 3 et 4 :
$$\sqrt{a^2 + b^2 + 2} + \sqrt{b^2 + c^2 + 2} + \sqrt{c^2 + a^2 + 2} \;\geq\; x + y + z \;\geq\; 6 ,$$
ce qui est l'inégalité demandée.

**Cas d'égalité.** Toutes les inégalités utilisées sont des égalités lorsque $a = b = c = 1$. On
vérifie alors la contrainte : $3 + 3 + 1 = 7$, et chaque racine vaut $\sqrt{1 + 1 + 2} = 2$, de
sorte que la somme vaut exactement $6$. La constante $6$ ne peut donc pas être améliorée.

## Going further

1. Vérifie l'identité $u^3 + v^3 + w^3 - 3uvw = (u+v+w)\dfrac{(u-v)^2 + (v-w)^2 + (w-u)^2}{2}$ en
   développant les deux membres.
2. L'étape 2 a coûté deux applications de $(\star)$. Que donne une seule application, c'est-à-dire
   la minoration $\sqrt{a^2 + b^2 + 2} \geq \sqrt{\dfrac{x^2 + y^2}{2}}$ ? Suffit-elle à conclure ?
3. Sous la même contrainte, quelle est la plus grande valeur possible de $a + b + c$ ? La réponse
   est $7$, atteinte pour $(a, b, c) = (7, 0, 0)$. *Indication : travaille avec $x$, $y$, $z$, qui
   valent au moins $1$ et dont le produit vaut $8$. Si deux d'entre eux, disons $y$ et $z$, sont
   strictement plus grands que $1$, remplace le couple $(y, z)$ par $(1, yz)$ : le produit ne
   change pas, et la somme augmente de $(y-1)(z-1) > 0$.*
