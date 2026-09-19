---
id: "3204"
title: "La bordure d'un mètre autour du tapis"
grade: 10
theme: algebra
difficulty: 4
duration_min: 30
tags: [aire, equation, entiers, factorisation, diviseurs]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Math Competitions Training, Algebra review"
  reference: "Handout-4789-4966.pdf, section 2.2, exercice 6, d'après AMC 12B 2008, problème 16 (réponse dans Handout-4792-4966.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4789-4966.pdf"
---

## Statement

Le sol d'une salle rectangulaire mesure $a$ mètres sur $b$ mètres, où $a$ et $b$ sont des entiers strictement positifs avec $b > a$.

Un peintre peint au sol un rectangle dont les côtés sont parallèles à ceux de la salle. La partie non peinte forme alors une bande de $1$ mètre de large tout autour du rectangle peint, et cette bande occupe exactement **la moitié** de l'aire du sol.

Combien y a-t-il de couples $(a, b)$ possibles ? Les donner tous.

## Hints

1. Fais un dessin. Quelles sont les dimensions du rectangle peint, en fonction de $a$ et $b$ ?
2. Si la bande non peinte occupe la moitié de l'aire, que représente le rectangle peint ?
3. Écris l'équation $ab = 2(a-2)(b-2)$ et développe.
4. Tu obtiens $ab - 4a - 4b + 8 = 0$. Ajoute la bonne constante aux deux membres pour pouvoir factoriser en $(a - 4)(b - 4)$.
5. N'oublie pas de vérifier à la fin que $a - 2$ et $b - 2$ sont bien strictement positifs : un rectangle peint doit exister.

## Solution

**Mise en équation.**

La bande non peinte a $1$ mètre de large de chaque côté. Le rectangle peint mesure donc

$$(a - 2) \text{ mètres sur } (b - 2) \text{ mètres}.$$

L'aire totale est $ab$. La bande occupe la moitié de cette aire, donc le rectangle peint occupe l'autre moitié :

$$(a-2)(b-2) = \frac{ab}{2}, \qquad \text{c'est-à-dire} \qquad 2(a-2)(b-2) = ab .$$

**On développe et on factorise.**

$$2\left( ab - 2a - 2b + 4 \right) = ab$$
$$2ab - 4a - 4b + 8 = ab$$
$$ab - 4a - 4b + 8 = 0 .$$

Pour factoriser, on remarque que $(a-4)(b-4) = ab - 4a - 4b + 16$. Il manque $8$ : ajoutons $8$ aux deux membres.

$$ab - 4a - 4b + 16 = 8, \qquad \text{donc} \qquad (a - 4)(b - 4) = 8 .$$

**On énumère.**

Posons $u = a - 4$ et $v = b - 4$ : ce sont des entiers de produit $8$, avec $u < v$ puisque $a < b$.

Les deux facteurs sont forcément positifs. En effet, pour que le rectangle peint existe il faut $a \ge 3$, donc $u = a - 4 \ge -1$. Si $u$ était négatif, on aurait $u = -1$, donc $v = -8$ et $b = -4$, ce qui est absurde. Donc $u \ge 1$, et alors $v = 8/u > 0$ aussi.

Les couples d'entiers strictement positifs de produit $8$ sont $(1,8)$, $(2,4)$, $(4,2)$ et $(8,1)$. Comme $a < b$, on a $u < v$, ce qui ne laisse que

$$(u, v) = (1, 8) \qquad \text{et} \qquad (u, v) = (2, 4).$$

On revient à $a = u + 4$ et $b = v + 4$ :

$$(a, b) = (5, 12) \qquad \text{et} \qquad (a, b) = (6, 8).$$

**Vérification.**

- $(5, 12)$ : aire totale $5 \times 12 = 60$, rectangle peint $3 \times 10 = 30$. C'est bien la moitié.
- $(6, 8)$ : aire totale $6 \times 8 = 48$, rectangle peint $4 \times 6 = 24$. C'est bien la moitié.

**Conclusion.** Il y a exactement **deux** couples possibles : $(a, b) = (5, 12)$ et $(a, b) = (6, 8)$.

## Going further

1. Reprendre le problème avec une bande qui occupe le tiers de l'aire au lieu de la moitié. Combien de couples $(a,b)$ trouve-t-on ?
2. Et si la bande faisait $2$ mètres de large au lieu de $1$, toujours pour la moitié de l'aire ?
3. Pourquoi n'y a-t-il aucune solution avec $a = b$ ?
