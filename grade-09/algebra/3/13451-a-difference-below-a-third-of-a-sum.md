---
id: "13451"
title: "Une différence plus petite que le tiers d'une somme"
grade: 9
theme: algebra
difficulty: 3
duration_min: 30
tags: [inegalite, ordonner, raisonnement par l absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2025"
  reference: "2025-10_Sujet-coupe-Animath-Automne-2025.pdf, épreuve collège, exercice 5 ; corrigé 2025-10_Corrige-commente-Coupe-Animath-Automne-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-coupe-Animath-Automne-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2025-10_Sujet-coupe-Animath-Automne-2025.pdf"
---

## Statement

On choisit quatre nombres réels strictement positifs.

Montrer qu'on peut toujours en trouver deux dont la différence (le plus grand des deux moins le plus petit) est strictement inférieure au tiers de la somme des deux autres.

## Hints

1. Essaie avec $1$, $2$, $3$ et $4$, puis avec $1$, $10$, $100$ et $1000$. Quelles paires conviennent ?
2. Range les quatre nombres dans l'ordre : $a \leqslant b \leqslant c \leqslant d$. Les paires de nombres voisins ont les plus petites différences.
3. Regarde seulement les deux paires $\{a, b\}$ et $\{b, c\}$. Additionne leurs différences.
4. Si aucune des deux paires ne convenait, que donnerait la somme des deux inégalités ?

## Solution

On range les quatre nombres dans l'ordre croissant et on les appelle $a$, $b$, $c$ et $d$ :

$$0 < a \leqslant b \leqslant c \leqslant d.$$

On va montrer que l'une des deux paires $\{a, b\}$ ou $\{b, c\}$ convient, c'est-à-dire que

$$b - a < \frac{c + d}{3} \qquad \text{ou} \qquad c - b < \frac{a + d}{3}.$$

**On additionne.** La somme des deux différences vaut

$$(b - a) + (c - b) = c - a,$$

et la somme des deux seuils vaut

$$\frac{c + d}{3} + \frac{a + d}{3} = \frac{a + c + 2d}{3}.$$

**La somme des différences est plus petite que la somme des seuils.** On veut comparer $c - a$ et $(a + c + 2d)/3$. En multipliant par $3$, cela revient à comparer $3c - 3a$ et $a + c + 2d$. Or

$$(a + c + 2d) - (3c - 3a) = 4a + 2d - 2c = 4a + 2(d - c).$$

Comme $a > 0$ et $d \geqslant c$, ce nombre est strictement positif. Donc

$$c - a < \frac{a + c + 2d}{3}.$$

**Conclusion par l'absurde.** Supposons qu'aucune des deux paires ne convienne, c'est-à-dire que

$$b - a \geqslant \frac{c + d}{3} \qquad \text{et} \qquad c - b \geqslant \frac{a + d}{3}.$$

En additionnant ces deux inégalités, on obtiendrait $c - a \geqslant (a + c + 2d)/3$, ce qui contredit ce qu'on vient de montrer. Donc l'une des deux paires $\{a, b\}$ ou $\{b, c\}$ convient.

Parmi quatre nombres strictement positifs, on peut toujours en trouver deux dont la différence est strictement inférieure au tiers de la somme des deux autres.

*Remarque.* Ranger les nombres était le point de départ. Sans cela, on ne sait pas quelles paires regarder, et il y en a six.

## Going further

Montrer que le résultat devient faux si l'on remplace « le tiers » par « le quart ». On pourra essayer les nombres $1$, $6$, $9$ et $11$.
