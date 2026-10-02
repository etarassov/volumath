---
id: "0782"
title: "Une famille de rectangles pythagoriciens"
grade: 9
theme: algebra
difficulty: 2
duration_min: 20
tags: [identites-remarquables, pythagore, demonstration, diagonales]
adapted_from: null
see_also: ["2211"]
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Préparation Olympiades de Mathématiques de 4ème »"
  reference: "Péparation.OMCollege.v2.pdf, 7 mars 2024, exercice 8, question 3, d'après Olympiades académiques de Versailles, 2007"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Péparation.OMCollege.v2.pdf"
---

## Statement

Une unité de longueur est donnée dans le plan. Un rectangle est dit **pythagoricien** lorsque les longueurs de ses côtés et celle de sa diagonale sont toutes les trois des nombres entiers. Par exemple, le rectangle de côtés $3$ et $4$ est pythagoricien, car sa diagonale mesure $5$.

Soient $p$ et $q$ deux entiers naturels non nuls tels que $p > q$. On considère le rectangle dont les côtés ont pour longueurs

$$p^2 - q^2 \qquad \text{et} \qquad 2pq$$

Ce rectangle est-il pythagoricien ?

## Hints

1. Commence par un exemple : prends $p = 2$ et $q = 1$, puis $p = 3$ et $q = 2$. Quels rectangles obtiens-tu ? Quelle est leur diagonale ?
2. Appelle $d$ la longueur de la diagonale et écris le théorème de Pythagore. Tu obtiens $d^2$ sous la forme d'une expression en $p$ et $q$.
3. Développe $(p^2 - q^2)^2$ et $(2pq)^2$, puis additionne. Réduis.
4. Le résultat te rappelle-t-il une identité remarquable ? Cherche une expression dont il est le carré.
5. Il reste à vérifier que les trois longueurs sont bien des entiers, et que les côtés du rectangle sont bien strictement positifs.

## Solution

**Deux exemples pour voir de quoi il s'agit.**

- $p = 2$, $q = 1$ : les côtés valent $p^2 - q^2 = 3$ et $2pq = 4$. La diagonale mesure $5$.
- $p = 3$, $q = 2$ : les côtés valent $p^2 - q^2 = 5$ et $2pq = 12$. La diagonale mesure $13$, car $25 + 144 = 169 = 13^2$.

Dans les deux cas on retrouve $p^2 + q^2$ : $4 + 1 = 5$ et $9 + 4 = 13$. Démontrons que c'est toujours le cas.

**Le calcul.**

Notons $d$ la longueur de la diagonale du rectangle. Une diagonale partage le rectangle en deux triangles rectangles dont elle est l'hypoténuse, donc par le théorème de Pythagore

$$d^2 = \left(p^2 - q^2\right)^2 + (2pq)^2$$

Développons les deux carrés :

$$\left(p^2 - q^2\right)^2 = p^4 - 2p^2q^2 + q^4 \qquad (2pq)^2 = 4p^2q^2$$

En additionnant :

$$d^2 = p^4 - 2p^2q^2 + q^4 + 4p^2q^2 = p^4 + 2p^2q^2 + q^4$$

Or cette dernière expression est une identité remarquable déguisée :

$$\left(p^2 + q^2\right)^2 = p^4 + 2p^2q^2 + q^4$$

Donc

$$d^2 = \left(p^2 + q^2\right)^2$$

Comme $d$ et $p^2 + q^2$ sont deux nombres positifs qui ont le même carré, ils sont égaux :

$$d = p^2 + q^2$$

**Les trois longueurs sont bien entières, et le rectangle existe.**

$p$ et $q$ étant des entiers, les trois nombres $p^2 - q^2$, $2pq$ et $p^2 + q^2$ sont entiers. De plus $p > q \geqslant 1$, donc $p^2 > q^2$ et le côté $p^2 - q^2$ est strictement positif ; le côté $2pq$ l'est aussi. Le rectangle existe donc vraiment.

**Conclusion.** Oui, pour tous entiers naturels non nuls $p > q$, le rectangle de côtés $p^2 - q^2$ et $2pq$ est pythagoricien, et sa diagonale mesure exactement

$$p^2 + q^2$$

## Going further

1. Quel couple $(p\,;\,q)$ donne le rectangle de côtés $65$ et $72$ ? (Chercher $2pq = 72$ avec $p^2 - q^2 = 65$.)
2. Cette construction donne-t-elle **tous** les rectangles pythagoriciens ? Le rectangle de côtés $6$ et $8$, par exemple, est pythagoricien ; peut-on l'obtenir ainsi ?
