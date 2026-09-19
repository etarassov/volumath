---
id: "1014"
title: "Trois portes et une voiture"
grade: 11
theme: probability-statistics
difficulty: 3
duration_min: 35
tags: [probabilite conditionnelle, arbre, information, evenement contraire]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Did Dream cheat?"
  reference: "Handout-4807-4988.pdf, exercice 23"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4807-4988.pdf"
---

## Statement

Vous participez à un jeu télévisé. Devant vous, trois portes fermées. Derrière l'une d'elles, une voiture ; derrière les deux autres, une chèvre. La voiture a été placée au hasard, chaque porte ayant la même probabilité de la cacher.

Vous désignez une porte, sans l'ouvrir.

L'animateur, **qui sait où est la voiture**, ouvre alors l'une des deux portes restantes et montre une chèvre. Il le fait toujours, et choisit toujours une porte qui cache une chèvre ; s'il a le choix entre deux telles portes, il en prend une au hasard.

Il vous propose ensuite : « Gardez votre porte, ou changez pour l'autre porte encore fermée. »

1. Que vaut la probabilité de gagner la voiture si vous gardez votre porte ? Si vous changez ?
2. Beaucoup de gens répondent « c'est pareil, une chance sur deux ». Où est l'erreur ?

## Hints

1. Commencez par le cas où vous gardez votre porte. L'ouverture d'une porte par l'animateur change-t-elle quoi que ce soit à ce que cache **votre** porte ?
2. Faites un arbre : la voiture est derrière la porte que vous avez choisie (probabilité $\frac13$), ou derrière une autre (probabilité $\frac23$). Traitez ces deux branches séparément.
3. Dans la branche « la voiture n'est pas derrière ma porte », que fait l'animateur ? A-t-il le choix ?
4. Une autre façon de voir : imaginez le même jeu avec $100$ portes, où l'animateur ouvre $98$ portes à chèvres.

## Solution

Appelons $A$ la porte que vous avez choisie au départ.

### Question 1 : les deux stratégies

**Si vous gardez votre porte.**

Au moment de votre choix, la voiture était derrière $A$ avec la probabilité $\frac13$. L'animateur ouvre ensuite une porte à chèvre, mais il **le fait dans tous les cas**, quelle que soit la position de la voiture : son geste ne vous apprend donc rien sur $A$. La probabilité que la voiture soit derrière $A$ reste $\frac13$.

$$P(\text{gagner en gardant}) = \frac13.$$

**Si vous changez.**

Les deux stratégies sont contraires l'une de l'autre : après l'ouverture, il reste deux portes fermées, $A$ et une autre, et la voiture est derrière l'une des deux. Donc
$$P(\text{gagner en changeant}) = 1 - \frac13 = \frac23.$$

**Le même résultat par un arbre, pour s'en convaincre.**

- **Cas 1** (probabilité $\frac13$) : la voiture est derrière $A$. L'animateur ouvre l'une des deux autres portes, peu importe laquelle. Si vous changez, vous tombez sur une chèvre : **vous perdez**.
- **Cas 2** (probabilité $\frac23$) : la voiture n'est pas derrière $A$. Alors, parmi les deux autres portes, l'une cache la voiture et l'autre une chèvre. L'animateur n'a pas le choix : il **doit** ouvrir celle qui cache la chèvre. La porte encore fermée cache donc la voiture. Si vous changez, **vous gagnez**.

Changer fait donc gagner exactement dans le cas 2, de probabilité $\frac23$.

**Conclusion.** Il faut changer : on gagne alors deux fois sur trois, contre une fois sur trois en gardant.

### Question 2 : où est l'erreur du raisonnement « une chance sur deux »

L'intuition fautive dit : « il reste deux portes, donc c'est du cinquante-cinquante ». Elle suppose que les deux portes restantes jouent le même rôle. Or ce n'est pas le cas.

- Votre porte $A$ a été choisie **avant** que l'animateur n'intervienne, et il ne l'ouvrira jamais. Sa probabilité est figée à $\frac13$.
- L'autre porte restante, elle, a été **sélectionnée** par l'animateur : c'est la survivante des deux portes que vous n'aviez pas prises. Elle hérite donc de toute la probabilité $\frac23$ de ce groupe de deux portes.

Autrement dit, l'animateur ne choisit pas au hasard : il utilise son information. C'est cette information qui passe dans la porte qu'il laisse fermée.

**Le cas à cent portes, pour rendre cela évident.** Il y a $100$ portes, vous en désignez une : vous avez $1$ chance sur $100$ d'avoir vu juste. L'animateur ouvre alors $98$ portes à chèvres, et laisse fermées la vôtre et une seule autre. Hésiteriez-vous encore ? Votre porte vaut toujours $\frac{1}{100}$ ; l'autre vaut $\frac{99}{100}$.

**Remarque importante.** Tout repose sur le fait que l'animateur sait où est la voiture et ouvre **toujours** une porte à chèvre. Si l'animateur ouvrait une porte au hasard et qu'il tombait par chance sur une chèvre, la situation serait différente : les deux portes restantes seraient alors vraiment à $\frac12$ chacune.

## Going further

1. Traiter le cas où l'animateur ouvre une porte **au hasard** parmi les deux autres, et où l'on n'examine que les parties dans lesquelles il est tombé sur une chèvre. Montrer que la probabilité de gagner en changeant vaut alors $\frac12$.
2. Le jeu à $n$ portes : vous en choisissez une, l'animateur en ouvre $n-2$ à chèvres. Quelle est la probabilité de gagner en changeant ?
3. Le jeu à $n$ portes où l'animateur n'en ouvre qu'**une seule**. Quelle est alors la probabilité de gagner en changeant ?
4. Simuler le jeu sur ordinateur, $10\,000$ parties avec chaque stratégie, et comparer aux valeurs $\frac13$ et $\frac23$.
