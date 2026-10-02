---
id: "7704"
title: "Des paires dont les sommes sont premières"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [nombres-premiers, paires, somme, comptage]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, Coupe Animath du 3 juin 2014"
  reference: "stage_ete_2014.pdf, « Coupe Animath et évaluation initiale », énoncé commun collège et lycée, exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

1. Peut-on ranger les dix nombres $1, 2, 3, \ldots, 10$ en cinq paires, de sorte que les cinq sommes obtenues soient cinq nombres premiers **tous différents** ?
2. Même question avec les vingt nombres $1, 2, 3, \ldots, 20$ rangés en dix paires : peut-on obtenir dix nombres premiers tous différents ?

*Ranger en paires veut dire que chaque nombre est utilisé exactement une fois.*

## Hints

1. Pour la première question, cherche à tâtons. Commence par les nombres qui sont difficiles à placer.
2. Pour la seconde question, la réponse est non. Au lieu d'essayer des rangements, compte.
3. Additionne les dix sommes. Que vaut ce total, quel que soit le rangement choisi ?
4. Fais maintenant la liste de **tous** les nombres premiers qui peuvent apparaître comme somme de deux nombres pris parmi $1, \ldots, 20$. Combien font-ils en tout ?

## Solution

**1. Oui.** Voici un rangement qui convient :

$$1 + 4 = 5, \qquad 2 + 5 = 7, \qquad 3 + 8 = 11, \qquad 6 + 7 = 13, \qquad 9 + 10 = 19 .$$

Les dix nombres $1$ à $10$ sont bien tous utilisés une fois, et les cinq sommes $5, 7, 11, 13, 19$ sont cinq nombres premiers différents.

**2. Non, c'est impossible.** L'idée est de ne pas chercher de rangement, mais de comparer deux totaux.

**Le total imposé.** Quel que soit le rangement en dix paires, chacun des nombres $1, 2, \ldots, 20$ apparaît dans exactement une paire. Donc la somme des dix sommes vaut toujours

$$1 + 2 + \cdots + 20 = \frac{20 \times 21}{2} = 210 .$$

**Le total disponible.** Une somme de deux nombres distincts pris parmi $1, \ldots, 20$ est au moins $1 + 2 = 3$ et au plus $19 + 20 = 39$. Les nombres premiers compris entre $3$ et $39$ sont

$$3, \; 5, \; 7, \; 11, \; 13, \; 17, \; 19, \; 23, \; 29, \; 31, \; 37 .$$

Il y en a onze, et leur somme vaut

$$3 + 5 + 7 + 11 + 13 + 17 + 19 + 23 + 29 + 31 + 37 = 195 .$$

**On compare.** Nos dix sommes sont dix nombres premiers différents choisis dans cette liste de onze. Leur total est donc au plus $195$, et même au plus $195 - 3 = 192$, puisqu'il faut en laisser un de côté.

Or ce total devrait valoir $210$. Comme $192 < 210$, un tel rangement ne peut pas exister.

**Conclusion : c'est possible avec $1, \ldots, 10$, et impossible avec $1, \ldots, 20$.**

## Going further

L'argument ne dit pas seulement « non » : il dit **de combien** on rate. Il manque au moins $210 - 192 = 18$. Autrement dit, même en s'autorisant à répéter un nombre premier, on n'y arriverait pas facilement : les sommes disponibles sont trop petites par rapport aux nombres qu'il faut caser.
