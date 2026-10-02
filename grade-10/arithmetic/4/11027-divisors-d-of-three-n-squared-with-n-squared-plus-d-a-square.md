---
id: "11027"
title: "Les diviseurs d de 3n² tels que n² + d soit un carré"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [diviseurs, carre-parfait, pgcd, decomposition-en-facteurs-premiers, encadrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 3 (arithmétique)"
  reference: "2022-01_sujet-envoi-3.pdf, Exercices Juniors, exercice 7 ; corrigé 2022-02_corrige-envoi-3.pdf. Le corrigé conclut avec le lemme de Gauss ; on le remplace ici par un argument sur les facteurs premiers."
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/01/sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-01_sujet-envoi-3.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. Trouver tous les diviseurs $d \geqslant 1$ de $3n^2$ tels que $n^2 + d$
soit un carré parfait.

## Hints

1. Encadre $n^2 + d$ : quel est le plus grand carré qu'il peut atteindre ?
2. Écris $n^2 + d = (n + k)^2$ avec $1 \leqslant k \leqslant n$. Alors $d = k(2n + k)$, et ce nombre divise $3n^2$.
3. Simplifie par le PGCD de $k$ et $n$ : avec $k = g\ell$ et $n = gm$, tu obtiens que $\ell + 2m$ divise $3m^2$. Montre que $\ell + 2m$ n'a aucun facteur premier en commun avec $m$.

## Solution

**On écrit le carré.** Comme $d$ divise $3n^2$, on a $1 \leqslant d \leqslant 3n^2$, donc

$$n^2 < n^2 + d \leqslant 4n^2 = (2n)^2 .$$

Si $n^2 + d = s^2$ avec $s \geqslant 1$, alors $n < s \leqslant 2n$. On écrit $s = n + k$ avec
$1 \leqslant k \leqslant n$, et

$$d = s^2 - n^2 = (n + k)^2 - n^2 = k(2n + k) .$$

Ainsi $k(2n + k)$ divise $3n^2$.

**On simplifie.** Soit $g = \mathrm{PGCD}(k, n)$. On écrit $k = g\ell$ et $n = gm$, où $\ell$ et $m$ sont
des entiers $\geqslant 1$ sans facteur premier commun. Alors

$$k(2n + k) = g^2 \, \ell \, (\ell + 2m) \qquad \text{et} \qquad 3n^2 = g^2 \times 3m^2 ,$$

donc $\ell(\ell + 2m)$ divise $3m^2$. En particulier, $\ell + 2m$ divise $3m^2$.

**$\ell + 2m$ n'a aucun facteur premier commun avec $m$.** Si un nombre premier $q$ divisait à la fois
$m$ et $\ell + 2m$, il diviserait $(\ell + 2m) - 2m = \ell$. Ce serait un facteur premier commun à
$\ell$ et $m$, ce qui est exclu.

**Donc $\ell + 2m$ divise $3$.** Pour un nombre premier $q$ et un entier $N \geqslant 1$, notons $e_q(N)$
l'exposant de $q$ dans $N$. Soit $q$ un facteur premier de $\ell + 2m$. Comme $q$ ne divise pas $m$, on a
$e_q(3m^2) = e_q(3)$. Et comme $\ell + 2m$ divise $3m^2$,

$$e_q(\ell + 2m) \leqslant e_q(3m^2) = e_q(3) .$$

Ceci vaut pour chaque facteur premier de $\ell + 2m$, donc $\ell + 2m$ divise $3$.

**On conclut.** Or $\ell \geqslant 1$ et $m \geqslant 1$, donc $\ell + 2m \geqslant 3$. On a donc
$\ell + 2m = 3$, ce qui force $\ell = m = 1$. Alors $k = g = n$, et

$$d = k(2n + k) = n \times 3n = 3n^2 .$$

**Réciproque.** $d = 3n^2$ est bien un diviseur de $3n^2$, et $n^2 + 3n^2 = (2n)^2$ est un carré.

Le seul diviseur qui convient est $d = 3n^2$.
