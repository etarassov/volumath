---
id: "8187"
title: "Une équation fonctionnelle qui impose une période"
grade: 11
theme: functions-analysis
difficulty: 3
duration_min: 25
tags: [equation-fonctionnelle, periodicite, substitution]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe C"
  reference: "stage_ete_2018.pdf, chapitre V « Groupe C », section 1 « Algèbre », cours « Équations fonctionnelles », exercice 5 (le polycopié ne nomme pas l'auteur du cours)."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Soit $f$ une fonction définie sur $\mathbb{R}$, à valeurs dans $\mathbb{R}$, telle que pour tout
réel $x$ :

$$f(x-1) + f(x+1) = \sqrt{2}\, f(x).$$

Montrer que $f$ est périodique, et donner une période.

## Hints

1. On ne cherche pas à connaître $f$. On cherche seulement à montrer qu'elle se répète.
2. L'égalité est vraie pour **tout** réel $x$. Tu as donc le droit de l'écrire aussi en
   remplaçant $x$ par $x-1$, puis par $x+1$.
3. Écris les deux égalités obtenues, et additionne-les. Que reconnais-tu dans le membre de
   droite ?
4. Le nombre $\sqrt{2}$ a une propriété agréable : $\sqrt{2} \times \sqrt{2} = 2$. C'est elle
   qui fait tout.
5. Tu devrais arriver à une relation entre $f(x-2)$ et $f(x+2)$. Une fois qu'on sait que
   $f(x+4) = -f(x)$, que vaut $f(x+8)$ ?

## Solution

**Réponse : $f$ est périodique de période $8$.**

**L'idée : appliquer l'égalité en trois points.**

L'égalité
$$(\star) \qquad f(t-1) + f(t+1) = \sqrt{2}\, f(t)$$
est valable pour **tout** réel $t$. Fixons un réel $x$ et écrivons-la successivement pour
$t = x-1$, pour $t = x$ et pour $t = x+1$ :

$$f(x-2) + f(x) = \sqrt{2}\, f(x-1),$$
$$f(x-1) + f(x+1) = \sqrt{2}\, f(x),$$
$$f(x) + f(x+2) = \sqrt{2}\, f(x+1).$$

**Additionnons la première et la troisième.**

$$f(x-2) + 2f(x) + f(x+2) = \sqrt{2}\, \bigl( f(x-1) + f(x+1) \bigr).$$

Or la deuxième égalité dit exactement que $f(x-1) + f(x+1) = \sqrt{2}\, f(x)$. Le membre de
droite vaut donc
$$\sqrt{2} \times \sqrt{2}\, f(x) = 2 f(x).$$

L'égalité devient
$$f(x-2) + 2f(x) + f(x+2) = 2 f(x),$$
et en retranchant $2f(x)$ des deux côtés :

$$f(x-2) + f(x+2) = 0, \qquad \text{c'est-à-dire} \qquad f(x+2) = -f(x-2).$$

**Une relation à pas de 4.**

Cette égalité vaut pour tout réel $x$. Remplaçons $x$ par $x + 2$ :
$$f(x+4) = -f(x).$$

**Conclusion.**

Appliquons cette dernière relation deux fois :
$$f(x+8) = -f(x+4) = -\bigl(-f(x)\bigr) = f(x).$$

C'est vrai pour tout réel $x$ : **la fonction $f$ est périodique, de période $8$.**

## Going further

La période $8$ n'est pas toujours la plus petite : la fonction nulle vérifie l'égalité et est
périodique de n'importe quelle période.

Mais il existe bien des solutions de période minimale exactement $8$. Posons
$$f(x) = \cos\left( \frac{\pi x}{4} \right).$$
La formule $\cos(a-b) + \cos(a+b) = 2\cos a \cos b$, avec $a = \dfrac{\pi x}{4}$ et
$b = \dfrac{\pi}{4}$, donne
$$f(x-1) + f(x+1) = 2 \cos\left(\frac{\pi}{4}\right) f(x) = 2 \times \frac{\sqrt{2}}{2} f(x) = \sqrt{2}\, f(x).$$
Cette fonction convient donc, et sa plus petite période est $\dfrac{2\pi}{\pi/4} = 8$.

C'est d'ailleurs ce cosinus qui explique le $\sqrt{2}$ de l'énoncé : remplacer $\sqrt{2}$ par
$2\cos\theta$ ferait apparaître la période $\dfrac{2\pi}{\theta}$.
