---
id: "12637"
title: "Un litre dans chaque bouteille"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [strategie, moyenne, extremum, de-proche-en-proche, algorithme]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 12 janvier 2022"
  reference: "2022-08_Enonce-Web-Test-2.pdf, exercice 1 ; corrigé 2022-01_Corrige-Web-Test-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/08/Énoncé-Web-Test-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2022-08_Enonce-Web-Test-2.pdf"
---

## Statement

Martin a versé à la hâte $n$ litres d'eau dans $n$ bouteilles, si bien que certaines bouteilles sont plus remplies que d'autres. Il se rappelle alors qu'il devait mettre exactement un litre d'eau dans chaque bouteille avant de la fermer avec son bouchon. Comme aucune bouteille n'est encore bouchée, il peut encore réparer son erreur.

Il procède ainsi. Il choisit une première bouteille, verse s'il le souhaite une partie de son contenu dans une autre bouteille, puis bouche la première. Il choisit ensuite une deuxième bouteille, pas encore bouchée (ce peut être celle dans laquelle il vient de verser, ou une autre), verse s'il le souhaite une partie de son contenu dans une autre bouteille pas encore bouchée, puis la bouche. Il continue de même avec une troisième bouteille, et ainsi de suite, jusqu'à ce que toutes les bouteilles soient bouchées.

Démontrer que Martin peut choisir les bouteilles qu'il bouche, et celles dans lesquelles il verse, de façon à terminer avec exactement un litre dans chaque bouteille.

*Les bouteilles sont très grandes : chacune pourrait contenir jusqu'à $n$ litres, donc aucune ne déborde.*

## Hints

1. Essaie avec 3 bouteilles qui contiennent 0,5 litre, 0,7 litre et 1,8 litre. Par quelle bouteille faut-il commencer ?
2. Quand Martin bouche une bouteille, elle doit contenir au moins un litre avant qu'il verse, sinon il ne pourra plus jamais la compléter. Existe-t-il toujours une bouteille qui contient au moins un litre ?
3. La bouteille la plus remplie contient au moins la moyenne, c'est-à-dire un litre. Après l'avoir ramenée à un litre et bouchée, que reste-t-il dans les autres bouteilles ?

## Solution

**L'idée : commencer par la bouteille la plus remplie.** Une bouteille que Martin bouche ne peut plus recevoir d'eau. Il doit donc la boucher alors qu'elle contient au moins un litre, puis verser le surplus ailleurs. La bouteille la plus remplie est un bon choix.

**La bouteille la plus remplie contient au moins un litre.** Les $n$ bouteilles contiennent $n$ litres en tout. Si chacune contenait moins d'un litre, elles contiendraient en tout moins de $n$ litres. C'est impossible, donc au moins une bouteille contient un litre ou plus, et c'est en particulier le cas de la plus remplie.

**Une étape.** Martin choisit la bouteille la plus remplie. Si elle contient plus d'un litre, il verse le surplus dans une autre bouteille encore ouverte, de façon qu'il reste exactement un litre. Puis il la bouche. Elle contient alors exactement un litre, comme il le faut.

Il reste $n - 1$ bouteilles ouvertes. Elles contiennent en tout $n - 1$ litres, puisque toute l'eau qui n'est pas dans la bouteille bouchée est dans les autres.

**On recommence.** Martin se retrouve donc dans la même situation qu'au départ, avec $n - 1$ bouteilles ouvertes contenant $n - 1$ litres. Il recommence la même étape : il choisit la bouteille ouverte la plus remplie, qui contient au moins un litre pour la même raison, la ramène à un litre et la bouche. Il reste alors $n - 2$ bouteilles ouvertes contenant $n - 2$ litres, et ainsi de suite.

À la fin, il ne reste qu'une bouteille ouverte, qui contient $1$ litre. Martin n'a rien à verser, il la bouche.

**Conclusion.** En bouchant à chaque fois la bouteille ouverte la plus remplie, après l'avoir ramenée à un litre, Martin termine avec **exactement un litre dans chaque bouteille.**

Par exemple, avec 0,5 litre, 0,7 litre et 1,8 litre : il verse 0,8 litre de la troisième bouteille dans la première, qui contient alors 1,3 litre, et bouche la troisième. Puis il verse 0,3 litre de la première dans la deuxième et bouche la première. La deuxième contient alors 1 litre.

## Going further

- Le raisonnement montre que chaque étape ramène au même problème avec une bouteille de moins. Les mathématiciens appellent cela un *raisonnement par récurrence*, que tu étudieras au lycée.
- Que se passe-t-il si Martin doit boucher les bouteilles dans un ordre imposé, par exemple de gauche à droite ? Trouve des quantités de départ pour lesquelles c'est impossible.
- Le corrigé insiste sur un point : trouver la bonne stratégie ne suffit pas, il faut aussi expliquer pourquoi elle marche, ici pourquoi la bouteille choisie contient toujours au moins un litre.
