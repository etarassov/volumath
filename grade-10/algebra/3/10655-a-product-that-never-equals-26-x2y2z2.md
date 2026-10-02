---
id: "10655"
title: "Un produit de trois facteurs qui ne vaut jamais 26x²y²z²"
grade: 10
theme: algebra
difficulty: 3
duration_min: 30
tags: [inegalite, developpement, cubes, somme-de-carres]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 2 (algèbre)"
  reference: "2023-12_Sujet-envoi-2-2023-2024.pdf, Exercices Juniors, exercice 3 ; corrigé 2024-01_Corrige-envoi-algebre-2023-2024.pdf. Le corrigé utilise l'inégalité entre moyennes arithmétique et géométrique pour trois nombres ; ici elle est démontrée dans la solution."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/Sujet-envoi-2-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-12_Sujet-envoi-2-2023-2024.pdf"
---

## Statement

Montrer qu'il n'existe pas de réels $x$, $y$, $z$ strictement positifs tels que

$$(2x^2 + yz)(2y^2 + xz)(2z^2 + xy) = 26x^2y^2z^2$$

## Hints

1. Développe le membre de gauche. Tu dois trouver $9x^2y^2z^2$, plus $4$ fois une somme de trois cubes, plus $2xyz$ fois une autre somme de trois cubes.
2. Pour des réels $p$, $q$, $r$ strictement positifs, montre que $p^3 + q^3 + r^3 \geqslant 3pqr$. Une idée : développe $(p + q + r)\left((p - q)^2 + (q - r)^2 + (r - p)^2\right)$.
3. Applique cette inégalité deux fois, avec des choix différents de $p$, $q$, $r$, et montre que le membre de gauche est au moins $27x^2y^2z^2$.

## Solution

**Étape 1. Développer.**

On a d'abord $(2x^2 + yz)(2y^2 + xz) = 4x^2y^2 + 2x^3z + 2y^3z + xyz^2$. En multipliant par $2z^2 + xy$, on obtient huit termes :

$$8x^2y^2z^2 + 4x^3y^3 + 4x^3z^3 + 2x^4yz + 4y^3z^3 + 2xy^4z + 2xyz^4 + x^2y^2z^2$$

En les regroupant :

$$(2x^2 + yz)(2y^2 + xz)(2z^2 + xy) = 9x^2y^2z^2 + 4\left(x^3y^3 + y^3z^3 + z^3x^3\right) + 2xyz\left(x^3 + y^3 + z^3\right)$$

**Étape 2. Un lemme sur les cubes.**

*Lemme.* Pour des réels $p$, $q$, $r$ strictement positifs, $p^3 + q^3 + r^3 \geqslant 3pqr$.

*Preuve.* En développant, on vérifie que

$$(p + q + r)(p^2 + q^2 + r^2 - pq - qr - rp) = p^3 + q^3 + r^3 - 3pqr$$

(les termes comme $pq^2$ apparaissent une fois avec le signe $+$ et une fois avec le signe $-$, et il reste $-3pqr$). D'autre part,

$$p^2 + q^2 + r^2 - pq - qr - rp = \frac{1}{2}\left((p - q)^2 + (q - r)^2 + (r - p)^2\right) \geqslant 0$$

Comme $p + q + r > 0$, le produit est positif ou nul, d'où $p^3 + q^3 + r^3 - 3pqr \geqslant 0$.

**Étape 3. Minorer le membre de gauche.**

- Avec $p = xy$, $q = yz$, $r = zx$, le lemme donne $x^3y^3 + y^3z^3 + z^3x^3 \geqslant 3 \cdot xy \cdot yz \cdot zx = 3x^2y^2z^2$.
- Avec $p = x$, $q = y$, $r = z$, il donne $x^3 + y^3 + z^3 \geqslant 3xyz$, donc $2xyz(x^3 + y^3 + z^3) \geqslant 6x^2y^2z^2$, car $2xyz > 0$.

En reportant dans le développement de l'étape 1 :

$$(2x^2 + yz)(2y^2 + xz)(2z^2 + xy) \geqslant 9x^2y^2z^2 + 4 \times 3x^2y^2z^2 + 6x^2y^2z^2 = 27x^2y^2z^2$$

**Étape 4. Conclure.**

Comme $x^2y^2z^2 > 0$, on a $27x^2y^2z^2 > 26x^2y^2z^2$. Le membre de gauche est donc toujours strictement plus grand que $26x^2y^2z^2$.

**Conclusion : pour tous réels $x, y, z > 0$, le produit vaut au moins $27x^2y^2z^2$, donc il ne peut jamais être égal à $26x^2y^2z^2$.**
