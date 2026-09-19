---
id: "0752"
title: "Deux sommes suffisent"
grade: 8
theme: algebra
difficulty: 1
duration_min: 5
tags: [calcul-litteral, sommes, entiers]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes divers », niveau collège - débutants, 9 février 2024"
  reference: "CalculLitteral.pdf, exercice 7"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/CalculLitteral.pdf"
---

## Statement

Soient $a$, $b$ et $c$ trois entiers naturels tels que

$$a + b = 40 \qquad \text{et} \qquad b + c = 60.$$

Calcule $2a + 4b + 2c$.

## Hints

1. Tu ne peux pas trouver $a$, $b$ et $c$ séparément : il y a trois inconnues et seulement deux renseignements. Ce n'est pas grave, la question ne les demande pas.
2. Essaie de reconnaître $a+b$ et $b+c$ à l'intérieur de $2a + 4b + 2c$. Combien y a-t-il de $b$ en tout ?

## Solution

**L'idée : ne pas chercher $a$, $b$ et $c$.** On ne peut pas les trouver, et on n'en a pas besoin. Il suffit de faire apparaître les deux sommes que l'on connaît.

On coupe les $4b$ en deux paquets de $2b$ :

$$2a + 4b + 2c = (2a + 2b) + (2b + 2c) = 2(a+b) + 2(b+c).$$

Il ne reste qu'à remplacer :

$$2 \times 40 + 2 \times 60 = 80 + 120 = 200.$$

**Vérification.** Prenons par exemple $a = 10$, $b = 30$, $c = 30$ : on a bien $a+b = 40$ et $b+c = 60$, et
$2 \times 10 + 4 \times 30 + 2 \times 30 = 20 + 120 + 60 = 200$.
Avec $a = 0$, $b = 40$, $c = 20$ : $0 + 160 + 40 = 200$ également. Le résultat ne dépend pas du choix, c'est bien ce que dit le calcul avec les lettres.

**Réponse.** $2a + 4b + 2c = 200$.
