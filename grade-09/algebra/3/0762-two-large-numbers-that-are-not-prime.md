---
id: "0762"
title: "Deux grands nombres qui ne sont pas premiers"
grade: 9
theme: algebra
difficulty: 3
duration_min: 30
tags: [identite-remarquable, nombre-premier, factorisation, puissances]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes divers », niveau collège - débutants, 9 février 2024"
  reference: "CalculLitteral.pdf, exercices 25 et 26"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/CalculLitteral.pdf"
---

## Statement

1. Démontre que, pour tout nombre $x$,
   $$x^4 + x^2 + 1 = (x^2 + x + 1)(x^2 - x + 1).$$
2. En déduire que $2019^4 + 2019^2 + 1$ n'est pas un nombre premier.
3. Démontre que $2019^{2020} + 2019^{1010} + 1$ n'est pas un nombre premier non plus.

## Hints

1. Pour la question 1, tu peux simplement développer le membre de droite. Regroupe astucieusement : $(x^2 + 1 + x)(x^2 + 1 - x)$, cela ressemble à $(A+B)(A-B)$.
2. Pour la question 2, applique la question 1 avec $x = 2019$. N'oublie pas de vérifier que les deux facteurs obtenus sont bien strictement plus grands que $1$ : c'est ce qui prouve que le nombre n'est pas premier.
3. Pour la question 3, l'énoncé ressemble beaucoup à $x^4 + x^2 + 1$ : il faudrait que $2019^{2020}$ soit une puissance quatrième et $2019^{1010}$ le carré du même nombre.
4. Remarque que $2020 = 4 \times 505$ et $1010 = 2 \times 505$. Pose $y = 2019^{505}$.

## Solution

**1. L'identité.**

Posons $A = x^2 + 1$ et $B = x$. Le membre de droite s'écrit

$$(x^2 + x + 1)(x^2 - x + 1) = (A + B)(A - B) = A^2 - B^2.$$

Donc

$$(x^2+x+1)(x^2-x+1) = (x^2+1)^2 - x^2 = x^4 + 2x^2 + 1 - x^2 = x^4 + x^2 + 1.$$

L'identité est démontrée.

**2. Le premier nombre.**

On applique l'identité avec $x = 2019$ :

$$2019^4 + 2019^2 + 1 = (2019^2 + 2019 + 1)(2019^2 - 2019 + 1).$$

Comme $2019^2 = 4\,076\,361$, les deux facteurs valent

$$2019^2 + 2019 + 1 = 4\,078\,381 \qquad \text{et} \qquad 2019^2 - 2019 + 1 = 4\,074\,343.$$

Ce sont deux entiers strictement plus grands que $1$. Le nombre $2019^4 + 2019^2 + 1$ s'écrit donc comme un produit de deux entiers, tous les deux différents de $1$ et de lui-même : **il n'est pas premier**.

**3. Le second nombre.**

Le nombre $2019^{2020} + 2019^{1010} + 1$ a exactement la même forme, à condition de bien choisir la lettre. On remarque que

$$2020 = 4 \times 505 \qquad \text{et} \qquad 1010 = 2 \times 505.$$

Posons donc $y = 2019^{505}$. Alors

$$y^4 = 2019^{4 \times 505} = 2019^{2020} \qquad \text{et} \qquad y^2 = 2019^{2 \times 505} = 2019^{1010},$$

si bien que

$$2019^{2020} + 2019^{1010} + 1 = y^4 + y^2 + 1 = (y^2 + y + 1)(y^2 - y + 1).$$

Comme $y = 2019^{505}$ est un entier très grand, les deux facteurs $y^2 + y + 1$ et $y^2 - y + 1$ sont des entiers strictement plus grands que $1$ (le plus petit des deux, $y^2 - y + 1 = y(y-1) + 1$, dépasse déjà $2019$). Donc ce nombre non plus **n'est pas premier**.

**Réponse.** Les deux nombres sont composés : le premier vaut $4\,078\,381 \times 4\,074\,343$, et le second vaut $(y^2+y+1)(y^2-y+1)$ avec $y = 2019^{505}$.

## Going further

Avec la même identité, montre que $n^4 + n^2 + 1$ n'est jamais premier dès que $n \geqslant 2$. Que se passe-t-il pour $n = 1$ ?
