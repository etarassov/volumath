---
id: "7929"
title: "Quand le produit des chiffres vaut n² − 15n − 27"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [chiffres, produit des chiffres, majoration, second degre]
adapted_from: null
see_also: ["7820"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, évaluation initiale"
  reference: "stage_ete_2016.pdf, « Evaluation initiale », exercice supplémentaire 2 (p. 35). La solution proposée ici remplace la majoration laborieuse du polycopié par l'inégalité « produit des chiffres inférieur ou égal au nombre »."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Trouver tous les entiers naturels $n$ tels que le produit de leurs chiffres soit égal à

$$n^2 - 15n - 27 .$$

## Hints

1. Fais des essais : $n = 5$, $n = 12$, $n = 17$, $n = 25$. Que remarques-tu sur le signe de $n^2 - 15n - 27$ ?
2. Le produit des chiffres est toujours positif ou nul. Pour quelles valeurs de $n$ le nombre $n^2-15n-27$ est-il négatif ?
3. Cherche maintenant une majoration du produit des chiffres. Compare-le tout simplement à $n$ lui-même : peut-il être plus grand ?
4. Il ne reste plus qu'à comparer $n^2 - 15n - 27$ et $n$.

## Solution

**La réponse : $n = 17$, et c'est le seul.**

Notons $p(n)$ le produit des chiffres de $n$, et posons $Q(n) = n^2 - 15n - 27$.

**Étape 1 : les petites valeurs sont éliminées par le signe.**

Écrivons $Q(n) = n(n - 15) - 27$.

- Si $1 \le n \le 15$, alors $n - 15 \le 0$, donc $n(n-15) \le 0$ et $Q(n) \le -27 < 0$.
- Si $n = 16$, alors $Q(16) = 16 \times 1 - 27 = -11 < 0$.

Or $p(n) \ge 0$ toujours. Donc aucun entier $n \le 16$ ne convient.

**Étape 2 : le produit des chiffres ne dépasse jamais le nombre.**

> **Lemme.** Pour tout entier $n \ge 1$, on a $p(n) \le n$.

Écrivons $n$ avec ses chiffres : $n = \overline{d_k d_{k-1} \ldots d_1 d_0}$, où $d_k \ne 0$. Alors

$$n \ge d_k \times 10^k ,$$

puisque le premier chiffre pèse $d_k \times 10^k$ et que le reste est positif ou nul. Par ailleurs chacun des $k$ autres chiffres vaut au plus $9$, donc

$$p(n) = d_k \times d_{k-1} \times \cdots \times d_0 \le d_k \times 9^k \le d_k \times 10^k \le n .$$

**Étape 3 : les grandes valeurs sont éliminées par la taille.**

Comparons $Q(n)$ et $n$ :

$$Q(n) - n = n^2 - 16n - 27 .$$

Pour $n = 18$, cela vaut $324 - 288 - 27 = 9 > 0$. De plus, la fonction $x \mapsto x^2 - 16x - 27$ est croissante pour $x \ge 8$ (son sommet est en $x = 8$). Donc, pour tout $n \ge 18$,

$$Q(n) - n \ge 9 > 0 , \qquad \text{c'est-à-dire} \qquad Q(n) > n \ge p(n) .$$

Aucun entier $n \ge 18$ ne convient donc non plus.

**Étape 4 : il ne reste qu'une valeur.**

Le seul entier qui n'a pas été éliminé est $n = 17$. Vérifions :

$$Q(17) = 17 \times 2 - 27 = 34 - 27 = 7 , \qquad p(17) = 1 \times 7 = 7 .$$

Les deux nombres coïncident.

**Conclusion.** Le seul entier naturel solution est $n = \boxed{17}$.
