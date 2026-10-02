---
id: "8921"
title: "Les carrés des rapports l'emportent sur les rapports"
grade: 11
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalite, moyenne, symetrie, fractions]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2026, Groupe B"
  reference: "Poly-Valbonne-2026.pdf, chapitre IV « Groupe B », entraînement de mi-parcours, exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois nombres réels strictement positifs. Montrer que

$$\dfrac{a^2}{b^2} + \dfrac{b^2}{c^2} + \dfrac{c^2}{a^2} \geq \dfrac{b}{a} + \dfrac{c}{b} + \dfrac{a}{c}.$$

## Hints

1. Les deux côtés n'ont pas le même degré d'apparence, mais regardez bien : à gauche il y a des carrés de rapports, à droite des rapports. Essayez de fabriquer un terme de droite à partir de **deux** termes de gauche.
2. Pour deux nombres positifs $x$ et $y$, on a toujours $x + y \geq 2\sqrt{xy}$. Prenez $x = \dfrac{a^2}{b^2}$ et $y = \dfrac{b^2}{c^2}$ : que vaut $\sqrt{xy}$ ?
3. Écrivez les trois inégalités obtenues en tournant les lettres, puis additionnez-les.
4. Vérifiez à la fin que les trois termes que vous obtenez à droite sont bien ceux de l'énoncé, quitte à les remettre dans l'ordre.

## Solution

**L'outil.** Pour tous réels positifs $x$ et $y$,

$$x + y \geq 2\sqrt{xy}, \qquad \text{car} \qquad x + y - 2\sqrt{xy} = \left(\sqrt{x} - \sqrt{y}\right)^2 \geq 0.$$

**L'idée : associer les termes de gauche deux par deux.** Chaque association va produire un terme de droite.

Prenons d'abord $x = \dfrac{a^2}{b^2}$ et $y = \dfrac{b^2}{c^2}$. Leur produit se simplifie très bien : $xy = \dfrac{a^2}{c^2}$, donc $\sqrt{xy} = \dfrac{a}{c}$ (les nombres sont positifs). L'outil donne

$$\dfrac{a^2}{b^2} + \dfrac{b^2}{c^2} \geq 2\,\dfrac{a}{c}.$$

En faisant tourner les lettres $a \to b \to c \to a$, on obtient deux autres inégalités :

$$\dfrac{b^2}{c^2} + \dfrac{c^2}{a^2} \geq 2\,\dfrac{b}{a}, \qquad\qquad \dfrac{c^2}{a^2} + \dfrac{a^2}{b^2} \geq 2\,\dfrac{c}{b}.$$

**On additionne les trois.** À gauche, chacune des trois fractions $\dfrac{a^2}{b^2}$, $\dfrac{b^2}{c^2}$, $\dfrac{c^2}{a^2}$ apparaît exactement deux fois :

$$2\left(\dfrac{a^2}{b^2} + \dfrac{b^2}{c^2} + \dfrac{c^2}{a^2}\right) \geq 2\left(\dfrac{a}{c} + \dfrac{b}{a} + \dfrac{c}{b}\right).$$

En divisant par $2$ :

$$\boxed{\dfrac{a^2}{b^2} + \dfrac{b^2}{c^2} + \dfrac{c^2}{a^2} \geq \dfrac{b}{a} + \dfrac{c}{b} + \dfrac{a}{c}.}$$

(Les trois termes obtenus à droite sont bien ceux de l'énoncé, simplement écrits dans un autre ordre.)

**Cas d'égalité.** Il y a égalité exactement quand les trois inégalités de départ sont des égalités, c'est-à-dire quand $\dfrac{a^2}{b^2} = \dfrac{b^2}{c^2} = \dfrac{c^2}{a^2}$. En multipliant les trois fractions on trouve $1$, donc chacune vaut $1$, donc $a = b = c$.

## Going further

1. Montrez de la même manière que $\dfrac{a^2}{b^2} + \dfrac{b^2}{c^2} + \dfrac{c^2}{a^2} \geq 3$.
2. Et si l'on remplaçait le membre de droite par $\dfrac{a}{b} + \dfrac{b}{c} + \dfrac{c}{a}$, c'est-à-dire par les mêmes rapports dans l'autre sens ? L'inégalité serait-elle encore vraie ? (Posez $x = \dfrac{a}{b}$, $y = \dfrac{b}{c}$, $z = \dfrac{c}{a}$ et remarquez que $xyz = 1$.)
