---
id: "3609"
title: "Les six bons pour une glace"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [calendrier, restes, division-euclidienne, jours-de-la-semaine]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), X26 AMC 8, Number Theory"
  reference: "Handout-5143-5656.pdf, problème 5.2 (AMC 8 2019, problème 14)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5143-5656.pdf"
---

## Statement

Isabelle a reçu six bons pour une glace gratuite chez le glacier du quartier.

Pour les faire durer, elle décide d'en utiliser un tous les $10$ jours exactement, jusqu'à les avoir tous utilisés. Le premier bon est utilisé le jour $1$, le deuxième $10$ jours plus tard, et ainsi de suite.

Le glacier est fermé le dimanche. En entourant les six dates sur son calendrier, Isabelle s'aperçoit avec soulagement qu'aucune d'elles ne tombe un dimanche.

Quel jour de la semaine utilise-t-elle son premier bon ?

## Hints

1. Ce qui compte n'est pas la date, mais le jour de la semaine, donc le reste de la division par $7$.
2. Les six bons sont utilisés $0$, $10$, $20$, $30$, $40$ et $50$ jours après le premier. Quels sont les restes de ces nombres dans la division par $7$ ?
3. Tu obtiens six restes. Combien y en a-t-il de différents, et lequel manque à l'appel ?

## Solution

**Étape 1. Ne garder que le jour de la semaine.**

Le jour de la semaine se répète tous les $7$ jours. Avancer de $d$ jours revient donc à avancer de $r$ jours, où $r$ est le reste de $d$ dans la division par $7$.

**Étape 2. Calculer les six décalages.**

Les six bons sont utilisés respectivement $0$, $10$, $20$, $30$, $40$ et $50$ jours après le premier. Les restes dans la division par $7$ sont :

- $0 = 7 \times 0 + 0$, reste $0$ ;
- $10 = 7 \times 1 + 3$, reste $3$ ;
- $20 = 7 \times 2 + 6$, reste $6$ ;
- $30 = 7 \times 4 + 2$, reste $2$ ;
- $40 = 7 \times 5 + 5$, reste $5$ ;
- $50 = 7 \times 7 + 1$, reste $1$.

**Étape 3. Regarder ce qui manque.**

Les six restes obtenus sont $0$, $3$, $6$, $2$, $5$, $1$. Ils sont tous différents, et il n'en manque qu'un seul parmi les sept restes possibles : le reste $4$.

Autrement dit, les six glaces tombent sur six jours de la semaine différents, et le seul jour de la semaine qui n'est jamais atteint est celui situé $4$ jours après le jour du premier bon.

**Étape 4. Identifier ce jour.**

Puisque aucun bon ne tombe un dimanche, et que le seul jour évité est celui situé $4$ jours après le premier bon, c'est que

$$\text{dimanche} = \text{jour du premier bon} + 4 \text{ jours}$$

On remonte de $4$ jours à partir du dimanche : samedi, vendredi, jeudi, mercredi.

**Étape 5. Vérifier.**

Si le premier bon est utilisé un mercredi, les six jours sont :

mercredi (décalage $0$), samedi ($+3$), mardi ($+6$), vendredi ($+2$), lundi ($+5$), jeudi ($+1$).

Aucun dimanche : c'est bien cohérent.

**Réponse.** Isabelle utilise son premier bon un **mercredi**.

## Going further

Le point clé est que $10$ et $7$ n'ont pas de diviseur commun autre que $1$. Les multiples de $10$ parcourent alors tous les restes possibles modulo $7$ avant de se répéter, ce qui explique que les six décalages donnent six restes différents.

Si Isabelle avait choisi un bon tous les $14$ jours, tous les bons seraient tombés le même jour de la semaine et l'énoncé n'aurait rien permis de conclure.
