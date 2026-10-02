---
id: "7911"
title: "Un empilement de fractions"
grade: 9
theme: algebra
difficulty: 2
duration_min: 15
tags: [fractions, calcul, racine-carree, fraction-irreductible]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, Coupe Animath"
  reference: "stage_ete_2016.pdf, « Éliminatoires collégiens », exercice 1 (énoncé p. 21, solution p. 23)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

On pose

$$B = 1 + \dfrac{1}{2 + \dfrac{1}{3}} \qquad \text{puis} \qquad A = \dfrac{3}{4 + \left(\sqrt{3}\right)^6} + \dfrac{1}{B} .$$

Écrire $A$ sous la forme d'une fraction irréductible.

## Hints

1. Commence par $\left(\sqrt{3}\right)^6$. Souviens-toi que $\left(\sqrt{3}\right)^2 = 3$ et écris $\left(\sqrt{3}\right)^6 = \left(\left(\sqrt{3}\right)^2\right)^3$.
2. Pour calculer $B$, pars du bas : calcule d'abord $2 + \frac{1}{3}$.
3. L'inverse d'une fraction $\frac{p}{q}$ est $\frac{q}{p}$.
4. Pour additionner les deux morceaux, cherche un dénominateur commun. Puis vérifie que la fraction obtenue ne se simplifie plus.

## Solution

**La réponse : $A = \dfrac{247}{310}$.**

**Étape 1 : le premier morceau.**

$$\left(\sqrt{3}\right)^6 = \left(\left(\sqrt{3}\right)^2\right)^3 = 3^3 = 27 ,$$

donc

$$\frac{3}{4 + \left(\sqrt{3}\right)^6} = \frac{3}{4 + 27} = \frac{3}{31} .$$

**Étape 2 : le nombre $B$, en partant du bas.**

$$2 + \frac{1}{3} = \frac{6}{3} + \frac{1}{3} = \frac{7}{3} , \qquad \text{donc} \qquad \frac{1}{2 + \frac{1}{3}} = \frac{3}{7} .$$

Ensuite

$$B = 1 + \frac{3}{7} = \frac{10}{7} , \qquad \text{donc} \qquad \frac{1}{B} = \frac{7}{10} .$$

**Étape 3 : la somme.**

$$A = \frac{3}{31} + \frac{7}{10} .$$

Le dénominateur commun est $31 \times 10 = 310$ :

$$A = \frac{30}{310} + \frac{217}{310} = \frac{247}{310} .$$

**Étape 4 : la fraction est-elle irréductible ?**

On décompose : $247 = 13 \times 19$ et $310 = 2 \times 5 \times 31$. Ces deux nombres n'ont aucun facteur premier commun, donc la fraction ne se simplifie pas.

**Conclusion.** $A = \boxed{\dfrac{247}{310}}$.

## Going further

Aux éliminatoires de la Coupe Animath, la réponse devait être un entier : on demandait donc la somme du numérateur et du dénominateur, ici $247 + 310 = 557$.
