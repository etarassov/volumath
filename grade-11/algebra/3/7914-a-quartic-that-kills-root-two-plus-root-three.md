---
id: "7914"
title: "Un polynôme de degré 4 qui annule racine de 2 plus racine de 3"
grade: 11
theme: algebra
difficulty: 3
duration_min: 20
tags: [racine-carree, identites-remarquables, polynome, calcul-algebrique]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, Coupe Animath"
  reference: "stage_ete_2016.pdf, « Éliminatoires lycéens », exercice 6 (énoncé p. 22, solution p. 27)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

On pose $a = \sqrt{2} + \sqrt{3}$.

Trouver quatre entiers $m$, $n$, $p$, $q$ tels que

$$a^4 + m\,a^3 + n\,a^2 + p\,a + q = 0 ,$$

puis calculer $m^2 + n^2 + p^2 + q^2$.

## Hints

1. Ne développe pas $a^3$ tout de suite : les puissances impaires de $a$ font apparaître des racines carrées. Essaie de n'utiliser que $a^2$ et $a^4$.
2. Calcule $a^2$. Il reste une racine carrée : laquelle ?
3. Isole cette racine carrée d'un côté de l'égalité, puis élève au carré.

## Solution

**La réponse : $m = 0$, $n = -10$, $p = 0$, $q = 1$, et $m^2 + n^2 + p^2 + q^2 = 101$.**

**Étape 1 : on calcule $a^2$.**

$$a^2 = \left(\sqrt{2} + \sqrt{3}\right)^2 = 2 + 2\sqrt{2}\sqrt{3} + 3 = 5 + 2\sqrt{6} .$$

**Étape 2 : on isole la racine et on élève au carré.**

$$a^2 - 5 = 2\sqrt{6} .$$

En élevant au carré les deux membres :

$$\left(a^2 - 5\right)^2 = 4 \times 6 = 24 ,$$

soit

$$a^4 - 10a^2 + 25 = 24 ,$$

et finalement

$$a^4 - 10a^2 + 1 = 0 .$$

**Étape 3 : on lit les coefficients.**

En comparant avec $a^4 + m a^3 + n a^2 + p a + q = 0$, on prend

$$m = 0, \qquad n = -10, \qquad p = 0, \qquad q = 1 .$$

**Étape 4 : la somme des carrés.**

$$m^2 + n^2 + p^2 + q^2 = 0 + 100 + 0 + 1 = 101 .$$

**Conclusion.** $m^2 + n^2 + p^2 + q^2 = \boxed{101}$.

## Going further

On peut montrer qu'il n'existe **aucun** autre quadruplet d'entiers $(m, n, p, q)$ qui convienne : le nombre $\sqrt{2} + \sqrt{3}$ n'est annulé par aucun polynôme à coefficients entiers de degré $1$, $2$ ou $3$, et cela force l'unicité du polynôme de degré $4$ ci-dessus. C'est ce qu'on appelle le **polynôme minimal** de $a$.
