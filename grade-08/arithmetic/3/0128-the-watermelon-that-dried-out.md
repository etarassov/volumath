---
id: "0128"
title: "La pastèque qui a séché"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [pourcentages, proportions, invariant]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Ast2017.pdf, листок 12, задача 6"
  url: "https://mmmf.msu.ru/for_schools/Ast2017.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017.pdf"
---

## Statement

Une pastèque de $20$ kg est composée à $99\,\%$ d'eau.

On l'oublie au soleil. Elle sèche un peu, et l'eau ne représente plus que $98\,\%$ de sa masse.

Combien pèse la pastèque maintenant ?

## Hints

1. La réponse n'est pas $\text{19,8}$ kg. Pendant que la pastèque sèche, la masse d'eau change et la masse totale change aussi. Y a-t-il quelque chose qui ne change pas ?
2. Sépare la pastèque en deux parties : l'eau, et tout le reste (la chair sèche, les graines, l'écorce). Quand la pastèque sèche, seule de l'eau s'en va. Combien pèse « tout le reste » au départ ?
3. À la fin, l'eau représente $98\,\%$ de la pastèque. Quel pourcentage de la pastèque « tout le reste » représente-t-il alors ? Et tu connais déjà sa masse en kilogrammes.

## Solution

**L'idée : suivre ce qui ne change pas.** Ici, ce n'est pas l'eau, c'est la matière sèche.

**Étape 1. La matière sèche au départ.**

Au départ, l'eau représente $99\,\%$ de la pastèque. Tout le reste, que l'on appellera la matière sèche, représente donc

$$100\,\% - 99\,\% = 1\,\%$$

de la pastèque, c'est-à-dire

$$20 \times \frac{1}{100} = \text{0,2} \text{ kg}.$$

**Étape 2. Ce qui ne change pas.**

En séchant, la pastèque perd de l'eau, et seulement de l'eau. La matière sèche, elle, reste la même : elle pèse toujours $\text{0,2}$ kg à la fin.

**Étape 3. Le nouveau pourcentage de matière sèche.**

À la fin, l'eau représente $98\,\%$ de la pastèque. La matière sèche représente donc

$$100\,\% - 98\,\% = 2\,\%$$

de la nouvelle masse.

**Étape 4. Retrouver la masse totale.**

On cherche un nombre dont $2\,\%$ valent $\text{0,2}$ kg. Si $2\,\%$ de la masse valent $\text{0,2}$ kg, alors $1\,\%$ vaut $\text{0,1}$ kg, et $100\,\%$ valent

$$\text{0,1} \times 100 = 10 \text{ kg}.$$

On peut aussi écrire directement, en appelant $m$ la nouvelle masse :

$$m \times \frac{2}{100} = \text{0,2} \qquad \text{donc} \qquad m = \frac{\text{0,2}}{\text{0,02}} = 10.$$

**Vérification.**

Une pastèque de $10$ kg contenant $\text{0,2}$ kg de matière sèche contient $\text{9,8}$ kg d'eau, et

$$\frac{\text{9,8}}{10} = \text{0,98} = 98\,\%.$$

C'est bien ce que l'on voulait.

**Conclusion.**

La pastèque pèse maintenant $10$ kg : elle a perdu la moitié de sa masse, c'est-à-dire $10$ kg d'eau, alors que le pourcentage d'eau n'a baissé que de $1$ point. C'est surprenant, mais c'est parce que le $1\,\%$ de matière sèche, lui, a doublé en proportion : il est passé de $1\,\%$ à $2\,\%$.

## Going further

1. Pourquoi la réponse « elle pèse $\text{19,8}$ kg », qui vient tout de suite à l'esprit, est-elle fausse ?
2. Combien d'eau la pastèque de départ doit-elle perdre pour ne plus contenir que $95\,\%$ d'eau ?
3. Un producteur achète $100$ kg de champignons frais contenant $90\,\%$ d'eau. Après séchage, ils n'en contiennent plus que $80\,\%$. Combien pèsent-ils ?
