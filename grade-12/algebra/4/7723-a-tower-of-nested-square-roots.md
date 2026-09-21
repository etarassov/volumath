---
id: "7723"
title: "Une tour de racines carrées reste sous 3"
grade: 12
theme: algebra
difficulty: 4
duration_min: 45
tags: [recurrence descendante, racine carree, inegalite, majoration]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe A"
  reference: "stage_ete_2014.pdf, « Groupe A : stratégies de base », mardi 19 après-midi (Cécile Gachet), exercice 8"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Soit $N \geqslant 2$ un entier. On construit une tour de racines carrées en partant du haut :

$$A_N = \sqrt{N}, \qquad A_m = \sqrt{m \, A_{m+1}} \quad \text{pour } m = N-1,\; N-2,\; \ldots,\; 2 .$$

Par exemple, pour $N = 5$ :

$$A_5 = \sqrt{5}, \quad A_4 = \sqrt{4 A_5}, \quad A_3 = \sqrt{3 A_4}, \quad A_2 = \sqrt{2 A_3} .$$

Montrer que $A_2 < 3$, et cela quel que soit $N$.

## Hints

1. Calcule $A_2$ pour $N = 2$, $N = 3$, $N = 4$, $N = 5$ à la calculatrice. Les valeurs montent, mais très lentement.
2. On ne peut pas faire de récurrence sur $m$ en partant de $m = 2$ : c'est justement $m = 2$ qu'on veut atteindre. En revanche, $A_N$ est très simple. Pars donc du haut de la tour et descends.
3. Il faut deviner la bonne majoration de $A_m$. Comme on veut $A_2 < 3$, essaie de montrer $A_m < m+1$ pour tout $m$ entre $2$ et $N$.
4. Pour descendre de $m$ à $m-1$ : $A_{m-1} = \sqrt{(m-1) A_m}$. Majore $A_m$ par $m+1$ et regarde le produit $(m-1)(m+1)$.

## Solution

**L'idée : ne pas démontrer directement $A_2 < 3$, mais la propriété plus générale $A_m < m+1$, en descendant du haut de la tour vers le bas.**

**Pourquoi une récurrence descendante ?** Une récurrence ordinaire partirait de $m = 2$ et monterait. Mais $A_2$ est justement l'inconnue, tandis que $A_N = \sqrt{N}$ est parfaitement connu. On part donc de $m = N$ et on descend jusqu'à $m = 2$. C'est exactement le même principe de proche en proche, dans l'autre sens : le nombre d'étapes est fini, puisqu'on descend de $N$ à $2$.

**La propriété à démontrer.** Pour $2 \leqslant m \leqslant N$, notons

$$P_m : \quad A_m < m + 1 .$$

**Initialisation, au sommet de la tour.** Pour $m = N$, il faut montrer $\sqrt{N} < N+1$. Les deux nombres sont positifs, il suffit donc de comparer leurs carrés :

$$(N+1)^2 = N^2 + 2N + 1 > N ,$$

puisque $N^2 + N + 1 > 0$. Donc $\sqrt{N} < N+1$ et $P_N$ est vraie.

**Descente d'un cran.** Soit $m$ un entier tel que $3 \leqslant m \leqslant N$, et supposons $P_m$ vraie, c'est-à-dire $A_m < m+1$. Montrons $P_{m-1}$, c'est-à-dire $A_{m-1} < m$.

Par définition, $A_{m-1} = \sqrt{(m-1) A_m}$. Comme $m - 1 > 0$, multiplier par $m-1$ conserve l'inégalité :

$$(m-1) A_m < (m-1)(m+1) = m^2 - 1 .$$

La fonction racine carrée est croissante sur les nombres positifs, donc

$$A_{m-1} = \sqrt{(m-1) A_m} < \sqrt{m^2 - 1} < \sqrt{m^2} = m .$$

C'est bien $P_{m-1}$.

**Conclusion de la récurrence.** La propriété est vraie au rang $N$, et elle se transmet du rang $m$ au rang $m-1$ tant que $m \geqslant 3$. En descendant de $N$ à $2$, on obtient donc $P_m$ pour tout $m$ entre $2$ et $N$. En particulier

$$A_2 < 2 + 1 = 3 .$$

**Conclusion : pour tout $N \geqslant 2$, la tour vaut $A_2 < 3$.**

## Going further

L'identité $(m-1)(m+1) = m^2 - 1$ est le cœur de la démonstration : c'est elle qui fait juste assez de place pour que la majoration se transmette. Si l'on avait essayé de démontrer $A_m < m$, le calcul aurait donné $\sqrt{(m-1) \times m}$, que l'on ne peut pas majorer par $m-1$. Il faut donc une majoration **plus lâche** que celle que l'on veut obtenir, ce qui est fréquent dans les récurrences.

Numériquement, $A_2$ monte très lentement : environ $\text{1,41}$ pour $N = 2$, $\text{1,86}$ pour $N = 3$, $\text{2,45}$ pour $N = 5$, $\text{2,75}$ pour $N = 10$, et il se stabilise autour de $\text{2,7612}$ quand $N$ devient grand. La borne $3$ n'est donc jamais atteinte.
