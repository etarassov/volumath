---
id: "5118"
title: "Le tour du numéro de téléphone"
grade: 8
theme: algebra
difficulty: 2
duration_min: 20
tags: [calcul-litteral, developpement, tour-de-magie, numeration]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Place Value Problems », Harold Reiter"
  reference: "HReiterPlaceValueProblems.pdf, problème 5"
  url: "https://mathcircles.org/activity/place-value-problems/"
  original_language: "en"
  local_copy: "sources/originals/namc/HReiterPlaceValueProblems.pdf"
---

## Statement

Prends une calculatrice, et choisis en secret :

- un nombre de trois chiffres, appelons-le $p$ ;
- un nombre de quatre chiffres, appelons-le $q$.

Puis fais exactement ceci :

1. tape $p$ ;
2. multiplie par $80$ ;
3. ajoute $1$ ;
4. multiplie par $250$ ;
5. ajoute $q$ ;
6. ajoute $q$ une deuxième fois ;
7. retranche $250$ ;
8. divise par $2$.

Regarde le résultat : c'est le nombre de sept chiffres obtenu en écrivant $p$, puis $q$ à la suite.

Par exemple, avec $p = 612$ et $q = 3456$, la calculatrice affiche $6\,123\,456$.

**Explique pourquoi cela marche.**

## Hints

1. N'essaie pas de suivre les étapes avec des nombres : suis-les avec les lettres $p$ et $q$, et écris l'expression obtenue.
2. Après l'étape 4, tu dois avoir $(80p + 1) \times 250$. Développe.
3. À la fin, tu obtiens une expression que l'on peut simplifier complètement. Qu'est-ce qui disparaît ?
4. Que vaut $10\,000\,p + q$ quand $p$ a trois chiffres et $q$ en a quatre ?

## Solution

**Étape 1. Suivre les instructions avec des lettres.**

| après l'étape | expression |
|---|---|
| 1 | $p$ |
| 2 | $80p$ |
| 3 | $80p + 1$ |
| 4 | $(80p + 1) \times 250$ |
| 5 et 6 | $(80p + 1) \times 250 + 2q$ |
| 7 | $(80p + 1) \times 250 + 2q - 250$ |
| 8 | $\dfrac{(80p + 1) \times 250 + 2q - 250}{2}$ |

**Étape 2. Développer.**

$$(80p + 1) \times 250 = 20\,000\,p + 250$$

Le $+250$ et le $-250$ de l'étape 7 se détruisent :

$$(80p + 1) \times 250 + 2q - 250 = 20\,000\,p + 250 + 2q - 250 = 20\,000\,p + 2q$$

**Étape 3. Diviser par 2.**

$$\frac{20\,000\,p + 2q}{2} = 10\,000\,p + q$$

**Étape 4. Lire le résultat.**

Multiplier $p$ par $10\,000$, c'est le décaler de quatre rangs vers la gauche, ce qui libère exactement quatre positions à droite. Comme $q$ a quatre chiffres, il vient se loger dans ces quatre positions sans déborder.

Donc $10\,000\,p + q$ est bien le nombre obtenu en écrivant les trois chiffres de $p$, puis les quatre chiffres de $q$.

Avec $p = 612$ et $q = 3456$ :

$$10\,000 \times 612 + 3456 = 6\,120\,000 + 3456 = 6\,123\,456$$

**Conclusion.** Le tour marche parce que les étapes 2 à 4 fabriquent le facteur $20\,000 = 2 \times 10\,000$, que l'étape 8 ramène à $10\,000$, et parce que le $+1$ de l'étape 3 n'est là que pour être annulé par le $-250$ de l'étape 7. C'est un habillage : il détourne l'attention pendant qu'on construit le décalage de quatre rangs.

## Going further

On peut inventer son propre tour sur ce modèle. Pour coller un nombre $q$ de trois chiffres derrière un nombre $p$ de deux chiffres, il faut arriver à $1000\,p + q$, donc fabriquer $2000\,p + 2q$ avant la division finale par $2$. Par exemple : multiplier $p$ par $400$, ajouter $3$, multiplier par $5$, ajouter $q$ deux fois, retrancher $15$, diviser par $2$.

À toi de vérifier que cela marche, et de repérer ce qui joue le rôle du « faux » $+1$.
