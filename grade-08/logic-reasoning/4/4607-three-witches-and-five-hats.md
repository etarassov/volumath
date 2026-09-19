---
id: "4607"
title: "Trois sorcières et cinq chapeaux"
grade: 8
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [chapeaux, information, raisonnement par l absurde, cas]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Beginners 2, Logic Puzzles: Wizards and Hats"
  reference: "Handout-2493-2192.pdf, problème 5 (réponse dans Handout-2550-2192.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2493-2192.pdf"
---

## Statement

L'école de sorcellerie possède cinq chapeaux : **trois jaunes et deux verts**. Tout le monde le
sait.

Alice, Bérénice et Chloé ferment les yeux. Le professeur cache deux chapeaux, puis pose l'un des
trois chapeaux restants sur la tête de chacune. Elles rouvrent les yeux : chacune voit les deux
autres chapeaux, mais jamais le sien.

Le professeur demande alors, à voix haute : « Qui connaît la couleur de son chapeau ? » Toutes
les trois répondent qu'elles ne le savent pas. Il repose la même question : toutes les trois
répondent encore qu'elles ne le savent pas. Il la repose une troisième fois.

Montrer que, cette fois, les trois sorcières connaissent la couleur de leur chapeau, et dire
quelle est cette couleur.

## Hints

1. Chaque « je ne sais pas » est une information pour les deux autres. C'est tout le problème :
   il faut faire parler les silences.
2. Dans quel cas une sorcière connaîtrait-elle sa couleur tout de suite, dès la première
   question ?
3. Le premier tour de « je ne sais pas » élimine une situation. Laquelle ? Qu'en déduit chacune
   sur ce qu'elle voit ?
4. Suppose qu'Alice porte un chapeau vert et cherche ce que Bérénice aurait dit à la deuxième
   question. Compare avec ce qui s'est réellement passé.

## Solution

**Premier tour : que signifie « je ne sais pas » ?**

Une sorcière connaîtrait sa couleur dès la première question dans un seul cas : si elle voyait
**deux chapeaux verts**. Comme il n'y a que deux chapeaux verts en tout, le sien serait forcément
jaune.

Les trois répondent « je ne sais pas ». Donc **aucune ne voit deux chapeaux verts**. Autrement
dit, il y a au plus un chapeau vert sur les trois têtes.

Et cela, après le premier tour, les trois le savent.

**Deuxième tour : que signifie « je ne sais pas » cette fois ?**

Plaçons-nous dans la tête d'Alice et supposons un instant qu'**elle porte un chapeau vert**.

Regardons alors ce que fait Bérénice. Bérénice voit Alice en vert, et Chloé. D'après le premier
tour, Bérénice sait qu'il y a au plus un chapeau vert sur les trois têtes. Or elle en voit déjà
un, celui d'Alice. Donc le sien n'est pas vert : Bérénice saurait, dès la deuxième question,
qu'elle porte un chapeau jaune.

Mais à la deuxième question, Bérénice a répondu « je ne sais pas ». L'hypothèse était donc
fausse : **Alice ne porte pas de chapeau vert**, elle porte un chapeau jaune.

**Troisième tour.**

Ce raisonnement, Alice peut le faire. Mais Bérénice peut faire exactement le même en échangeant
les rôles, et Chloé aussi : rien ne distingue les trois sorcières dans ce qui s'est passé.

À la troisième question, les trois répondent donc : « mon chapeau est **jaune** ».

**Conclusion.** Les trois sorcières portent chacune un chapeau jaune, et chacune l'a découvert
sans jamais voir le sien, uniquement en écoutant les réponses des autres.

## Going further

Vérifie que le professeur ne pouvait pas obtenir deux tours de « je ne sais pas » avec une autre
répartition des chapeaux :

- s'il y a deux verts sur les têtes, celle qui porte le jaune répond dès la première question ;
- s'il y a exactement un vert, les deux sorcières en jaune répondent dès la deuxième question.

Trois « je ne sais pas » suivis de trois « je ne sais pas » signalent donc, à eux seuls, que les
trois chapeaux sont jaunes.
