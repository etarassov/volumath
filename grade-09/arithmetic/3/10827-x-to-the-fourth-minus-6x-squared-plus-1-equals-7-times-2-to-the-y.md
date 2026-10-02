---
id: "10827"
title: "x⁴ − 6x² + 1 = 7 × 2ʸ"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [equation-diophantienne, puissances-de-deux, carre-parfait, parite, identite-remarquable]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 1 (arithmétique)"
  reference: "2017-10_ofm-2015-2016-envoi-1.pdf, Exercices du groupe B, exercice 2 ; corrigé 2017-10_ofm-2015-2016-envoi-1-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-1.pdf"
---

## Statement

Trouver tous les couples d'entiers $(x, y)$, positifs ou négatifs, tels que

$$x^4 - 6x^2 + 1 = 7 \times 2^y .$$

## Hints

1. Pourquoi $y$ ne peut-il pas être négatif ?
2. Ajoute $8$ aux deux membres : le membre de gauche devient un carré.
3. Pour $y \geqslant 4$, écris le membre de droite comme $8$ fois un nombre impair. Un carré peut-il s'écrire ainsi ?

## Solution

**Réponse : il y a deux couples, $(x, y) = (3, 2)$ et $(x, y) = (-3, 2)$.**

On vérifie : $3^4 - 6 \times 3^2 + 1 = 81 - 54 + 1 = 28 = 7 \times 2^2$, et c'est la même chose pour $x = -3$.

### Étape 1 : $y$ est positif ou nul

Si $y < 0$, alors $7 \times 2^y = 7 / 2^{-y}$, où $2^{-y}$ est une puissance de $2$ au moins égale à $2$. Ce n'est pas un entier, car $7$ est impair. Or le membre de gauche est un entier. Donc $y \geqslant 0$.

### Étape 2 : on fait apparaître un carré

D'après l'identité $(a - b)^2 = a^2 - 2ab + b^2$, on a $\left(x^2 - 3\right)^2 = x^4 - 6x^2 + 9$. En ajoutant $8$ aux deux membres de l'équation, on obtient donc
$$\left(x^2 - 3\right)^2 = 7 \times 2^y + 8 .$$
Il faut donc que $7 \times 2^y + 8$ soit un carré.

### Étape 3 : les petites valeurs de $y$

- $y = 0$ : $7 + 8 = 15$, ce n'est pas un carré.
- $y = 1$ : $14 + 8 = 22$, ce n'est pas un carré.
- $y = 2$ : $28 + 8 = 36 = 6^2$. Alors $x^2 - 3 = 6$ ou $x^2 - 3 = -6$, donc $x^2 = 9$ ou $x^2 = -3$. Seul $x^2 = 9$ est possible, d'où $x = 3$ ou $x = -3$.
- $y = 3$ : $56 + 8 = 64 = 8^2$. Alors $x^2 - 3 = 8$ ou $x^2 - 3 = -8$, donc $x^2 = 11$ ou $x^2 = -5$. Ni l'un ni l'autre n'est le carré d'un entier.

### Étape 4 : si $y \geqslant 4$, pas de solution

Pour $y \geqslant 4$, on factorise par $8$ :
$$7 \times 2^y + 8 = 8 \times \left(7 \times 2^{y-3} + 1\right) .$$
Comme $y - 3 \geqslant 1$, le nombre $7 \times 2^{y-3}$ est pair, donc $k = 7 \times 2^{y-3} + 1$ est **impair**.

Montrons qu'un carré $s^2$ ne peut pas être égal à $8k$ avec $k$ impair. Supposons $s^2 = 8k$. Alors $s^2$ est pair, donc $s$ aussi (le carré d'un nombre impair est impair). Écrivons $s = 2s_1$. On obtient $4s_1^2 = 8k$, soit $s_1^2 = 2k$. Donc $s_1$ est pair, $s_1 = 2s_2$, et $4s_2^2 = 2k$, soit $k = 2s_2^2$. C'est impossible, puisque $k$ est impair.

Donc $7 \times 2^y + 8$ n'est pas un carré quand $y \geqslant 4$.

### Conclusion

La seule valeur possible est $y = 2$, avec $x = 3$ ou $x = -3$. **Les solutions sont $(3, 2)$ et $(-3, 2)$.**

## Going further

1. Résous de même l'équation $x^4 - 6x^2 + 1 = 2^y$, avec $x$ et $y$ entiers.
2. Montre plus généralement que si $s^2$ est divisible par $2^j$ mais pas par $2^{j+1}$, alors $j$ est pair.
