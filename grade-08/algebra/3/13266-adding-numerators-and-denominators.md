---
id: "13266"
title: "Additionner les numérateurs et les dénominateurs"
grade: 8
theme: algebra
difficulty: 3
duration_min: 20
tags: [fractions, inegalite, contre-exemple]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2019"
  reference: "2019-10_coupe_animath_automne_2019_sujet.pdf, exercices collégiens, exercice 7 ; corrigé 2019-10_Corrige.pdf. Le corrigé donne un contre-exemple où les deux fractions finales sont égales ; on en donne un où l'inégalité s'inverse."
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/10/coupe_animath_automne_2019_sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2019-10_coupe_animath_automne_2019_sujet.pdf"
---

## Statement

On considère huit entiers strictement positifs $a_1$, $a_2$, $b_1$, $b_2$, $c_1$, $c_2$, $d_1$, $d_2$ tels que

$$\frac{a_1}{b_1} < \frac{a_2}{b_2} \qquad \text{et} \qquad \frac{c_1}{d_1} < \frac{c_2}{d_2}.$$

Est-il toujours vrai que

$$\frac{a_1 + c_1}{b_1 + d_1} < \frac{a_2 + c_2}{b_2 + d_2} \ ?$$

## Hints

1. Essaie quelques exemples. Le résultat te paraît-il vrai ?
2. Pense à des taux de réussite : $\frac{a_1}{b_1}$ peut être « $a_1$ paniers réussis sur $b_1$ tirs ». Que se passe-t-il si un joueur tire surtout quand c'est facile ?
3. Choisis $b_1$ petit et $d_1$ grand, et le contraire pour $b_2$ et $d_2$.

## Solution

**La réponse est non.** Il suffit de trouver un contre-exemple. Prenons

$$\frac{a_1}{b_1} = \frac{1}{2}, \qquad \frac{a_2}{b_2} = \frac{6}{10}, \qquad \frac{c_1}{d_1} = \frac{9}{10}, \qquad \frac{c_2}{d_2} = \frac{1}{1}.$$

On a bien $\frac{1}{2} < \frac{6}{10}$ (car $5 < 6$) et $\frac{9}{10} < 1$. Pourtant

$$\frac{a_1 + c_1}{b_1 + d_1} = \frac{1 + 9}{2 + 10} = \frac{10}{12} = \frac{5}{6} \qquad \text{et} \qquad \frac{a_2 + c_2}{b_2 + d_2} = \frac{6 + 1}{10 + 1} = \frac{7}{11}.$$

Or $\frac{5}{6} > \frac{7}{11}$, puisque $5 \times 11 = 55$ est plus grand que $7 \times 6 = 42$. L'inégalité est donc renversée.

**Pourquoi ça marche.** La fraction $\frac{a_1 + c_1}{b_1 + d_1}$ est une sorte de moyenne de $\frac{a_1}{b_1}$ et $\frac{c_1}{d_1}$, mais une moyenne **pondérée** par les dénominateurs. Ici, le premier côté a un grand poids ($10$) sur sa grande fraction $\frac{9}{10}$, alors que le second côté a un grand poids sur sa petite fraction $\frac{6}{10}$.

**Conclusion.** Ce n'est pas toujours vrai.

## Going further

Imaginons deux joueurs de basket. Le premier réussit $1$ tir lointain sur $2$ et $9$ tirs proches sur $10$ ; le second réussit $6$ tirs lointains sur $10$ et $1$ tir proche sur $1$. Le second est meilleur de loin et de près, et pourtant le premier a le meilleur taux de réussite global. Ce phénomène s'appelle le paradoxe de Simpson.
