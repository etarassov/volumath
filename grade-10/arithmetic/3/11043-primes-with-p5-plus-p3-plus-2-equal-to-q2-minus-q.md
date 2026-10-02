---
id: "11043"
title: "Nombres premiers tels que p⁵ + p³ + 2 = q² − q"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [nombres-premiers, factorisation, disjonction-de-cas, encadrement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 3 (arithmétique)"
  reference: "2023-01_Sujet-envoi-3.pdf, Exercices Juniors, exercice 6, repris tel quel en Exercices Seniors, exercice 13 ; corrigé 2023-03_corrige.pdf. Coquille du corrigé (dans les deux exercices) : il écrit « pgcd(q − 1, q + 2) » à la place de pgcd(q − 2, q + 1)."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/01/Sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-01_Sujet-envoi-3.pdf"
---

## Statement

Trouver tous les nombres premiers $p$ et $q$ tels que

$$p^5 + p^3 + 2 = q^2 - q .$$

## Hints

1. Essaie les petites valeurs de $p$. Tu dois trouver deux solutions.
2. Fais passer le $2$ à droite et factorise chaque membre : $q^2 - q - 2$ se factorise.
3. Tu obtiens $p^3(p^2 + 1) = (q - 2)(q + 1)$. Un nombre premier peut-il diviser à la fois $q - 2$ et $q + 1$ ?
4. Si $p \neq 3$, les trois facteurs $p$ de $p^3$ vont tous dans le même facteur, $q - 2$ ou $q + 1$. Compare ensuite les tailles.

## Solution

**Réponse :** $(p, q) = (2, 7)$ et $(p, q) = (3, 17)$.

**Vérification.** $2^5 + 2^3 + 2 = 42 = 7^2 - 7$ et $3^5 + 3^3 + 2 = 272 = 17^2 - 17$, et $7$ et $17$ sont
premiers.

**Factorisation.** L'équation s'écrit $p^5 + p^3 = q^2 - q - 2$, c'est-à-dire

$$p^3(p^2 + 1) = (q - 2)(q + 1) .$$

Comme $p \geqslant 2$, le membre de gauche vaut au moins $8 \times 5 = 40$, donc $q^2 - q \geqslant 42$ et
$q \geqslant 7$. En particulier $q - 2 \geqslant 5$ et les deux facteurs de droite sont positifs.

**Le cas $p = 3$.** L'équation devient $q^2 - q = 272$, c'est-à-dire $q(q - 1) = 272 = 17 \times 16$.
Comme $q(q - 1)$ augmente avec $q$, la seule solution est $q = 17$, qui est premier.

**Le cas $p \neq 3$.** Si $p$ divisait à la fois $q - 2$ et $q + 1$, il diviserait leur différence $3$, donc
$p = 3$. Ce n'est pas le cas : $p$ divise au plus un des deux facteurs.

Regardons l'exposant de $p$ dans les décompositions en facteurs premiers. Dans $(q - 2)(q + 1)$ il vaut au
moins $3$ (à cause de $p^3$), et c'est la somme des exposants dans $q - 2$ et dans $q + 1$. L'un de ces deux
exposants est nul, donc l'autre vaut au moins $3$ : $p^3$ divise $q - 2$ ou $p^3$ divise $q + 1$.

* **Si $p^3$ divise $q - 2$**, alors $q - 2 \geqslant p^3$ et $q + 1 > p^3$, donc
  $(q - 2)(q + 1) > p^6$. Mais $p^3(p^2 + 1) < p^3 \times p^3 = p^6$, car $p^2 + 1 < p^3$ pour $p \geqslant 2$
  (en effet $p^3 - p^2 = p^2(p - 1) \geqslant 4$). Les deux membres ne peuvent pas être égaux : ce cas est
  impossible.
* **Si $p^3$ divise $q + 1$**, écrivons $q + 1 = k p^3$ avec $k \geqslant 1$. En divisant l'équation par
  $p^3$, on obtient $p^2 + 1 = k(q - 2)$, donc $q - 2 \leqslant p^2 + 1$. Alors

  $$p^3 \leqslant q + 1 = (q - 2) + 3 \leqslant p^2 + 4 .$$

  Pour $p \geqslant 3$, on aurait $p^3 - p^2 = p^2(p - 1) \geqslant 18 > 4$ : c'est impossible. Donc $p = 2$.
  L'équation devient $q^2 - q = 42$, soit $q(q - 1) = 7 \times 6$, et $q = 7$.

**Conclusion.** Les seules solutions sont $(p, q) = (2, 7)$ et $(p, q) = (3, 17)$.

## Going further

Montrer que l'équation $p^3 + p = q^2 - q$ n'a aucune solution avec $p$ et $q$ premiers. (Factorise de la
même façon, $p(p^2 + 1) = q(q - 1)$, puis montre que $p$ divise $q - 1$.)
