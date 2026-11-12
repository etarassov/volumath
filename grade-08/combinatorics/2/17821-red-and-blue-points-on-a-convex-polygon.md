---
id: "17821"
title: "Relier des points rouges et bleus sur un polygone convexe"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [recurrence, appariement, polygone-convexe, segments]
adapted_from: null
see_also: ["7051"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Débutants"
  reference: "stage_junior_2014.pdf, chapitre « Débutants », combinatoire, jeudi après-midi, « Exercices sur la récurrence » (Thomas Budzinski), exercice 1, p.52 ; solution p.52"
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Soit $n \geq 1$ un entier. On considère $2n$ points qui sont les sommets d'un polygone convexe. On colorie $n$ de ces points en bleu et les $n$ autres en rouge.

Montrer qu'on peut tracer $n$ segments, deux à deux sans point commun, de sorte que chaque point bleu soit relié à un seul point rouge et chaque point rouge à un seul point bleu.

## Hints

1. Faites l'essai avec $n = 1$, puis $n = 2$ et $n = 3$.
2. En faisant le tour du polygone, on rencontre forcément deux sommets voisins de couleurs différentes. Pourquoi ?
3. Reliez ces deux sommets voisins. Que reste-t-il ? Peut-on recommencer ?
4. Un segment qui joint deux des sommets restants peut-il croiser le côté que l'on vient de tracer ?

## Solution

On procède de proche en proche : on montre que c'est possible pour $n = 1$, puis que si c'est possible pour un nombre $n$ de points de chaque couleur, c'est possible pour $n + 1$. Ce sera alors possible pour $n = 2$, puis $n = 3$, et ainsi de suite. C'est un raisonnement par récurrence.

**Pour $n = 1$.** Il y a un point bleu et un point rouge : on les relie.

**Passer de $n$ à $n + 1$.** Supposons qu'on sache faire pour tout polygone convexe à $2n$ sommets, $n$ bleus et $n$ rouges. Prenons un polygone convexe à $2n + 2$ sommets, $n + 1$ bleus et $n + 1$ rouges.

*Deux sommets voisins de couleurs différentes.* Faisons le tour du polygone en partant d'un sommet bleu. Si tous les sommets voisins avaient la même couleur, on ne rencontrerait que des sommets bleus, ce qui est faux puisqu'il y a des sommets rouges. Il y a donc deux sommets voisins $P$ et $Q$, l'un bleu et l'autre rouge. On les relie par le segment $[PQ]$, qui est un côté du polygone.

*Les sommets restants.* Il reste $2n$ sommets, $n$ bleus et $n$ rouges. Ce sont les sommets d'un polygone convexe plus petit, car enlever des sommets à un polygone convexe laisse un polygone convexe. On peut donc les relier par $n$ segments deux à deux sans point commun, comme on sait le faire pour $2n$ points.

*Aucun de ces segments ne touche $[PQ]$.* Le polygone est convexe et $[PQ]$ est un de ses côtés, donc tous les autres sommets sont du même côté de la droite $(PQ)$, sans être sur elle. Un segment qui joint deux de ces sommets reste entièrement de ce côté de la droite : il ne peut pas toucher $[PQ]$.

Les $n$ segments et le segment $[PQ]$ forment donc $n + 1$ segments deux à deux sans point commun, qui relient chaque point bleu à un seul point rouge.

**Conclusion :** pour tout $n \geq 1$, on peut tracer les $n$ segments demandés.

## Going further

Le résultat reste vrai pour $2n$ points placés n'importe comment dans le plan, pourvu que trois d'entre eux ne soient jamais alignés. C'est plus difficile : on ne peut plus toujours trouver deux voisins de couleurs différentes sur le bord. Une jolie méthode consiste à choisir, parmi toutes les façons de relier les points, celle dont la longueur totale des segments est la plus petite, et à montrer qu'elle n'a aucun croisement.
