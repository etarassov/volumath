---
id: "1214"
title: "Parier « petit » sur deux dés"
grade: 11
theme: probability-statistics
difficulty: 2
duration_min: 20
tags: [esperance, variable-aleatoire, des, jeu-equitable, gain-moyen]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 1, compétition d'automne 2023"
  reference: "Handout-4216-3990.pdf, problème 1.1 (réponse dans Handout-4217-3990.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4216-3990.pdf"
---

## Statement

Dans une fête foraine, un stand propose le jeu suivant. On mise $1$ €, on annonce son pari, puis on lance deux dés équilibrés à six faces et on regarde la **somme** des deux résultats.

- Pari « petit » : on annonce que la somme sera strictement inférieure à $7$. Si c'est le cas, on reçoit $2$ €.
- Pari « grand » : on annonce que la somme sera strictement supérieure à $7$. Si c'est le cas, on reçoit $2$ €.
- Pari « sept » : on annonce que la somme vaudra exactement $7$. Si c'est le cas, on reçoit $4$ €.

Dans tous les autres cas, on ne reçoit rien. Les sommes reçues comprennent la mise : parier « petit » et gagner rapporte donc $1$ € de bénéfice.

1. Marc joue un très grand nombre de fois en pariant toujours « petit ». Quel est son bénéfice moyen par partie ?
2. Même question pour le pari « sept ». Lequel des deux paris est le moins mauvais ?

## Hints

1. Dresser le tableau des $36$ résultats possibles des deux dés, ou simplement compter, pour chaque somme de $2$ à $12$, le nombre de façons de l'obtenir.
2. Combien de ces $36$ résultats donnent une somme strictement inférieure à $7$ ?
3. Le bénéfice d'une partie est une variable aléatoire qui ne prend que deux valeurs. Lesquelles ?
4. Le bénéfice moyen sur un très grand nombre de parties, c'est l'espérance de cette variable aléatoire.

## Solution

**Les sommes possibles.**

Les deux dés donnent $6 \times 6 = 36$ résultats équiprobables. Le nombre de façons d'obtenir chaque somme est :

| somme | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ | $10$ | $11$ | $12$ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| nombre de cas | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $5$ | $4$ | $3$ | $2$ | $1$ |

Donc :

$$P(\text{somme} < 7) = \frac{1+2+3+4+5}{36} = \frac{15}{36} = \frac{5}{12},$$
$$P(\text{somme} = 7) = \frac{6}{36} = \frac{1}{6}, \qquad P(\text{somme} > 7) = \frac{15}{36} = \frac{5}{12}.$$

**1. Le pari « petit ».**

Notons $X$ le bénéfice de Marc sur une partie, en euros. Il mise $1$ € dans tous les cas.

- S'il gagne, il reçoit $2$ € : son bénéfice est $2 - 1 = 1$. Cela arrive avec la probabilité $\dfrac{5}{12}$.
- S'il perd, il ne reçoit rien : son bénéfice est $0 - 1 = -1$. Cela arrive avec la probabilité $1 - \dfrac{5}{12} = \dfrac{7}{12}$.

L'espérance de $X$ vaut donc

$$E(X) = 1 \times \frac{5}{12} + (-1) \times \frac{7}{12} = \frac{5 - 7}{12} = -\frac{2}{12} = -\frac{1}{6}.$$

Sur un très grand nombre de parties, Marc perd en moyenne $\dfrac{1}{6}$ € par partie, soit environ $17$ centimes.

**2. Le pari « sept ».**

Notons $Y$ le bénéfice avec ce pari.

- S'il gagne, il reçoit $4$ € : bénéfice $4 - 1 = 3$, avec la probabilité $\dfrac{1}{6}$.
- Sinon, bénéfice $-1$, avec la probabilité $\dfrac{5}{6}$.

$$E(Y) = 3 \times \frac{1}{6} + (-1) \times \frac{5}{6} = \frac{3-5}{6} = -\frac{2}{6} = -\frac{1}{3}.$$

Le pari « sept » fait perdre en moyenne $\dfrac{1}{3}$ € par partie, soit deux fois plus que le pari « petit ».

**Conclusion.** Aucun des paris n'est équitable : le stand gagne toujours. Le pari « petit » (ou « grand », qui est identique par symétrie) coûte $\dfrac{1}{6}$ € par partie, le pari « sept » en coûte $\dfrac{1}{3}$. Mieux vaut donc parier « petit », mais mieux vaut encore ne pas jouer.

## Going further

1. Combien le stand devrait-il verser au joueur qui parie « sept » pour que ce pari devienne équitable, c'est-à-dire d'espérance nulle ?
2. Et pour le pari « petit » ?
3. Marc joue $100$ parties en pariant toujours « petit ». Quelle est son espérance de perte totale ? Est-il pour autant certain de perdre ?
