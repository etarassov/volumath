---
id: "13018"
title: "Encadrer x² + y² + z² + yz"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [inegalite, meilleure constante, carres, identites remarquables]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, épreuve de sélection (Coupe Animath d'automne) du 2 octobre 2013"
  reference: "2017-09_coupe_automne_2013.pdf, exercice 7 ; corrigé 2017-09_coupe_automne_2013_corrige.pdf (le corrigé place l'égalité en y = 3/7 au lieu de y = 2/7)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2013.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2013.pdf"
---

## Statement

Déterminer le plus grand nombre réel $a$ et le plus petit nombre réel $b$ tels que, pour tous les réels $x$, $y$, $z$ positifs ou nuls, on ait
$$a\,(x + y + z)^2 \leqslant x^2 + y^2 + z^2 + yz \leqslant b\,(x + y + z)^2 .$$

## Hints

1. Pour $b$, développe $(x + y + z)^2$ et compare avec $x^2 + y^2 + z^2 + yz$. Pour voir que $b$ ne peut pas être plus petit, essaie des valeurs simples de $x$, $y$, $z$.
2. Pour $a$, les rôles de $y$ et $z$ sont les mêmes. Commence par le cas $y = z$, et cherche les valeurs de $x$ et $y$ qui rendent le quotient $\dfrac{x^2 + 3y^2}{(x + 2y)^2}$ le plus petit possible.
3. Vérifie que $y^2 + z^2 + yz = \dfrac{3}{4}(y + z)^2 + \dfrac{1}{4}(y - z)^2$. Cela ramène le problème à deux nombres, $x$ et $s = y + z$.
4. Cherche le nombre $a$ pour lequel $x^2 + \dfrac{3}{4}s^2 - a\,(x + s)^2$ est le carré d'une expression de la forme $p\,x - q\,s$.

## Solution

Notons $f = x^2 + y^2 + z^2 + yz$.

**Le nombre $b$.** En développant,
$$(x + y + z)^2 = x^2 + y^2 + z^2 + 2xy + 2yz + 2zx,$$
donc
$$(x + y + z)^2 - f = 2xy + yz + 2zx \geqslant 0,$$
puisque $x$, $y$, $z$ sont positifs ou nuls. Ainsi $f \leqslant 1 \times (x + y + z)^2$ : le nombre $b = 1$ convient.

Aucun nombre $b < 1$ ne convient : pour $x = y = 0$ et $z = 1$, on a $f = 1$ et $(x + y + z)^2 = 1$, et l'inégalité $1 \leqslant b$ est fausse. Le plus petit nombre qui convient est donc $b = 1$.

**Le nombre $a$ : un premier essai.** Pour $x = 3$, $y = 2$, $z = 2$, on trouve
$$f = 9 + 4 + 4 + 4 = 21, \qquad (x + y + z)^2 = 7^2 = 49 .$$
Si $a$ convient, alors $49\,a \leqslant 21$, donc $a \leqslant \dfrac{21}{49} = \dfrac{3}{7}$. Montrons que $a = \dfrac{3}{7}$ convient.

**On regroupe $y$ et $z$.** Posons $s = y + z$. On vérifie en développant que
$$y^2 + z^2 + yz = \frac{3}{4}(y + z)^2 + \frac{1}{4}(y - z)^2 .$$
En effet, le membre de droite vaut $\dfrac{3}{4}\left(y^2 + 2yz + z^2\right) + \dfrac{1}{4}\left(y^2 - 2yz + z^2\right) = y^2 + z^2 + \dfrac{6 - 2}{4}\,yz$. Donc
$$f = x^2 + \frac{3}{4}s^2 + \frac{1}{4}(y - z)^2 .$$

**Un carré caché.** Calculons $28$ fois la différence $x^2 + \dfrac{3}{4}s^2 - \dfrac{3}{7}(x + s)^2$ :
$$28x^2 + 21s^2 - 12\left(x^2 + 2xs + s^2\right) = 16x^2 - 24xs + 9s^2 = (4x - 3s)^2 .$$
On obtient finalement l'égalité, vraie pour tous les réels $x$, $y$, $z$ :
$$f - \frac{3}{7}(x + y + z)^2 = \frac{1}{4}(y - z)^2 + \frac{1}{28}(4x - 3y - 3z)^2 .$$
Le membre de droite est une somme de carrés, donc il est positif ou nul. Ainsi $f \geqslant \dfrac{3}{7}(x + y + z)^2$ : le nombre $a = \dfrac{3}{7}$ convient. Avec le premier essai, c'est le plus grand.

**Comment trouver $\dfrac{3}{7}$ et le cas d'égalité ?** On cherche le nombre $a$ pour lequel $x^2 + \dfrac{3}{4}s^2 - a\,(x + s)^2$ est un carré $(p\,x - q\,s)^2 = p^2x^2 - 2pq\,xs + q^2s^2$. En identifiant, il faut $p^2 = 1 - a$, $q^2 = \dfrac{3}{4} - a$ et $pq = a$. Alors
$$a^2 = (1 - a)\left(\frac{3}{4} - a\right) = \frac{3}{4} - \frac{7}{4}\,a + a^2, \qquad \text{d'où} \qquad a = \frac{3}{7} .$$
L'égalité a lieu quand les deux carrés sont nuls : $y = z$ et $4x = 3(y + z) = 6y$, par exemple $x = 3$, $y = z = 2$. C'est ainsi qu'on a choisi le premier essai.

**Conclusion.** Le plus grand nombre $a$ et le plus petit nombre $b$ qui conviennent sont
$$a = \frac{3}{7} \qquad \text{et} \qquad b = 1 .$$

## Going further

1. Le plus grand $a$ change-t-il si l'on autorise $x$, $y$, $z$ à être des réels quelconques ? Et le plus petit $b$ existe-t-il encore ?
2. Déterminer le plus grand réel $a$ tel que $x^2 + y^2 + z^2 \geqslant a\,(x + y + z)^2$ pour tous les réels $x$, $y$, $z$.
