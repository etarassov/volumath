---
id: "12467"
title: "a¹² + b¹² + c¹² + 8(ab + bc + ca) ≥ 27"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [inegalite, factorisation, carre-positif, tangente, cas-d-egalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 19 et 20 février 2020"
  reference: "2020-11_Enonce-Test-Fevrier-2020.pdf, exercice 4 (groupe Junior) ; corrigé 2020-03_Correction-Web.pdf (le corrigé utilise l'inégalité arithmético-géométrique et l'inégalité de Tchebychev ; solution réécrite avec deux factorisations)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/11/Enonce-Test-Fevrier-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2020-11_Enonce-Test-Fevrier-2020.pdf"
---

## Statement

Soit $a$, $b$ et $c$ des réels strictement positifs tels que $a + b + c = 3$. Démontrer que
$$a^{12} + b^{12} + c^{12} + 8(ab + bc + ca) \geqslant 27,$$
et trouver les cas d'égalité.

## Hints

1. Que vaut le membre de gauche quand $a = b = c = 1$ ?
2. Développe $(a + b + c)^2 = 9$ pour écrire $ab + bc + ca$ à l'aide de $a^2 + b^2 + c^2$. Tu dois
   arriver à une inégalité de la forme $f(a) + f(b) + f(c) \geqslant 0$, avec
   $f(t) = t^{12} - 4t^2 + 3$.
3. Le nombre $f(t)$ peut être négatif, par exemple pour $t = \text{0,95}$. Cherche plutôt à montrer
   que $f(t) \geqslant 4(t - 1)$ pour tout $t \geqslant 0$. En additionnant, que trouves-tu ?
4. Passe par $t^3$ : montre que $t^{12} + 3 \geqslant 4t^3$ (pose $u = t^3$ et factorise
   $u^4 - 4u + 3$ par $u - 1$, deux fois), puis que $t^3 - t^2 \geqslant t - 1$.

## Solution

Quand $a = b = c = 1$, le membre de gauche vaut $3 + 8 \times 3 = 27$ : l'inégalité est une égalité.
Les étapes ci-dessous doivent donc toutes être des égalités dans ce cas.

### Étape 1 : une variable à la fois

On a $9 = (a + b + c)^2 = a^2 + b^2 + c^2 + 2(ab + bc + ca)$, donc
$$8(ab + bc + ca) = 4 \times 2(ab + bc + ca) = 4\,(9 - a^2 - b^2 - c^2) = 36 - 4a^2 - 4b^2 - 4c^2.$$
Notons $S = a^{12} + b^{12} + c^{12} + 8(ab + bc + ca) - 27$. On obtient
$$S = a^{12} + b^{12} + c^{12} - 4a^2 - 4b^2 - 4c^2 + 9 = f(a) + f(b) + f(c),$$
où l'on a posé $f(t) = t^{12} - 4t^2 + 3$. Il faut montrer que $S \geqslant 0$.

On ne peut pas espérer que chacun des trois termes soit positif : par exemple
$f(\text{0,95}) \approx -\text{0,07}$. On va plutôt comparer $f(t)$ à $4(t - 1)$, dont la somme
pour $t = a$, $b$, $c$ vaut $4(a + b + c - 3) = 0$.

### Étape 2 : deux factorisations

**Première factorisation.** Pour tout réel $u$,
$$u^4 - 4u + 3 = (u - 1)(u^3 + u^2 + u - 3) = (u - 1)^2(u^2 + 2u + 3),$$
ce que l'on vérifie en développant. Avec $u = t^3$ :
$$t^{12} - 4t^3 + 3 = (t^3 - 1)^2\,(t^6 + 2t^3 + 3).$$

**Deuxième factorisation.** Pour tout réel $t$,
$$t^3 - t^2 - t + 1 = t^2(t - 1) - (t - 1) = (t - 1)(t^2 - 1) = (t - 1)^2(t + 1).$$

**On assemble.** On vérifie en développant que
$$f(t) = (t^{12} - 4t^3 + 3) + 4\,(t^3 - t^2 - t + 1) + 4\,(t - 1),$$
donc
$$f(t) - 4(t - 1) = (t^3 - 1)^2\,(t^6 + 2t^3 + 3) + 4\,(t - 1)^2\,(t + 1).$$
Pour $t > 0$, les deux termes de droite sont positifs ou nuls, car $t^6 + 2t^3 + 3 > 0$ et
$t + 1 > 0$. Donc $f(t) \geqslant 4(t - 1)$.

De plus, il y a égalité seulement si les deux termes sont nuls, c'est-à-dire si $(t - 1)^2 = 0$ :
**$f(t) = 4(t - 1)$ si et seulement si $t = 1$.**

### Étape 3 : conclusion

En appliquant l'étape 2 à $a$, à $b$ et à $c$, puis en additionnant :
$$S = f(a) + f(b) + f(c) \geqslant 4(a - 1) + 4(b - 1) + 4(c - 1) = 4(a + b + c - 3) = 0.$$
**L'inégalité est démontrée.**

Il y a égalité si et seulement si $f(a) = 4(a - 1)$, $f(b) = 4(b - 1)$ et $f(c) = 4(c - 1)$, donc
d'après l'étape 2 **si et seulement si $a = b = c = 1$**.

## Going further

1. Montrer que l'inégalité devient fausse si l'on remplace chaque exposant $12$ par $3$. (On pourra
   essayer $a = b$ proches de $\frac{3}{2}$ et $c$ proche de $0$.)
2. Démontrer l'inégalité $a^6 + b^6 + c^6 + 8(ab + bc + ca) \geqslant 27$, avec les mêmes hypothèses.
   La droite qui remplace $4(t - 1)$ n'est plus la même : laquelle faut-il prendre ?
