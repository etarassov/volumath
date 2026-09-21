---
id: "8741"
title: "L'équation f(2f(x) + f(y)) = 2x + f(y)"
grade: 12
theme: algebra
difficulty: 4
duration_min: 30
tags: [equation fonctionnelle, injectivite, identite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024"
  reference: "poly_valbonne_2024.pdf, groupe B, entraînement de fin de parcours, exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Trouver toutes les fonctions $f : \mathbb{R} \to \mathbb{R}$ telles que, pour tous réels $x$ et
$y$,
$$f(2f(x) + f(y)) = 2x + f(y) .$$

## Hints

1. Dans ce genre d'exercice, on commence toujours par donner à $x$ et à $y$ des valeurs
   particulières. Essaie $y = 0$, puis $x = 0$.
2. Avec $y = 0$ l'égalité devient $f(2f(x) + f(0)) = 2x + f(0)$. Le membre de droite
   prend une valeur différente pour chaque $x$. Que peut-on en déduire sur $f$ ?
3. Montre que $f$ est injective : si $f(a) = f(b)$, applique la relation du point 2 à $a$ puis
   à $b$.
4. Avec $x = 0$, l'égalité devient $f(2f(0) + f(y)) = f(y)$. Les deux membres sont des
   images par $f$. L'injectivité permet alors d'enlever le $f$ des deux côtés.
5. Tu obtiens une formule donnant $f(y)$ en fonction de $y$ et de la constante $f(0)$. Remplace
   ensuite $y$ par $0$ dans cette formule.
6. N'oublie pas la vérification finale : tu as montré que si une solution existe elle vaut
   forcément ceci, il reste à contrôler que ceci en est bien une.

## Solution

Soit $f$ une fonction qui convient. On va la déterminer complètement, puis vérifier.

**Étape 1 : une relation utile, en prenant $y = 0$.**

L'égalité de l'énoncé avec $y = 0$ donne, pour tout réel $x$,
$$(\star) \qquad f(2f(x) + f(0)) = 2x + f(0) .$$

**Étape 2 : $f$ est injective.**

Soient $a$ et $b$ deux réels avec $f(a) = f(b)$. Alors $2f(a) + f(0) = 2f(b) + f(0)$, donc les
deux membres de gauche de $(\star)$ écrits pour $a$ et pour $b$ sont égaux. Les membres de
droite le sont donc aussi :
$$2a + f(0) = 2b + f(0) ,$$
d'où $2a = 2b$, puis $a = b$.

Deux réels ayant la même image sont donc égaux : $f$ est injective.

**Étape 3 : une relation utile, en prenant $x = 0$.**

L'égalité de l'énoncé avec $x = 0$ donne, pour tout réel $y$,
$$f(2f(0) + f(y)) = 0 + f(y) = f(y) .$$

Des deux côtés on lit l'image par $f$ d'un nombre. Comme $f$ est injective, ces deux nombres
sont égaux :
$$2f(0) + f(y) = y .$$

Autrement dit, pour tout réel $y$,
$$f(y) = y - 2f(0) .$$

**Étape 4 : la constante $f(0)$ vaut zéro.**

Il reste à identifier $f(0)$. Il suffit de faire $y = 0$ dans la formule qu'on vient d'obtenir :
$$f(0) = 0 - 2f(0) = -2f(0) ,$$
donc $3f(0) = 0$, c'est-à-dire $f(0) = 0$.

La formule devient $f(y) = y$ pour tout réel $y$ : la fonction $f$ est l'identité.

**Étape 5 : vérification.**

Prenons $f(x) = x$ pour tout $x$ et remplaçons dans l'énoncé. À gauche :
$$f(2f(x) + f(y)) = f(2x + y) = 2x + y .$$
À droite :
$$2x + f(y) = 2x + y .$$
Les deux membres coïncident pour tous $x$ et $y$.

**Conclusion.** La seule fonction solution est l'identité :
$$\boxed{f(x) = x \text{ pour tout réel } x} .$$

## Going further

1. Voici une autre route vers le même résultat. Dans $(\star)$, le membre de droite
   $2x + f(0)$ décrit tous les réels quand $x$ décrit $\mathbb{R}$. Qu'est-ce que cela prouve sur
   $f$, et comment cette information remplace-t-elle l'injectivité à l'étape 3 ?
2. Reprends les cinq étapes pour l'équation $f(2f(x) + f(y)) = 3x + f(y)$. Les étapes 1 à 4 se
   déroulent exactement de la même façon et aboutissent encore à $f(x) = x$. Que dit alors
   l'étape 5, et quelle est finalement la réponse à cette variante ?
3. La question précédente explique pourquoi l'étape 5 n'est jamais facultative. Dis en une phrase
   ce que démontrent réellement les étapes 1 à 4, et ce qu'il reste à démontrer après elles.
