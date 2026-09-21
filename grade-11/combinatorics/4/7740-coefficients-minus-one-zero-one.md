---
id: "7740"
title: "Des coefficients −1, 0, 1 pour tomber sur un multiple de 2014"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [principe des tiroirs, restes, sous-sommes, divisibilite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe B"
  reference: "stage_ete_2014.pdf, « Groupe B : logique et stratégies de base », mercredi 20 matin (Alix Deleporte), exercice 16"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Soient $a_0, a_1, \ldots, a_{10}$ onze entiers quelconques.

Montrer qu'il existe onze nombres $\alpha_0, \alpha_1, \ldots, \alpha_{10}$, chacun égal à $-1$, $0$ ou $1$ et **non tous nuls**, tels que

$$\alpha_0 a_0 + \alpha_1 a_1 + \cdots + \alpha_{10} a_{10}$$

soit divisible par $2014$.

## Hints

1. Un coefficient $-1$ est difficile à produire directement. Essaie d'abord avec des coefficients valant seulement $0$ ou $1$, et vois ce que tu peux en tirer.
2. Combien y a-t-il de façons de choisir onze coefficients valant $0$ ou $1$ ?
3. Compare ce nombre à $2014$, le nombre de restes possibles dans la division par $2014$.
4. Deux choix différents donnent donc des sommes de même reste. Que vaut la **différence** de ces deux sommes ? Et à quoi ressemblent ses coefficients ?

## Solution

**L'idée : fabriquer les coefficients $-1$ en soustrayant deux sommes à coefficients $0$ ou $1$.**

**Étape 1 : on fabrique beaucoup de sommes.** Considérons toutes les sommes de la forme

$$T(\beta) = \beta_0 a_0 + \beta_1 a_1 + \cdots + \beta_{10} a_{10} ,$$

où chaque $\beta_i$ vaut $0$ ou $1$. Chacun des onze coefficients a deux valeurs possibles, donc le nombre de choix est

$$2^{11} = 2048 .$$

(Deux choix différents peuvent très bien donner la même somme ; cela n'a aucune importance, ce que l'on compte, ce sont les **choix**.)

**Étape 2 : le principe des tiroirs.** Pour chacun de ces $2048$ choix, regardons le **reste** de $T(\beta)$ dans la division par $2014$. Ce reste est l'un des $2014$ nombres $0, 1, \ldots, 2013$.

On range donc $2048$ choix dans $2014$ tiroirs. Comme $2048 > 2014$, deux choix différents tombent dans le même tiroir : il existe $\beta$ et $\beta'$, avec $\beta \neq \beta'$, tels que $T(\beta)$ et $T(\beta')$ ont le même reste dans la division par $2014$.

**Étape 3 : on soustrait.** Posons, pour chaque $i$,

$$\alpha_i = \beta_i - \beta'_i .$$

Comme $\beta_i$ et $\beta'_i$ valent chacun $0$ ou $1$, leur différence vaut $-1$, $0$ ou $1$ : c'est exactement ce que demande l'énoncé.

De plus les $\alpha_i$ ne sont pas tous nuls : s'ils l'étaient, on aurait $\beta_i = \beta'_i$ pour tout $i$, c'est-à-dire $\beta = \beta'$, ce qui est exclu.

Enfin,

$$\alpha_0 a_0 + \cdots + \alpha_{10} a_{10} = T(\beta) - T(\beta') ,$$

et cette différence est divisible par $2014$, puisque $T(\beta)$ et $T(\beta')$ ont le même reste dans la division par $2014$.

**Conclusion : les coefficients $\alpha_i = \beta_i - \beta'_i$ conviennent.**

## Going further

Le seul calcul de l'exercice est la comparaison $2^{11} = 2048 > 2014$. C'est serré : avec **dix** nombres $a_0, \ldots, a_9$, on n'aurait que $2^{10} = 1024$ choix, ce qui est trop peu et l'argument tomberait.

La même méthode donne un énoncé général : pour $N$ nombres entiers quelconques et un module $M$ tel que $2^N > M$, on peut toujours trouver des coefficients $-1$, $0$, $1$ non tous nuls rendant la somme divisible par $M$.
