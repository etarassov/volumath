---
id: "3817"
title: "Trois peintres et une seule salle"
grade: 9
theme: algebra
difficulty: 3
duration_min: 25
tags: [travail, debits, fractions, systeme]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 1, Problem Solving: Think Outside the Box"
  reference: "Handout-4165-3921.pdf, problème 12"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4165-3921.pdf"
---

## Statement

Il faut repeindre une salle. Chacun des trois peintres travaille toujours au même rythme, et on sait que :

- Alice et Bruno ensemble mettent $2$ heures ;
- Alice et Charles ensemble mettent $3$ heures ;
- Bruno et Charles ensemble mettent $4$ heures.

Combien de temps leur faut-il s'ils travaillent tous les trois ensemble ?

## Hints

1. Ce ne sont pas les durées qui s'additionnent, mais les **quantités de travail faites en une heure**. Pour chaque peintre, demande-toi quelle fraction de la salle il peint en une heure.
2. Si Alice et Bruno mettent $2$ heures à eux deux, quelle fraction de la salle peignent-ils en une heure ?
3. Tu obtiens trois égalités. Additionne-les toutes les trois : que représente la somme obtenue ?

## Solution

**L'idée : raisonner en « part de salle peinte en une heure », car ces parts s'additionnent.**

Notons $a$, $b$ et $c$ la fraction de la salle que peignent respectivement Alice, Bruno et Charles en une heure.

**Étape 1. On traduit les trois informations.**

Alice et Bruno mettent $2$ heures pour toute la salle, donc en une heure ils en peignent la moitié :

$$a + b = \frac{1}{2}.$$

De même :

$$a + c = \frac{1}{3}, \qquad b + c = \frac{1}{4}.$$

**Étape 2. On additionne les trois égalités.**

À gauche, chaque lettre apparaît exactement deux fois :

$$2a + 2b + 2c = \frac{1}{2} + \frac{1}{3} + \frac{1}{4}.$$

On met au même dénominateur $12$ :

$$\frac{1}{2} + \frac{1}{3} + \frac{1}{4} = \frac{6}{12} + \frac{4}{12} + \frac{3}{12} = \frac{13}{12}.$$

Donc

$$2(a + b + c) = \frac{13}{12}, \qquad \text{puis} \qquad a + b + c = \frac{13}{24}.$$

**Étape 3. On revient à une durée.**

À eux trois, ils peignent $\dfrac{13}{24}$ de la salle en une heure. Le temps nécessaire pour peindre la salle entière est l'inverse :

$$T = \frac{24}{13} \text{ heure}.$$

En minutes :

$$\frac{24}{13} \times 60 = \frac{1440}{13} \approx \text{110,8} \text{ min},$$

c'est-à-dire environ $1$ h $51$ min.

**Conclusion.** À trois, ils repeignent la salle en $\dfrac{24}{13}$ d'heure, soit environ $1$ heure et $51$ minutes.

## Going further

1. Combien de temps Charles mettrait-il tout seul ? (Utilise $c = (a+b+c) - (a+b)$.)
2. Même question pour Alice et pour Bruno. Vérifie que le plus rapide des trois est bien celui auquel tu t'attendais.
3. Pourquoi le résultat à trois est-il forcément inférieur à $2$ heures, sans aucun calcul ?
