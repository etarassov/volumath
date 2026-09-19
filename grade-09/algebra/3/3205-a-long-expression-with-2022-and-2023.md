---
id: "3205"
title: "Une longue expression avec 2022 et 2023"
grade: 9
theme: algebra
difficulty: 3
duration_min: 15
tags: [identites remarquables, difference de carres, factorisation, calcul mental]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Math Competitions Training, Algebra review"
  reference: "Handout-4789-4966.pdf, section 2.2, exercice 7 (réponse dans Handout-4792-4966.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4789-4966.pdf"
---

## Statement

Calculer, sans calculatrice,

$$2022^3 - 2022^2 \times 2023 - 2022 \times 2023^2 + 2023^3 .$$

## Hints

1. Ne développe rien. Pose $a = 2022$ et $b = 2023$ et regarde l'expression $a^3 - a^2 b - a b^2 + b^3$.
2. Quatre termes, et on veut factoriser : essaie de les regrouper **deux par deux**. Attention, le regroupement le plus naturel (1er avec 2e, 3e avec 4e) n'est pas le bon ici.
3. Regroupe le 1er avec le 3e, et le 2e avec le 4e. Dans chaque paquet, tu peux mettre $a$ ou $b$ en facteur, et il reste une différence de deux carrés.
4. À la fin, $b - a = 1$. Souviens-toi que $1$ élevé à n'importe quelle puissance vaut $1$.

## Solution

Posons $a = 2022$ et $b = 2023$, de sorte que $b - a = 1$. L'expression s'écrit

$$E = a^3 - a^2 b - a b^2 + b^3 .$$

**Le regroupement qui marche.** On met ensemble le premier et le troisième terme, puis le deuxième et le quatrième :

$$E = \left( a^3 - a b^2 \right) - \left( a^2 b - b^3 \right).$$

Dans le premier paquet on met $a$ en facteur, dans le second on met $b$ :

$$E = a\left( a^2 - b^2 \right) - b\left( a^2 - b^2 \right).$$

Le facteur $a^2 - b^2$ est commun aux deux, donc

$$E = (a - b)\left( a^2 - b^2 \right).$$

**On factorise encore.** La différence de deux carrés se factorise :

$$a^2 - b^2 = (a-b)(a+b),$$

donc

$$E = (a-b)^2 (a+b).$$

**On remplace.** Ici $a - b = 2022 - 2023 = -1$, donc $(a-b)^2 = 1$, et $a + b = 2022 + 2023 = 4045$.

$$E = 1 \times 4045 = 4045 .$$

**Conclusion.**

$$2022^3 - 2022^2 \times 2023 - 2022 \times 2023^2 + 2023^3 = 4045 .$$

Remarquons au passage la forme générale obtenue : pour tous nombres $a$ et $b$,

$$a^3 - a^2 b - a b^2 + b^3 = (a-b)^2 (a+b).$$

## Going further

1. Vérifier la formule $a^3 - a^2 b - a b^2 + b^3 = (a-b)^2(a+b)$ sur $a = 3$ et $b = 1$.
2. Calculer de la même façon $100^3 - 100^2 \times 101 - 100 \times 101^2 + 101^3$.
3. Que vaut $a^3 - a^2 b - a b^2 + b^3$ quand $a = b$ ? Et quand $a = -b$ ? Retrouver ces deux réponses directement sur la forme factorisée.
