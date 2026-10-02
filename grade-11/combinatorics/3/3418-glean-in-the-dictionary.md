---
id: "3418"
title: "GLEAN dans le dictionnaire"
grade: 11
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [denombrement, permutations, ordre-alphabetique, factorielle]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 10/12 Training, Week 4: Combinatorics"
  reference: "Handout-3716-3316.pdf, section 1.3, problème 2 (réponse dans Handout-3718-3316.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3716-3316.pdf"
---

## Statement

On forme tous les mots de cinq lettres obtenus en permutant les cinq lettres du mot **ANGLE** (ces « mots » n'ont pas besoin d'avoir un sens), puis on les range dans l'ordre alphabétique.

Quelle place occupe le mot **GLEAN** dans cette liste ?

## Hints

1. Les cinq lettres sont toutes différentes. Dans l'ordre alphabétique, elles se rangent ainsi : A, E, G, L, N.
2. Plutôt que de dresser la liste, compte combien de mots viennent **avant** GLEAN.
3. Commence par les mots qui débutent par une lettre strictement avant G. Combien y en a-t-il pour chaque première lettre ?
4. Puis parmi les mots commençant par G, ceux dont la deuxième lettre vient avant L. Et ainsi de suite, lettre par lettre.
5. À la fin, n'oublie pas d'ajouter $1$ : le mot GLEAN vient juste après tous ceux que tu as comptés.

## Solution

**L'idée : ne pas écrire la liste, mais compter les mots qui précèdent GLEAN, position par position.**

Les cinq lettres A, N, G, L, E sont deux à deux différentes. Il y a donc $5! = 120$ mots en tout. Rangées par ordre alphabétique, les lettres sont

$$\text{A} < \text{E} < \text{G} < \text{L} < \text{N}.$$

Comptons les mots qui viennent strictement avant GLEAN.

**Première lettre.** Un mot commençant par A ou par E vient avant GLEAN, puisque A et E précèdent G. Pour chaque première lettre fixée, les quatre lettres restantes se rangent de $4! = 24$ façons. Cela fait

$$2 \times 24 = 48 \text{ mots.}$$

**Deuxième lettre.** Il reste à examiner les mots commençant par G. Leur deuxième lettre est prise parmi A, E, L, N. Si elle vaut A ou E, le mot vient avant GLEAN (car A et E précèdent L). Pour chacun de ces deux choix, les trois dernières lettres se rangent de $3! = 6$ façons :

$$2 \times 6 = 12 \text{ mots.}$$

**Troisième lettre.** Il reste les mots commençant par GL. La troisième lettre est prise parmi A, E, N. Si elle vaut A, le mot vient avant GLEAN (car A précède E). Les deux dernières lettres se rangent de $2! = 2$ façons :

$$1 \times 2 = 2 \text{ mots.}$$

**Quatrième lettre.** Il reste les mots commençant par GLE. Les deux lettres restantes sont A et N, ce qui donne GLEAN et GLENA. Aucune quatrième lettre ne vient avant A : on s'arrête ici.

**Bilan.**

$$48 + 12 + 2 = 62 \text{ mots viennent avant GLEAN.}$$

Le mot GLEAN occupe donc la place

$$62 + 1 = 63.$$

**Conclusion : GLEAN est le $63^\text{e}$ mot de la liste.**

## Going further

Ce comptage est exactement la façon dont on écrit un nombre en « base factorielle ». Les chiffres obtenus ici sont $2$, $2$, $1$, $0$, $0$, et la place vaut

$$2 \times 4! + 2 \times 3! + 1 \times 2! + 0 \times 1! + 0 \times 0! + 1 = 48 + 12 + 2 + 1 = 63.$$

Le même procédé, en sens inverse, permet de répondre à la question « quel est le $100^\text{e}$ mot de la liste ? » sans écrire les $99$ premiers.
