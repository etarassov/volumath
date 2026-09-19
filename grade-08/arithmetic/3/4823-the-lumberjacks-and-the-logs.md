---
id: "4823"
title: "Les bûcherons et les troncs"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [proportionnalite, coups-de-scie, duree, travail]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Group A, Math Relays"
  reference: "Handout-192-208.pdf, exercice 27 (réponse dans Handout-193-208.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-192-208.pdf"
---

## Statement

Trois bûcherons mettent $3$ heures pour débiter $3$ troncs en $9$ morceaux au total.

Combien de temps mettront $2$ bûcherons pour débiter $6$ troncs en $24$ morceaux au total ?

Tous les bûcherons travaillent à la même allure, et chaque coup de scie prend le même temps.

## Hints

1. Attention au piège : ce qui prend du temps, ce n'est pas le nombre de morceaux, c'est le nombre de **coups de scie**.
2. Pour couper un tronc en $3$ morceaux, combien de coups de scie faut-il ? Essaie avec un dessin : une barre et des traits de coupe.
3. Calcule d'abord le nombre total de coups de scie dans chacune des deux situations.
4. Ensuite, trouve combien de temps un seul bûcheron met pour donner un coup de scie.

## Solution

**Le piège à éviter : compter les coups de scie, pas les morceaux.**

Pour couper un tronc en $3$ morceaux, il faut $2$ coups de scie (pas $3$). En général, pour obtenir $m$ morceaux à partir d'un tronc, il faut $m - 1$ coups de scie.

**Première situation.**

Les $3$ troncs donnent $9$ morceaux au total, soit $3$ morceaux par tronc. Chaque tronc demande donc $3 - 1 = 2$ coups de scie, et les trois troncs demandent
$$3 \times 2 = 6 \text{ coups de scie.}$$

Ces $6$ coups de scie sont donnés par $3$ bûcherons en $3$ heures. Chaque bûcheron donne donc $6 \div 3 = 2$ coups de scie en $3$ heures, c'est-à-dire

$$\text{un coup de scie prend } \frac{3}{2} = \text{1,5} \text{ heure à un bûcheron.}$$

**Deuxième situation.**

Les $6$ troncs donnent $24$ morceaux au total, soit $4$ morceaux par tronc. Chaque tronc demande donc $4 - 1 = 3$ coups de scie, et les six troncs demandent
$$6 \times 3 = 18 \text{ coups de scie.}$$

Ces $18$ coups de scie sont répartis entre $2$ bûcherons, soit $9$ coups de scie chacun. Comme un coup de scie prend $\text{1,5}$ heure :
$$9 \times \text{1,5} = \text{13,5} \text{ heures.}$$

$$\boxed{\text{Il leur faudra } \text{13,5} \text{ heures, c'est-à-dire } 13 \text{ h } 30 \text{ min.}}$$

**Vérification du bon sens.** Il y a trois fois plus de coups de scie qu'au départ ($18$ contre $6$) et une fois et demie moins de bûcherons ($2$ contre $3$). La durée est donc multipliée par $3 \times \dfrac{3}{2} = \text{4,5}$, et $3 \times \text{4,5} = \text{13,5}$ heures. Tout colle.

## Going further

1. Combien de temps mettraient $6$ bûcherons pour le même travail ($6$ troncs en $24$ morceaux) ?
2. Combien de bûcherons faudrait-il pour débiter $10$ troncs en $50$ morceaux en une seule journée de $8$ heures ? (La réponse doit être un nombre entier de bûcherons.)
3. Et si les troncs n'avaient pas tous la même longueur, le raisonnement tiendrait-il encore ? Quelle hypothèse cachée utilise-t-on ici ?
