---
id: "8476"
title: "Beaucoup de points à la même distance"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 45
tags: [double-comptage, geometrie-combinatoire, mediatrice, inegalite, trinome]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe C"
  reference: "Poly-2021-Valbonne.pdf, Groupe C, « Double comptage » (Arthur Léonard), exercice 3, signalé « OIM 1987 »"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Soit $k$ un entier naturel, et soit $S$ un ensemble de $n$ points du plan vérifiant les deux conditions suivantes :

- trois points de $S$ ne sont jamais alignés ;
- pour chaque point $P$ de $S$, il existe une distance $r$ (qui peut dépendre de $P$) telle qu'au moins $k$ points de $S$ soient à distance exactement $r$ de $P$.

Montrer que

$$k < \frac12 + \sqrt{2n}.$$

## Hints

1. Choisis une quantité à compter de deux façons. Comme l'hypothèse parle de distances égales, compte des triplets $(X, Y, Z)$ de points distincts tels que $YX = YZ$, c'est-à-dire des triangles isocèles de sommet principal $Y$.
2. **Première façon :** fixe $X$ et $Z$. Où doit se trouver $Y$ pour que $YX = YZ$ ?
3. Sur la médiatrice de $[XZ]$, combien de points de $S$ peut-il y avoir ?
4. **Deuxième façon :** fixe $Y$, et utilise l'hypothèse : il existe au moins $k$ points à distance $r$ de $Y$. Combien de couples $(X, Z)$ cela fournit-il ?
5. Tu obtiens une inégalité du second degré en $k$. Résous-la, puis compare la racine obtenue à $\dfrac12 + \sqrt{2n}$.

## Solution

### Étape 1. La quantité à compter deux fois

Posons

$$Q = \text{le nombre de triplets ordonnés } (X, Y, Z) \text{ de points distincts de } S \text{ tels que } YX = YZ.$$

Autrement dit, $Q$ compte les triangles isocèles (ordonnés) dont le sommet principal est $Y$.

### Étape 2. Première majoration : fixer $X$ et $Z$

Fixons deux points distincts $X$ et $Z$ de $S$. Les points $Y$ vérifiant $YX = YZ$ sont exactement les points de la **médiatrice** du segment $[XZ]$.

Combien de points de $S$ peut-il y avoir sur cette médiatrice ? Au plus $2$, car trois points de $S$ ne sont jamais alignés.

Il y a $n(n-1)$ couples ordonnés $(X, Z)$ de points distincts, et pour chacun au plus $2$ choix de $Y$. Donc

$$Q \leqslant 2n(n-1). \qquad (1)$$

### Étape 3. Seconde minoration : fixer $Y$

Fixons maintenant un point $Y$ de $S$. Par hypothèse, il existe une distance $r$ telle qu'au moins $k$ points de $S$ soient à distance $r$ de $Y$.

Choisissons $X$ et $Z$ parmi ces $k$ points, distincts l'un de l'autre. Cela donne au moins

$$k(k-1)$$

couples ordonnés $(X, Z)$, et pour chacun d'eux $YX = r = YZ$ : le triplet $(X, Y, Z)$ est bien compté dans $Q$. Notons que $X$ et $Z$ sont automatiquement distincts de $Y$, puisqu'ils sont à distance $r > 0$ de lui.

En faisant varier $Y$ parmi les $n$ points de $S$, on obtient des triplets tous différents (ils diffèrent par leur deuxième composante), d'où

$$Q \geqslant n\,k(k-1). \qquad (2)$$

### Étape 4. Combiner

En rapprochant $(1)$ et $(2)$ :

$$n\,k(k-1) \leqslant Q \leqslant 2n(n-1).$$

En divisant par $n$ (qui est strictement positif, sinon il n'y a rien à démontrer) :

$$k(k-1) \leqslant 2(n-1), \qquad \text{c'est-à-dire} \qquad k^2 - k - 2n + 2 \leqslant 0.$$

### Étape 5. Résoudre l'inégalité du second degré

Le trinôme $t \mapsto t^2 - t - 2n + 2$ a pour discriminant

$$\Delta = 1 + 4(2n - 2) = 8n - 7,$$

et ses racines sont $\dfrac{1 \pm \sqrt{8n-7}}{2}$. L'inégalité $k^2 - k - 2n + 2 \leqslant 0$ impose donc

$$k \leqslant \frac{1 + \sqrt{8n-7}}{2} = \frac12 + \frac{\sqrt{8n-7}}{2}.$$

### Étape 6. Conclure

Il reste à comparer $\dfrac{\sqrt{8n-7}}{2}$ et $\sqrt{2n}$. Comme les deux sont positifs, comparons leurs carrés :

$$\left(\frac{\sqrt{8n-7}}{2}\right)^2 = \frac{8n-7}{4} < \frac{8n}{4} = 2n = \left(\sqrt{2n}\right)^2.$$

L'inégalité est stricte. Donc $\dfrac{\sqrt{8n-7}}{2} < \sqrt{2n}$, et finalement

$$k \leqslant \frac12 + \frac{\sqrt{8n-7}}{2} < \frac12 + \sqrt{2n}.$$

$$\boxed{k < \frac12 + \sqrt{2n}.}$$

## Going further

Le résultat dit, en substance, qu'on ne peut pas exiger de trop nombreuses équidistances à la fois : le nombre $k$ ne peut pas dépasser l'ordre de grandeur de $\sqrt{n}$.

Les deux comptages de la solution jouent des rôles opposés, et c'est ce qui les rend complémentaires :

- en fixant les deux points **extrêmes** $X$ et $Z$, on majore $Q$, parce que l'hypothèse d'alignement limite le nombre de sommets possibles ;
- en fixant le sommet **principal** $Y$, on minore $Q$, parce que l'hypothèse de l'énoncé garantit beaucoup de points équidistants.

Ce problème est le problème 1 de l'Olympiade Internationale de Mathématiques de 1987. La version d'origine utilise la même quantité $Q$ ; la seule chose à trouver vraiment, comme toujours en double comptage, est **quoi** compter.
