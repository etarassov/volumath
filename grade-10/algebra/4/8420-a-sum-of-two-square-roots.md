---
id: "8420"
title: "Une somme de deux racines carrées"
grade: 10
theme: algebra
difficulty: 4
duration_min: 25
tags: [inegalite, racine-carree, carre-positif, cas-degalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe A"
  reference: "Poly-2021-Valbonne.pdf, Groupe A, « Entraînement de mi-parcours », exercice 3"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Soient $x$ et $y$ deux nombres réels positifs. Montrer que

$$x^2 + y^2 + 1 \;\geqslant\; x\sqrt{y^2+1} \;+\; y\sqrt{x^2+1}.$$

Existe-t-il des cas d'égalité ?

## Hints

1. Les racines carrées font peur, mais il n'y a qu'un seul outil à utiliser, et c'est le plus simple de tous : un carré est positif ou nul.
2. Démontre d'abord que pour tous réels $p$ et $q$, on a $pq \leqslant \dfrac{p^2+q^2}{2}$. C'est juste $(p-q)^2 \geqslant 0$ réécrit.
3. Applique cette majoration séparément à chacun des deux produits du membre de droite. Choisis bien $p$ et $q$ : pour le premier produit, prends $p = x$ et $q = \sqrt{y^2+1}$.
4. Additionne les deux majorations et regarde ce que tu obtiens : c'est exactement ce qu'il faut.
5. Pour le cas d'égalité, écris les deux conditions d'égalité en même temps, et regarde si elles sont compatibles.

## Solution

**Étape 1. Une majoration de tout produit.**

Soient $p$ et $q$ deux réels. Comme $(p-q)^2 \geqslant 0$, on a $p^2 - 2pq + q^2 \geqslant 0$, donc

$$pq \leqslant \frac{p^2 + q^2}{2},$$

avec égalité exactement lorsque $p = q$.

**Étape 2. On l'applique au premier produit.**

Prenons $p = x$ et $q = \sqrt{y^2+1}$. Comme $\big(\sqrt{y^2+1}\big)^2 = y^2+1$, on obtient

$$x\sqrt{y^2+1} \;\leqslant\; \frac{x^2 + y^2 + 1}{2}.$$

**Étape 3. On l'applique au second produit.**

Prenons cette fois $p = y$ et $q = \sqrt{x^2+1}$ :

$$y\sqrt{x^2+1} \;\leqslant\; \frac{y^2 + x^2 + 1}{2}.$$

**Étape 4. On additionne.**

Les deux majorants sont égaux. En additionnant :

$$x\sqrt{y^2+1} + y\sqrt{x^2+1} \;\leqslant\; \frac{x^2+y^2+1}{2} + \frac{x^2+y^2+1}{2} = x^2 + y^2 + 1.$$

C'est l'inégalité demandée.

**Étape 5. Le cas d'égalité.**

Pour qu'il y ait égalité, il faut que les deux majorations des étapes 2 et 3 soient toutes les deux des égalités, c'est-à-dire, d'après l'étape 1,

$$x = \sqrt{y^2+1} \qquad \text{et} \qquad y = \sqrt{x^2+1}.$$

En élevant au carré :

$$x^2 = y^2 + 1 \qquad \text{et} \qquad y^2 = x^2 + 1.$$

En reportant la seconde dans la première :

$$x^2 = (x^2 + 1) + 1 = x^2 + 2,$$

donc $0 = 2$, ce qui est faux.

**Il n'existe donc aucun cas d'égalité :** l'inégalité de l'énoncé est en fait toujours stricte.

## Going further

L'inégalité $pq \leqslant \frac{p^2+q^2}{2}$ est le couteau suisse des inégalités : elle transforme un produit gênant en une somme de carrés, bien plus facile à manipuler. Toute la difficulté est de choisir $p$ et $q$ de façon que les carrés produits soient exactement ceux qu'on veut voir apparaître.

Ici, le choix est dicté par le membre de droite : la racine $\sqrt{y^2+1}$ appelle $q = \sqrt{y^2+1}$, ce qui fait apparaître $y^2+1$ sans racine.

Remarquons que le résultat vaut aussi pour $x$ ou $y$ négatifs : la majoration de l'étape 1 ne suppose rien sur les signes, et le membre de droite ne devient que plus petit.
