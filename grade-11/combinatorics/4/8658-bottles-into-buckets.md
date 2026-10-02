---
id: "8658"
title: "Vider les bouteilles dans les seaux"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [recurrence, algorithme-glouton, repartition, inegalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, cours « Récurrence » (Elsa), exercice 3 (envoi 4 de combinatoire POFM 2015-2016, exercice 4)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. On dispose d'un nombre fini de bouteilles, chacune contenant **moins de $1$ litre** d'eau, et l'eau contenue dans toutes les bouteilles réunies fait au total $\dfrac{n}{2}$ litre.

On dispose aussi de $n$ seaux vides.

Montrer qu'on peut vider chaque bouteille dans un seau, de façon qu'aucun seau ne contienne plus de $1$ litre.

*(On peut vider plusieurs bouteilles dans le même seau, mais on ne peut pas partager une bouteille entre deux seaux : chaque bouteille est vidée en entier dans un seul seau.)*

## Hints

1. Commence par le cas $n = 1$ : il y a un seul seau et $\frac{1}{2}$ litre en tout. Il n'y a rien à faire.
2. Pour passer de $n$ à $n+1$, l'idée naturelle est de **remplir un seau**, de le mettre de côté, et d'appliquer l'hypothèse de récurrence à ce qui reste.
3. Pour que ça marche, le seau qu'on met de côté doit contenir **au moins $\frac{1}{2}$ litre** (sinon il reste trop d'eau pour les seaux restants) et **au plus $1$ litre**.
4. Essaie la méthode gloutonne : verse les bouteilles une par une dans le premier seau tant que ça ne dépasse pas $1$ litre. Appelle $v$ ce que contient le seau quand tu t'arrêtes, et $b$ le contenu de la bouteille qui ferait déborder.
5. On a $v + b > 1$ et $b < 1$. Si $v \geqslant \frac{1}{2}$, tu as gagné. Et si $v < \frac{1}{2}$, que peux-tu dire de $b$ ? Que ferais-tu alors de cette seule bouteille ?
6. Petit détail de rédaction : il est plus commode de démontrer l'énoncé avec « **au plus** $\frac{n}{2}$ litre au total », ce qui est une affirmation plus forte et plus facile à hériter.

## Solution

**On renforce l'énoncé.** Démontrons la propriété $P(n)$ suivante, qui est plus générale :

> $P(n)$ : « si des bouteilles contiennent chacune moins de $1$ litre et **au plus $\frac{n}{2}$ litre** au total, on peut les répartir dans $n$ seaux sans qu'aucun seau dépasse $1$ litre. »

C'est plus fort que l'énoncé (qui est le cas d'égalité), et c'est justement cette forme-là qui se transmet d'un rang au suivant.

**Initialisation ($n = 1$).** Il y a au plus $\frac{1}{2}$ litre en tout. On verse toutes les bouteilles dans l'unique seau : il contient au plus $\frac{1}{2} \leqslant 1$ litre. $P(1)$ est vraie.

**Hérédité.** Soit $n \geqslant 1$. Supposons $P(n)$ vraie, et donnons-nous des bouteilles de moins de $1$ litre chacune, d'un volume total $V \leqslant \frac{n+1}{2}$, avec $n+1$ seaux.

*Premier cas : $V \leqslant 1$.* On verse tout dans un seul seau, qui contient alors au plus $1$ litre. C'est fini.

*Second cas : $V > 1$.* Montrons qu'on peut remplir un seau avec une quantité $w$ vérifiant

$$\frac{1}{2} \leqslant w \leqslant 1 .$$

Versons les bouteilles une par une dans le premier seau, tant que son contenu ne dépasse pas $1$ litre, et arrêtons-nous dès que la bouteille suivante le ferait déborder. Cet arrêt se produit forcément : si toutes les bouteilles tenaient dans le seau, on aurait $V \leqslant 1$, ce qui est exclu.

Notons $v$ le contenu du seau à l'arrêt et $b$ le contenu de la bouteille qui déborderait. On a donc

$$v + b > 1 \qquad \text{et} \qquad b < 1 .$$

- **Si $v \geqslant \frac{1}{2}$**, on garde ce seau tel quel : il contient $w = v$, avec $\frac{1}{2} \leqslant v \leqslant 1$. Bien.
- **Si $v < \frac{1}{2}$**, alors de $v + b > 1$ on tire $b > 1 - v > 1 - \frac{1}{2} = \frac{1}{2}$. On recommence alors autrement : on vide le seau, et on y met **uniquement la bouteille $b$**. Il contient $w = b$, avec $\frac{1}{2} < b < 1$. Bien aussi.

Dans les deux cas, un seau contient $w$ litres avec $\frac{1}{2} \leqslant w \leqslant 1$. Mettons-le de côté. Il reste

$$V - w \leqslant \frac{n+1}{2} - \frac{1}{2} = \frac{n}{2}$$

litres d'eau, toujours dans des bouteilles de moins de $1$ litre, et il reste $n$ seaux vides. L'hypothèse de récurrence $P(n)$ s'applique et termine la répartition.

$P(n+1)$ est donc vraie.

**Conclusion.** D'après le principe de récurrence, $P(n)$ est vraie pour tout $n \geqslant 1$. En particulier, avec exactement $\frac{n}{2}$ litre et $n$ seaux, la répartition demandée existe toujours.

$$\boxed{\text{On peut toujours répartir les bouteilles sans qu'aucun seau dépasse } 1 \text{ litre.}}$$

## Going further

Deux choses valent d'être retenues.

**Renforcer l'énoncé pour pouvoir le démontrer.** Avec « exactement $\frac{n}{2}$ litre », l'hérédité coince : après avoir mis un seau de côté, il ne reste presque jamais exactement $\frac{n}{2}$ litre. En remplaçant « exactement » par « au plus », on démontre quelque chose de plus fort, et c'est plus facile. C'est un réflexe fréquent en récurrence.

**La borne $\frac{n}{2}$ est optimale.** Prends $n+1$ bouteilles contenant chacune un tout petit peu plus de $\frac{1}{2}$ litre. Leur total dépasse à peine $\frac{n+1}{2}$, et pourtant deux d'entre elles ne peuvent jamais aller dans le même seau. Il faut donc $n+1$ seaux, pas $n$. Avec un seuil plus grand que $\frac{n}{2}$, l'énoncé deviendrait faux.
