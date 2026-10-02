---
id: "6001"
title: "La table de multiplication sur les doigts"
grade: 8
theme: algebra
difficulty: 3
duration_min: 25
tags: [calcul-litteral, developpement, distributivite, preuve]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), MTCircular, « Problem Circle » de James Tanton"
  reference: "MTCircularSA2015.pdf, « Problem Circle : Let Your Digits Do the Multiplying », p. 18 (la revue pose la question « Why does this work? » sans donner la réponse)"
  url: "https://mathcircles.org/"
  original_language: "en"
  local_copy: "sources/originals/namc/MTCircularSA2015.pdf"
---

## Statement

Voici une façon de retrouver les produits de deux nombres compris entre $5$ et $10$ sans connaître la fin de sa table de multiplication.

**Le codage.** Un poing fermé représente $5$. Chaque doigt levé sur cette main ajoute $1$. Ainsi une main avec deux doigts levés représente $7$, et une main avec trois doigts levés représente $8$.

**La recette.** Pour multiplier deux nombres compris entre $5$ et $10$ :

1. coder un nombre sur chaque main ;
2. compter $10$ pour chaque doigt **levé**, les deux mains ensemble ;
3. compter le nombre de doigts **repliés** de chaque main, et multiplier ces deux nombres l'un par l'autre ;
4. additionner les résultats des étapes 2 et 3.

**Un exemple.** Pour $7 \times 8$ : deux doigts levés sur la main droite, trois sur la main gauche. Cela fait $5$ doigts levés en tout, donc $50$. La main droite a $3$ doigts repliés, la main gauche en a $2$, et $3 \times 2 = 6$. Le produit est $50 + 6 = 56$. C'est bien $7 \times 8$.

1. Vérifier la recette sur $9 \times 7$, puis sur $9 \times 9$.
2. On remarque qu'on n'a jamais à multiplier deux nombres plus grands que $5$. Expliquer pourquoi la recette donne toujours le bon résultat, pour deux nombres $a$ et $b$ quelconques compris entre $5$ et $10$.

## Hints

1. Commencer par traduire le codage : si une main représente le nombre $a$, combien de doigts sont levés sur cette main ? Combien sont repliés ?
2. Une main a cinq doigts. Doigts levés plus doigts repliés, cela fait toujours $5$.
3. Écrire l'étape 2 et l'étape 3 comme des expressions en $a$ et $b$, puis additionner.
4. Il reste à développer un produit de la forme $(10 - a)(10 - b)$ et à réduire. Tout doit disparaître sauf $ab$.

## Solution

### Question 1 : deux vérifications

**$9 \times 7$.** Le $9$ se code avec $4$ doigts levés, le $7$ avec $2$ doigts levés. Cela fait $6$ doigts levés, donc $60$. Les doigts repliés sont $1$ d'un côté et $3$ de l'autre, et $1 \times 3 = 3$. Total : $60 + 3 = 63$. C'est bien $9 \times 7$.

**$9 \times 9$.** Quatre doigts levés sur chaque main, donc $8$ doigts levés et $80$. Un doigt replié de chaque côté, et $1 \times 1 = 1$. Total : $80 + 1 = 81$. C'est bien $9 \times 9$.

### Question 2 : pourquoi cela marche toujours

Prenons deux nombres $a$ et $b$ avec $5 \leqslant a \leqslant 10$ et $5 \leqslant b \leqslant 10$.

**Traduction du codage.** La main qui représente $a$ part de $5$ (poing fermé) et chaque doigt levé ajoute $1$. Elle porte donc
$$a - 5 \quad \text{doigts levés.}$$
Comme une main a cinq doigts, elle porte
$$5 - (a - 5) = 10 - a \quad \text{doigts repliés.}$$
De même pour l'autre main : $b - 5$ doigts levés et $10 - b$ doigts repliés.

**Étape 2.** Le nombre de doigts levés en tout vaut $(a - 5) + (b - 5)$, et on compte $10$ pour chacun :
$$10((a-5) + (b-5)) = 10a + 10b - 100.$$

**Étape 3.** Le produit des doigts repliés vaut
$$(10 - a)(10 - b) = 100 - 10b - 10a + ab.$$

**Étape 4.** On additionne les deux :
$$(10a + 10b - 100) + (100 - 10a - 10b + ab) = ab.$$

Tout se simplifie : les $10a$ s'annulent, les $10b$ s'annulent, les $100$ s'annulent, et il ne reste que $ab$.

La recette donne donc toujours exactement $a \times b$, quels que soient $a$ et $b$ entre $5$ et $10$.

**Pourquoi on ne multiplie jamais gros.** Le seul produit à calculer est $(10-a)(10-b)$, c'est-à-dire un produit de deux nombres compris entre $0$ et $5$. Connaître sa table jusqu'à $5$ suffit.

## Going further

1. Que donne la recette pour $5 \times 5$ ? Et pour $10 \times 10$ ? Vérifier que le calcul reste juste aux deux extrémités.
2. Un extraterrestre a huit doigts par main. Il décide qu'un poing fermé vaut $8$ et que chaque doigt levé ajoute $1$, ce qui lui permet de coder les nombres de $8$ à $16$. Quelle recette doit-il utiliser ? (Indication : reprendre le calcul avec $8$ à la place de $5$ et $16$ à la place de $10$.)
3. Et si l'on utilise aussi ses orteils ?
