---
id: "5408"
title: "Des triangles à côtés entiers"
grade: 8
theme: geometry
difficulty: 2
duration_min: 20
tags: [triangle, inegalite-triangulaire, denombrement, entiers, perimetre]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Locked Out: A Breakout Box Session for Your Circle, Kimberly Adams et Donna Farrior (Tulsa Math Teachers Circle)"
  reference: "TMTC-BreakoutBoxes.pdf, « But Who's Counting? », problème 3 (la question sur le périmètre 12 est un ajout)"
  url: "https://mathcircles.org/activity/locked-out/"
  original_language: "en"
  local_copy: "sources/originals/namc/TMTC-BreakoutBoxes.pdf"
---

## Statement

On cherche des triangles dont les trois côtés ont des longueurs entières, exprimées en centimètres. Deux triangles qui ont les trois mêmes longueurs de côtés sont considérés comme un seul et même triangle.

1. Combien existe-t-il de tels triangles dont le périmètre vaut $7$ cm ? Les donner tous.
2. Même question avec un périmètre de $12$ cm.

## Hints

1. Un triangle de côtés $3$, $1$ et $1$, cela existe-t-il ? Essayez de le dessiner.
2. Rappel : dans un triangle, le côté le plus long est toujours plus court que la somme des deux autres.
3. Rangez les trois longueurs dans l'ordre : $a \le b \le c$. La condition à vérifier porte alors sur $c$ seulement.
4. Comme $a + b + c$ est le périmètre $P$, la somme $a+b$ vaut $P - c$. Que devient la condition ?
5. Pourquoi $c$ ne peut-il pas être trop petit non plus ? Pensez au fait que $c$ est le plus grand des trois.

## Solution

Notons $a$, $b$, $c$ les trois longueurs, rangées dans l'ordre croissant :

$$a \le b \le c, \qquad a + b + c = P .$$

**La condition à respecter.** Un triangle de côtés $a$, $b$, $c$ existe si et seulement si le plus grand côté est plus court que la somme des deux autres :

$$c < a + b .$$

Comme $a + b = P - c$, cela s'écrit $c < P - c$, c'est-à-dire

$$2c < P, \qquad \text{donc} \qquad c < \frac{P}{2} .$$

**Une deuxième borne.** Comme $c$ est le plus grand des trois nombres, il est au moins égal à leur moyenne :

$$3c \ge a + b + c = P, \qquad \text{donc} \qquad c \ge \frac{P}{3} .$$

Il suffit maintenant d'essayer les valeurs possibles de $c$, puis de répartir le reste entre $a$ et $b$.

### 1. Périmètre $7$

Ici $\dfrac{7}{3} \approx \text{2,33}$ et $\dfrac{7}{2} = \text{3,5}$, donc $c = 3$.

Il reste $a + b = 4$ avec $a \le b \le 3$ : les possibilités sont $(1, 3)$ et $(2, 2)$.

Il y a donc **deux** triangles :

$$(1, 3, 3) \qquad \text{et} \qquad (2, 2, 3) .$$

Ce sont deux triangles isocèles. Vérification : $3 < 1 + 3$ et $3 < 2 + 2$.

### 2. Périmètre $12$

Ici $\dfrac{12}{3} = 4$ et $\dfrac{12}{2} = 6$, donc $4 \le c < 6$, c'est-à-dire $c = 4$ ou $c = 5$.

- **$c = 4$** : il reste $a + b = 8$ avec $a \le b \le 4$, donc $a = b = 4$. Triangle $(4, 4, 4)$.
- **$c = 5$** : il reste $a + b = 7$ avec $a \le b \le 5$, donc $(2, 5)$ ou $(3, 4)$. Triangles $(2, 5, 5)$ et $(3, 4, 5)$.

Il y a donc **trois** triangles :

$$(2, 5, 5), \qquad (3, 4, 5), \qquad (4, 4, 4) .$$

Le deuxième est le fameux triangle rectangle de côtés $3$, $4$, $5$, et le troisième est équilatéral.

**Conclusion.** Deux triangles pour un périmètre de $7$, trois pour un périmètre de $12$. La méthode est toujours la même : ranger les côtés, encadrer le plus grand entre $\frac{P}{3}$ et $\frac{P}{2}$, puis répartir le reste.

## Going further

1. Combien de triangles à côtés entiers ont un périmètre de $11$ ? de $13$ ?
2. Pourquoi les périmètres impairs sont-ils plus faciles à traiter que les périmètres pairs ?
3. Quel est le plus petit périmètre pour lequel il existe au moins cinq triangles différents ?
