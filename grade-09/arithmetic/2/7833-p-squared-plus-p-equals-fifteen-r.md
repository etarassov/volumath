---
id: "7833"
title: "p² + p = 15r avec p et r premiers"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 20
tags: [nombres premiers, parite, entiers consecutifs, factorisation]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, test de fin de parcours du mardi 25 août, groupe B, exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Trouver tous les couples de nombres premiers $(p, r)$ tels que
$$p^2 + p = 15\,r .$$

## Hints

1. Commence par factoriser le membre de gauche. Qu'est-ce que $p^2 + p$ ?
2. Le produit de deux entiers consécutifs a toujours la même particularité. Laquelle ?
3. Le membre de droite est donc pair. Mais $15$ est impair. Que cela impose-t-il à $r$, sachant
   que $r$ est premier ?
4. Une fois $r$ connu, il ne reste qu'à trouver deux entiers consécutifs dont le produit vaut un
   nombre précis.

## Solution

**Étape 1 : on factorise et on regarde la parité.**

$$p^2 + p = p\,(p + 1).$$

Les entiers $p$ et $p+1$ sont consécutifs, donc l'un des deux est pair. Leur produit est donc
**pair**.

**Étape 2 : on en déduit $r$.**

Le membre de droite $15r$ est donc pair lui aussi. Comme $15$ est impair, c'est $r$ qui doit
être pair.

Or $r$ est un nombre premier, et le seul nombre premier pair est $2$. Donc
$$r = 2 .$$

**Étape 3 : on trouve $p$.**

L'équation devient
$$p\,(p+1) = 15 \times 2 = 30 .$$

Il s'agit donc de trouver deux entiers consécutifs dont le produit vaut $30$. En essayant :
$$4 \times 5 = 20, \qquad 5 \times 6 = 30, \qquad 6 \times 7 = 42 .$$

Comme le produit de deux entiers consécutifs positifs grandit quand on avance, la seule
possibilité est $p = 5$.

Et $5$ est bien un nombre premier.

**Conclusion.**

Le seul couple solution est
$$\boxed{(p, r) = (5, 2)} .$$

*Vérification.* $5^2 + 5 = 25 + 5 = 30$ et $15 \times 2 = 30$.
