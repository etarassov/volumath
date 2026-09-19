---
id: "2206"
title: "Trois affixes sur une même droite"
grade: 12
theme: algebra
difficulty: 3
duration_min: 30
tags: [complexes, argument, alignement, conjugue]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Complex Numbers"
  reference: "Handout-835-919.pdf, exercice 6, première question"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-835-919.pdf"
---

## Statement

Le plan est muni d'un repère orthonormé direct. On note $A$, $B$, $C$ trois points deux à deux distincts, d'affixes respectives $a$, $b$ et $c$.

1. Montrer que $A$, $B$ et $C$ sont alignés si et seulement si le nombre complexe

$$Z = \frac{a - c}{b - c}$$

est un nombre **réel**.

2. Les points d'affixes $1 + i$, $3 + 5i$ et $4 + 7i$ sont-ils alignés ?

3. Déterminer tous les réels $t$ pour lesquels les points d'affixes $2 + i$, $-1 + 3i$ et $t + ti$ sont alignés.

## Hints

1. Remarque d'abord que $Z$ est bien défini : $b \neq c$, donc le dénominateur n'est pas nul. Et $Z \neq 0$, car $a \neq c$.
2. Que représente géométriquement l'argument de $a - c$ ? Et celui de $\dfrac{a-c}{b-c}$ ?
3. Un nombre complexe non nul est réel si et seulement si son argument vaut $0$ ou $\pi$ modulo $2\pi$, c'est-à-dire $0$ modulo $\pi$.
4. Pour la question 3, écris la condition, puis sépare partie réelle et partie imaginaire. Une autre voie : un nombre $Z$ est réel si et seulement si $Z = \overline{Z}$.

## Solution

**1. Le critère.**

Comme $B \neq C$, on a $b - c \neq 0$ et le quotient $Z$ est bien défini. Comme $A \neq C$, on a $a - c \neq 0$, donc $Z \neq 0$.

Rappelons le lien entre affixes et vecteurs : $a - c$ est l'affixe du vecteur $\overrightarrow{CA}$, et $b - c$ est l'affixe du vecteur $\overrightarrow{CB}$.

Un argument de $a - c$ est une mesure de l'angle $\left(\vec{u}, \overrightarrow{CA}\right)$, et un argument de $b - c$ est une mesure de $\left(\vec{u}, \overrightarrow{CB}\right)$, où $\vec{u}$ est le premier vecteur du repère. Comme l'argument d'un quotient est la différence des arguments,

$$\arg Z = \arg(a - c) - \arg(b - c) = \left(\overrightarrow{CB}, \overrightarrow{CA}\right) \quad [2\pi] .$$

Maintenant :

- $A$, $B$, $C$ sont alignés si et seulement si les vecteurs $\overrightarrow{CA}$ et $\overrightarrow{CB}$ sont colinéaires, c'est-à-dire si et seulement si l'angle $\left(\overrightarrow{CB}, \overrightarrow{CA}\right)$ vaut $0$ ou $\pi$ modulo $2\pi$ ;
- un nombre complexe non nul est réel si et seulement si son argument vaut $0$ ou $\pi$ modulo $2\pi$.

Les deux conditions sont donc la même. **$A$, $B$ et $C$ sont alignés si et seulement si $Z$ est réel.**

*Une seconde démonstration, sans arguments.* Un nombre complexe $Z$ est réel si et seulement si $Z = \overline{Z}$. Ici

$$Z = \overline{Z} \iff \frac{a-c}{b-c} = \frac{\overline{a} - \overline{c}}{\overline{b} - \overline{c}} \iff (a - c)\left(\overline{b} - \overline{c}\right) = \left(\overline{a} - \overline{c}\right)(b - c) .$$

La dernière égalité dit exactement que le nombre $(a-c)\overline{(b-c)}$ est égal à son propre conjugué, donc qu'il est réel. Or sa partie imaginaire vaut, en posant $a - c = x_1 + i y_1$ et $b - c = x_2 + i y_2$,

$$\operatorname{Im}\left[(x_1 + iy_1)(x_2 - iy_2)\right] = y_1 x_2 - x_1 y_2 .$$

Cette quantité est nulle si et seulement si $\overrightarrow{CA}$ et $\overrightarrow{CB}$ sont colinéaires : on retrouve le déterminant de deux vecteurs du plan.

**2. Une vérification.**

Posons $a = 1 + i$, $b = 3 + 5i$, $c = 4 + 7i$. Alors

$$a - c = (1 - 4) + (1 - 7)i = -3 - 6i, \qquad b - c = (3-4) + (5-7)i = -1 - 2i .$$

On remarque que $-3 - 6i = 3 \times (-1 - 2i)$, donc

$$Z = \frac{-3-6i}{-1-2i} = 3 .$$

$Z$ vaut $3$, qui est réel : **les trois points sont alignés.**

**3. Une équation.**

Posons $a = 2 + i$, $b = -1 + 3i$ et $c = t + ti$ avec $t$ réel. Alors

$$a - c = (2 - t) + (1 - t)i, \qquad b - c = (-1 - t) + (3 - t)i .$$

D'après la seconde démonstration de la question 1, les trois points sont alignés si et seulement si le déterminant $y_1 x_2 - x_1 y_2$ est nul, avec $x_1 = 2-t$, $y_1 = 1-t$, $x_2 = -1-t$, $y_2 = 3-t$ :

$$(1 - t)(-1 - t) - (2 - t)(3 - t) = 0 .$$

Développons :

$$(1-t)(-1-t) = -1 - t + t + t^2 = t^2 - 1,$$
$$(2-t)(3-t) = 6 - 2t - 3t + t^2 = t^2 - 5t + 6 .$$

L'équation devient

$$t^2 - 1 - \left(t^2 - 5t + 6\right) = 0, \qquad \text{c'est-à-dire} \qquad 5t - 7 = 0 .$$

Il faut encore vérifier que les trois points sont bien deux à deux distincts : $c = t + ti$ ne vaut $2 + i$ pour aucun $t$ (il faudrait $t = 2$ et $t = 1$), ni $-1 + 3i$ (il faudrait $t = -1$ et $t = 3$). C'est donc toujours le cas.

**Conclusion.** Les trois points sont alignés pour la seule valeur $t = \dfrac{7}{5}$.

## Going further

1. Reprendre la question 1 en remplaçant « alignés » par « $A$, $B$, $C$ forment un triangle rectangle en $C$ ». Quelle condition sur $Z$ obtient-on ?
2. Et pour un triangle équilatéral direct de sommets $A$, $B$, $C$ ?
3. Montrer que $A$, $B$, $C$, $D$ sont cocycliques ou alignés si et seulement si le nombre $\dfrac{a-c}{b-c} \div \dfrac{a-d}{b-d}$ est réel.
