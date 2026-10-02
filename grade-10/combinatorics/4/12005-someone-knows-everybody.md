---
id: "12005"
title: "Quelqu'un connaît tout le monde"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [graphe, connaissances, construction, contre-exemple, raisonnement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de mars 2012"
  reference: "2017-10_ofm-2011-2012-test-mars-1.pdf, exercice 1 ; corrigé 2017-10_ofm-2011-2012-test-mars-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2011-2012-test-mars-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2011-2012-test-mars-1.pdf"
---

## Statement

Soit $n \ge 1$ un entier. Dans une assemblée de $k$ personnes, la connaissance est réciproque : si $A$ connaît $B$, alors $B$ connaît $A$. On suppose que, **pour tout groupe de $n$ personnes de l'assemblée, il existe une autre personne, en dehors du groupe, qui connaît les $n$ membres du groupe**.

1. On suppose que $k = 2n + 1$. Démontrer qu'il existe une personne qui connaît toutes les autres.
2. On suppose que $k = 2n + 2$. Donner l'exemple d'une telle assemblée dans laquelle personne ne connaît tous les autres.

## Hints

1. Question 1 : cherchez d'abord un groupe de personnes qui se connaissent toutes deux à deux. Partez d'une personne seule et agrandissez ce groupe d'une personne à la fois.
2. Si vous avez déjà $p$ personnes qui se connaissent deux à deux, avec $p \le n$, ajoutez-leur $n - p$ personnes quelconques. Que garantit l'hypothèse pour ce groupe de $n$ personnes ?
3. Une fois trouvé un groupe $G$ de $n + 1$ personnes qui se connaissent deux à deux, il reste exactement $n$ personnes. Appliquez l'hypothèse à ces $n$ personnes-là.
4. Question 2 : rangez les $2n + 2$ personnes en $n + 1$ couples, et décidez que chacun connaît tout le monde sauf son partenaire.

## Solution

**Question 1.** On suppose $k = 2n + 1$.

*Étape 1 : il existe $n + 1$ personnes qui se connaissent deux à deux.* Construisons ce groupe pas à pas.

Une personne seule forme un groupe de $1$ personne qui « se connaissent deux à deux » (il n'y a rien à vérifier). Supposons qu'on ait trouvé un groupe $E$ de $p$ personnes qui se connaissent deux à deux, avec $1 \le p \le n$. Ajoutons à $E$ n'importe quelles $n - p$ autres personnes : c'est possible, car l'assemblée compte $2n + 1 \ge n$ personnes. On obtient un groupe de $n$ personnes. D'après l'hypothèse, une personne $X$ extérieure à ce groupe connaît ses $n$ membres, et en particulier les $p$ membres de $E$. Comme $X$ n'est pas dans $E$, le groupe $E$ augmenté de $X$ compte $p + 1$ personnes qui se connaissent deux à deux.

En répétant cette opération à partir de $p = 1$, on arrive à $p = n + 1$ : on obtient un groupe $G$ de $n + 1$ personnes qui se connaissent deux à deux.

*Étape 2 : la personne cherchée.* En dehors de $G$, il reste $(2n + 1) - (n + 1) = n$ personnes. Appliquons l'hypothèse à ce groupe $G'$ de $n$ personnes : une personne $Y$ extérieure à $G'$ connaît tous les membres de $G'$. Être extérieur à $G'$, c'est être dans $G$. Donc $Y$ est dans $G$, et elle connaît :

- tous les autres membres de $G$, puisque les membres de $G$ se connaissent deux à deux ;
- tous les membres de $G'$, par le choix de $Y$.

Comme $G$ et $G'$ contiennent toute l'assemblée, **$Y$ connaît toutes les autres personnes.**

**Question 2.** On suppose $k = 2n + 2$. Répartissons les personnes en $n + 1$ couples, et décidons que chaque personne connaît toutes les autres, **sauf son partenaire**. La relation est bien réciproque, et personne ne connaît tout le monde, puisque chacun ignore son partenaire.

Vérifions l'hypothèse. Soit un groupe de $n$ personnes. Ces $n$ personnes appartiennent à au plus $n$ couples. Comme il y a $n + 1$ couples, au moins un couple $\{A, B\}$ n'a aucun membre dans le groupe. La personne $A$ est en dehors du groupe, et elle connaît tous ses membres, puisque la seule personne qu'elle ne connaît pas est $B$, qui n'est pas dans le groupe.

L'assemblée en couples convient donc : l'hypothèse est vérifiée, et personne ne connaît tous les autres.

**Conclusion.** Avec $2n + 1$ personnes, il y a toujours quelqu'un qui connaît tout le monde. Avec $2n + 2$ personnes, ce n'est plus vrai.
