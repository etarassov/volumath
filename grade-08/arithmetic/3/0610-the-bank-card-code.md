---
id: "0610"
title: "Le code de la carte bancaire"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [criteres de divisibilite, chiffres, recherche exhaustive]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Algèbre + Problèmes issus des stages Animath »"
  reference: "Algebre.pdf, exercice 41, d'après une préparation aux olympiades"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Algebre.pdf"
---

## Statement

Le code de ma carte bancaire comporte $4$ chiffres, tous impairs et tous différents. Le
nombre formé par ces quatre chiffres est multiple de $5$, de $7$ et de $9$. Quel est ce
code ?

## Hints

1. Commence par le chiffre des unités. Un multiple de $5$ se termine par $0$ ou par $5$ : lequel des deux est possible ici ?
2. Les quatre chiffres sont impairs, tous différents, et le chiffre $5$ en fait partie. Il n'y a donc que quatre chiffres candidats pour les trois autres places : $1$, $3$, $7$ et $9$. Combien de choix cela fait-il ?
3. Le critère de divisibilité par $9$ ne regarde que la somme des chiffres, pas leur ordre. Il élimine presque tout d'un coup.
4. Il ne restera que six nombres à tester pour la divisibilité par $7$.

## Solution

**Le chiffre des unités.** Le code est un multiple de $5$, donc il se termine par $0$ ou par
$5$. Comme tous les chiffres sont impairs, ce n'est pas $0$ : **le code se termine par 5**.

**Quels chiffres utiliser.** Les chiffres impairs sont $1$, $3$, $5$, $7$, $9$. Le $5$ est
déjà pris par les unités, et les chiffres sont tous différents : les trois autres chiffres
sont donc trois chiffres distincts choisis parmi $1$, $3$, $7$, $9$.

**Le critère de divisibilité par 9.** Un nombre est multiple de $9$ exactement quand la
somme de ses chiffres l'est. La somme vaut ici $5$ plus la somme des trois chiffres choisis.
Examinons les quatre choix possibles :

| chiffres choisis | somme totale | multiple de 9 ? |
|---|---|---|
| $1, 3, 7$ | $5 + 11 = 16$ | non |
| $1, 3, 9$ | $5 + 13 = 18$ | **oui** |
| $1, 7, 9$ | $5 + 17 = 22$ | non |
| $3, 7, 9$ | $5 + 19 = 24$ | non |

Les chiffres du code sont donc $1$, $3$, $9$ et $5$, avec le $5$ à la fin.

**Le critère de divisibilité par 7.** Il reste six ordres possibles pour $1$, $3$, $9$ :

$$1395, \quad 1935, \quad 3195, \quad 3915, \quad 9135, \quad 9315.$$

On les divise par $7$ : $1395 = 7 \times 199 + 2$, $1935 = 7 \times 276 + 3$,
$3195 = 7 \times 456 + 3$, $3915 = 7 \times 559 + 2$, $9315 = 7 \times 1330 + 5$, et enfin

$$9135 = 7 \times 1305.$$

Un seul convient.

**Réponse : le code est 9135.**

**Vérification.** $9135 = 5 \times 1827$, $9135 = 7 \times 1305$, $9135 = 9 \times 1015$.
Ses chiffres $9$, $1$, $3$, $5$ sont bien tous impairs et tous différents.
