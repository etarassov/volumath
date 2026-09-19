---
id: "2401"
title: "Douze élèves, plusieurs groupes de travail"
grade: 12
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [denombrement, combinaisons, coefficient-binomial, partage, surcomptage]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced Circle, Combinatorics"
  reference: "Handout-467-565.pdf, exercice 4 (réponses dans Handout-468-565.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-467-565.pdf"
---

## Statement

Une classe compte $12$ élèves. Le professeur veut les répartir en groupes de travail, de sorte que chaque élève soit dans exactement un groupe.

Les groupes n'ont **pas de nom** : deux répartitions qui donnent exactement les mêmes groupes, énumérés dans un autre ordre, comptent pour une seule et même répartition.

Combien y a-t-il de répartitions possibles si les tailles imposées des groupes sont :

1. $8$ et $4$ ;
2. $5$, $4$ et $3$ ;
3. $6$ et $6$ ;
4. $4$, $4$ et $4$ ?

## Hints

1. Pour la question 1, commence par choisir les $8$ élèves du grand groupe. Une fois ce choix fait, que reste-t-il à décider ?
2. Aux questions 1 et 2, toutes les tailles sont différentes. Un groupe est donc reconnaissable rien qu'à son effectif : le fait que les groupes n'aient pas de nom ne change rien.
3. À la question 3, les deux groupes ont la même taille. Compte d'abord les façons de former « le groupe A » puis « le groupe B », puis demande-toi combien de fois chaque répartition a été comptée.
4. À la question 4, la même répartition en trois groupes de $4$ est comptée une fois pour chaque ordre possible des trois groupes, c'est-à-dire $3!$ fois.

## Solution

**Rappel de l'outil.** Le nombre de façons de choisir $k$ élèves parmi $n$, sans tenir compte de l'ordre, est le coefficient binomial

$$\binom{n}{k} = \frac{n!}{k!\,(n-k)!}.$$

**1. Groupes de tailles $8$ et $4$.**

Choisissons les $8$ élèves du groupe de huit : il y a $\binom{12}{8}$ façons de le faire. Les $4$ élèves restants forment alors automatiquement l'autre groupe, il n'y a plus aucun choix.

$$\binom{12}{8} = 495 .$$

Remarquons qu'ici aucune correction n'est nécessaire : les deux groupes ont des tailles différentes, donc on ne peut pas les confondre.

**2. Groupes de tailles $5$, $4$ et $3$.**

On choisit d'abord les $5$ élèves du groupe de cinq, puis les $4$ élèves du groupe de quatre parmi les $7$ restants ; les $3$ derniers forment le troisième groupe :

$$\binom{12}{5} \times \binom{7}{4} \times \binom{3}{3} = 792 \times 35 \times 1 = 27\,720 .$$

Là encore les trois tailles sont différentes, donc chaque répartition n'a été obtenue qu'une seule fois.

**3. Groupes de tailles $6$ et $6$.**

Si l'on procède comme avant, on choisit $6$ élèves « pour le premier groupe » et les $6$ autres forment « le second groupe », ce qui donne

$$\binom{12}{6} \times \binom{6}{6} = 924 .$$

Mais cette fois chaque répartition a été comptée **deux fois**. En effet, si l'on appelle $G$ et $H$ les deux groupes obtenus, le comptage ci-dessus produit une fois le choix « premier groupe $= G$ » et une fois le choix « premier groupe $= H$ », alors que la répartition en groupes est la même. Il faut donc diviser par $2! = 2$ :

$$\frac{924}{2} = 462 .$$

**4. Groupes de tailles $4$, $4$ et $4$.**

Même méthode. En numérotant les groupes de $1$ à $3$ on obtient

$$\binom{12}{4} \times \binom{8}{4} \times \binom{4}{4} = 495 \times 70 \times 1 = 34\,650 .$$

Une répartition donnée en trois groupes $G$, $H$, $K$ apparaît une fois pour chacun des ordres dans lesquels on peut les numéroter, soit $3! = 6$ fois. D'où

$$\frac{34\,650}{6} = 5\,775 .$$

**Conclusion.**

| tailles | nombre de répartitions |
|---|---|
| $8,\ 4$ | $495$ |
| $5,\ 4,\ 3$ | $27\,720$ |
| $6,\ 6$ | $462$ |
| $4,\ 4,\ 4$ | $5\,775$ |

La règle à retenir : on compte comme si les groupes étaient numérotés, puis on divise par $m!$ pour chaque paquet de $m$ groupes ayant la même taille.

## Going further

1. Et si les groupes portaient un nom (« groupe A », « groupe B », …) ? Reprendre les quatre questions.
2. De combien de façons peut-on répartir $12$ élèves en $6$ paires ?
3. De combien de façons peut-on répartir $12$ élèves en groupes de tailles $2$, $2$, $4$, $4$ ?
