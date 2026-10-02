---
id: "7331"
title: "Ce nombre à dix chiffres est-il premier ?"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [nombres-premiers, factorisation, identites-remarquables, somme-de-deux-cubes]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Saint-Malo 2007"
  reference: "stage_ete_2007.pdf, « Les exercices du groupe C », arithmétique, exercice 89 (repris en 2008, seconde mi-temps, arithmétique, exercice 16)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2007.pdf"
---

## Statement

Le nombre
$$1\,000\,000\,027$$
est-il premier ?

Tester tous les diviseurs jusqu'à $31\,623$ serait long. Trouve une réponse en quelques lignes.

## Hints

1. Un nombre à dix chiffres aussi rond ne tombe pas du ciel : sépare-le en deux morceaux que tu reconnais.
2. $1\,000\,000\,000$, c'est $1\,000^3$. Et $27$ ?
3. Tu as donc une **somme de deux cubes**. Connais-tu une identité qui factorise $a^3 + b^3$ ?
4. Si tu ne te souviens pas de l'identité, remarque simplement que $a = -b$ annule $a^3 + b^3$, donc $a + b$ est un facteur.

## Solution

Le nombre se coupe naturellement en deux cubes :
$$1\,000\,000\,027 = 1\,000\,000\,000 + 27 = 1\,000^3 + 3^3 .$$

Or on connaît la factorisation d'une somme de deux cubes :
$$a^3 + b^3 = (a + b)(a^2 - ab + b^2) .$$

*(Si tu l'as oubliée, tu peux la retrouver : en remplaçant $a$ par $-b$, l'expression $a^3 + b^3$ s'annule, donc $a + b$ divise $a^3 + b^3$ ; la division donne le second facteur.)*

Avec $a = 1\,000$ et $b = 3$ :
$$1\,000\,000\,027 = (1\,000 + 3) \times (1\,000^2 - 1\,000 \times 3 + 3^2) = 1\,003 \times 997\,009 .$$

Vérifions ce produit :
$$1\,003 \times 997\,009 = 997\,009\,000 + 3 \times 997\,009 = 997\,009\,000 + 2\,991\,027 = 1\,000\,000\,027 . \quad \checkmark$$

Les deux facteurs sont strictement plus grands que $1$ et strictement plus petits que $1\,000\,000\,027$.

$$\boxed{\text{Non, } 1\,000\,000\,027 \text{ n'est pas premier : il vaut } 1\,003 \times 997\,009 .}$$

## Going further

1. $1\,003$ n'est pas premier non plus : trouve ses deux facteurs premiers. *(Ils sont tous les deux plus petits que $60$.)*
2. Avec de la patience, on peut aller jusqu'au bout : $1\,000\,000\,027 = 13 \times 17 \times 59 \times 271 \times 283$. Vérifie au moins que $13$ divise bien $997\,009$.
3. Le nombre $1\,000\,000\,000\,027$ (trois zéros de plus) est-il premier ? Et $1\,000\,027$ ?
4. Plus généralement, $10^{3k} + 27$ est-il toujours composé ? Que se passe-t-il avec $10^{3k} + 7$, où $7$ n'est pas un cube ?
