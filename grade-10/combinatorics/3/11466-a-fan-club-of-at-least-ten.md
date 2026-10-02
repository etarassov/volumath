---
id: "11466"
title: "Un fan club d'au moins 10 élèves"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [double-comptage, tiroirs, denombrement, absurde, demonstration]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 4 (combinatoire)"
  reference: "2025-03_Sujet-envoi-4-2024-2025.pdf, Exercices Juniors, exercice 5 ; corrigé 2025-05_Corrige-envoi-4-2024-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/03/Sujet-envoi-4-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-03_Sujet-envoi-4-2024-2025.pdf"
---

## Statement

Une classe compte $24$ élèves. Chaque élève a un **fan club**, formé de certains autres élèves de la
classe (un élève ne fait pas partie de son propre fan club).

On sait que, si l'on prend n'importe quel groupe de $3$ élèves de la classe, il existe un élève dont le
fan club contient ces $3$ élèves à la fois.

Montrer qu'un élève au moins a un fan club d'au moins $10$ élèves.

## Hints

1. Combien y a-t-il de groupes de $3$ élèves dans la classe ? Compte d'abord les listes ordonnées de
   trois élèves différents, puis divise.
2. Pour chaque groupe de $3$ élèves, choisis un élève dont le fan club contient le groupe. Appelle-le
   « l'idole » du groupe. Combien de groupes un même élève peut-il avoir comme idole au maximum ?
3. Raisonne par l'absurde : si tous les fan clubs ont au plus $9$ élèves, combien de groupes de $3$ un
   même fan club peut-il contenir ? Compare avec le nombre total de groupes.

## Solution

**Compter des groupes de 3.** Dans un ensemble de $m$ personnes, combien y a-t-il de groupes de $3$
personnes, sans tenir compte de l'ordre ?

On choisit d'abord une première personne ($m$ choix), puis une deuxième ($m - 1$ choix), puis une
troisième ($m - 2$ choix) : cela fait $m(m-1)(m-2)$ listes ordonnées. Chaque groupe de $3$ apparaît dans
$3 \times 2 \times 1 = 6$ de ces listes, une par ordre possible. Il y a donc

$$\frac{m(m-1)(m-2)}{6} \ \text{groupes de } 3 .$$

Pour $m = 24$, cela donne $\frac{24 \times 23 \times 22}{6} = 2024$ groupes. Pour $m = 9$, cela donne
$\frac{9 \times 8 \times 7}{6} = 84$ groupes.

**On raisonne par l'absurde.** Supposons que chaque fan club compte au plus $9$ élèves.

**Les idoles.** Pour chacun des $2024$ groupes de $3$ élèves, on sait qu'un élève a un fan club qui
contient ce groupe. On choisit un tel élève et on l'appelle l'**idole** du groupe. Chaque groupe a ainsi
exactement une idole.

**Un élève est l'idole de beaucoup de groupes.** Il y a $2024$ groupes et seulement $24$ idoles possibles.
Si chaque élève était l'idole d'au plus $84$ groupes, il y aurait au plus $24 \times 84 = 2016$ groupes,
or il y en a $2024$. Donc un élève, appelons-le $A$, est l'idole d'au moins $85$ groupes.

**Mais le fan club de $A$ est trop petit.** Chaque groupe dont $A$ est l'idole est formé de $3$ élèves du
fan club de $A$. Ce fan club compte au plus $9$ élèves, donc il contient au plus $84$ groupes de $3$
différents (s'il en compte moins de $9$, il en contient encore moins). Donc $A$ est l'idole d'au plus $84$
groupes.

On a trouvé à la fois « au moins $85$ » et « au plus $84$ » : c'est une contradiction.

**Conclusion.** L'hypothèse est fausse : au moins un élève a un fan club d'au moins $10$ élèves.

## Going further

Le raisonnement est un **double comptage** : on compte les groupes de $3$ d'une part dans la classe
entière, d'autre part fan club par fan club, et les deux nombres ne sont pas compatibles.

Avec $10$ élèves par fan club, le même calcul ne mène plus à rien : un fan club de $10$ élèves contient
$\frac{10 \times 9 \times 8}{6} = 120$ groupes de $3$, et $24 \times 120 = 2880$ est plus grand que
$2024$. Le comptage seul ne permet donc pas de montrer qu'il faudrait $11$ élèves.
