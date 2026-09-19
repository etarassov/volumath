---
id: "0859"
title: "Le double, puis quinze ans de moins"
grade: 8
theme: algebra
difficulty: 2
duration_min: 15
tags: [mise en equation, ages, inconnue]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Calcul », niveau collège - débutants, 16 avril 2024"
  reference: "Nombres.Introduction.pdf, exercice 19, section « Équations »"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Nombres.Introduction.pdf"
---

## Statement

La somme des âges de trois personnes fait $85$ ans.

La deuxième a le double de l'âge de la première, et la troisième a quinze ans de moins que la deuxième.

Trouve l'âge de chacune.

## Hints

1. Les trois âges sont liés entre eux : si tu en connais un, tu connais les deux autres. Lequel vaut-il mieux choisir comme inconnue ?
2. Prends pour inconnue l'âge de la **première** personne, appelle-le $x$. Écris alors l'âge de la deuxième en fonction de $x$.
3. L'âge de la troisième s'obtient à partir de celui de la deuxième, pas de celui de la première. Écris-le aussi en fonction de $x$.
4. Additionne les trois expressions, réduis, et résous l'équation obtenue.

## Solution

**Mise en équation.** Appelons $x$ l'âge de la première personne. Alors :

- la deuxième a le double de cet âge, soit $2x$ ;
- la troisième a quinze ans de moins que la deuxième, soit $2x - 15$.

La somme des trois âges vaut $85$ :

$$x + 2x + (2x - 15) = 85.$$

**Résolution.** On réduit le membre de gauche :

$$5x - 15 = 85.$$

On ajoute $15$ des deux côtés :

$$5x = 100,$$

puis on divise par $5$ :

$$x = 20.$$

**Les trois âges.**

- Première personne : $20$ ans.
- Deuxième personne : $2 \times 20 = 40$ ans.
- Troisième personne : $40 - 15 = 25$ ans.

**Vérification.** $20 + 40 + 25 = 85$ ans. La deuxième a bien le double de la première
($40 = 2 \times 20$) et la troisième a bien quinze ans de moins que la deuxième ($25 = 40 - 15$).

**Conclusion.** Les trois personnes ont $\mathbf{20}$ ans, $\mathbf{40}$ ans et $\mathbf{25}$ ans.

## Going further

1. Même énoncé, mais la troisième a quinze ans de moins que la **première**. Quels sont alors les trois âges ? (Réponse : $25$, $50$ et $10$ ans.)
2. Reprends l'énoncé d'origine en prenant cette fois comme inconnue l'âge de la deuxième personne. Tu dois retrouver les mêmes âges : le choix de l'inconnue change les calculs, pas le résultat.
