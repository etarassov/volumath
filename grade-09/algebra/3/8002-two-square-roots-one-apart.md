---
id: "8002"
title: "Deux racines carrées qui diffèrent de 1"
grade: 9
theme: algebra
difficulty: 3
duration_min: 15
tags: [racine carree, equation, identites remarquables, verification]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, Coupe Animath 2017, éliminatoires collégiens, exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Déterminer le nombre $x$ tel que

$$\sqrt{x + 77} = \sqrt{x + 56} + 1.$$

## Hints

1. Une racine carrée est difficile à manipuler. Comment peut-on s'en débarrasser ?
2. Élève les deux membres au carré. À droite, tu as le carré d'une somme : utilise
   $(a + b)^2 = a^2 + 2ab + b^2$.
3. Après simplification, il ne reste plus qu'une seule racine carrée. Isole-la, puis élève à
   nouveau au carré.

## Solution

**On élève au carré.** Les deux membres de l'égalité sont positifs, donc l'égalité équivaut à
l'égalité de leurs carrés. Posons $u = \sqrt{x + 56}$, de sorte que $u^2 = x + 56$. L'égalité
s'écrit $\sqrt{x + 77} = u + 1$, et en élevant au carré :

$$x + 77 = (u + 1)^2 = u^2 + 2u + 1 = (x + 56) + 2u + 1.$$

**On simplifie.** Le terme $x$ apparaît des deux côtés et disparaît :

$$77 = 56 + 2u + 1, \qquad \text{donc} \qquad 2u = 20, \qquad \text{donc} \qquad u = 10.$$

**On revient à $x$.** Comme $u = \sqrt{x + 56} = 10$, on élève une dernière fois au carré :

$$x + 56 = 100, \qquad \text{donc} \qquad x = 44.$$

**Vérification.** Pour $x = 44$ :

$$\sqrt{44 + 77} = \sqrt{121} = 11 \qquad \text{et} \qquad \sqrt{44 + 56} + 1 = \sqrt{100} + 1 = 10 + 1 = 11.$$

Les deux membres valent bien la même chose.

**La solution est $x = 44$.**

## Going further

Élever au carré peut créer de fausses solutions : l'égalité $a = b$ entraîne $a^2 = b^2$, mais
$a^2 = b^2$ n'entraîne $a = b$ que si $a$ et $b$ sont de même signe. C'est pour cela qu'une
vérification à la fin n'est pas un luxe, c'est une étape du raisonnement.
