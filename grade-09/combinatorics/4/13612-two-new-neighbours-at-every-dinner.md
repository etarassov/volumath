---
id: "13612"
title: "Deux nouveaux voisins à chaque dîner"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [table ronde, voisins, construction, majoration, nombre premier, reste]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2011 (test de sélection du stage olympique de Grésillon, 7 juin 2011)"
  reference: "2017-09_coupe_printemps_2011_3.pdf, épreuve collège, exercice 1 (sept et huit personnes), et exercice 5 des épreuves de seconde et de première (dix-sept et dix-huit personnes, 2017-09_coupe_printemps_2011_2.pdf et 2017-09_coupe_printemps_2011_1.pdf) ; corrigé 2017-09_coupe_printemps_2011_corrige.pdf, exercices 1 et 5"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_printemps_2011_3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_printemps_2011_3.pdf"
---

## Statement

Un groupe d'amis dîne ensemble chaque samedi soir, autour d'une table ronde. Chacun veut avoir, à chaque dîner, **deux nouveaux voisins** : deux personnes à côté desquelles il ne s'est encore jamais assis lors des dîners précédents.

a) Les amis sont sept. Combien de samedis, au plus, peuvent-ils dîner de cette façon ?

b) Même question s'ils sont huit.

c) Même question s'ils sont dix-sept, puis s'ils sont dix-huit.

## Hints

1. Suis une seule personne. Après $k$ dîners, combien de voisins différents a-t-elle eus ? Parmi combien de personnes ces voisins sont-ils choisis ?
2. Pour sept personnes, numérote-les de $1$ à $7$. Au premier dîner, elles sont assises dans l'ordre. Au deuxième, essaie « une personne sur deux » : $1, 3, 5, 7, 2, 4, 6$.
3. Pour huit personnes, pars de la solution à sept et glisse la huitième personne entre deux voisins, à un endroit différent à chaque dîner.
4. Pour dix-sept personnes, numérote-les de $0$ à $16$. Au dîner numéro $i$, fais le tour de la table en sautant de $i$ en $i$ dans la liste des numéros, en enlevant $17$ dès qu'on dépasse $16$. Regarde l'écart entre les numéros de deux voisins.

## Solution

**Une autre façon de dire la condition.** « Chacun a deux nouveaux voisins à chaque dîner » veut dire exactement : **deux personnes ne sont jamais voisines à deux dîners différents**. On vérifie donc seulement qu'aucune paire de voisins ne se répète.

**Une limite valable pour tous les groupes.** Notons $n$ le nombre d'amis, et supposons qu'ils dînent $k$ fois. Suivons une personne. À chaque dîner, elle a deux voisins qu'elle n'avait jamais eus. Après $k$ dîners, elle a donc eu $2k$ voisins tous différents. Ces voisins sont choisis parmi les $n - 1$ autres personnes, donc

$$2k \leqslant n - 1 .$$

- Pour $n = 7$ : $2k \leqslant 6$, donc $k \leqslant 3$.
- Pour $n = 8$ : $2k \leqslant 7$, donc $k \leqslant 3$, car $k$ est entier.
- Pour $n = 17$ : $2k \leqslant 16$, donc $k \leqslant 8$.
- Pour $n = 18$ : $2k \leqslant 17$, donc $k \leqslant 8$.

Il reste à montrer que ces nombres de dîners sont vraiment possibles.

**a) Sept personnes : trois dîners.** On numérote les amis de $1$ à $7$ et on les place ainsi autour de la table (la dernière personne de chaque liste est à côté de la première) :

- premier dîner : $1, 2, 3, 4, 5, 6, 7$ ;
- deuxième dîner : $1, 3, 5, 7, 2, 4, 6$ ;
- troisième dîner : $1, 4, 7, 3, 6, 2, 5$.

Écrivons les paires de voisins :

- premier dîner : $12$, $23$, $34$, $45$, $56$, $67$, $71$ ;
- deuxième dîner : $13$, $35$, $57$, $72$, $24$, $46$, $61$ ;
- troisième dîner : $14$, $47$, $73$, $36$, $62$, $25$, $51$.

Ces $21$ paires sont toutes différentes. Comme il n'existe que $\frac{7 \times 6}{2} = 21$ paires de personnes, chaque paire est voisine exactement une fois. Trois dîners sont donc possibles, et c'est le maximum.

**b) Huit personnes : trois dîners.** On garde les trois dîners précédents et on glisse la huitième personne, numérotée $8$, entre deux voisins :

- premier dîner : $1, 2, 8, 3, 4, 5, 6, 7$ ;
- deuxième dîner : $1, 3, 5, 8, 7, 2, 4, 6$ ;
- troisième dîner : $1, 8, 4, 7, 3, 6, 2, 5$.

Glisser $8$ entre deux personnes sépare ces deux personnes et ne crée aucune nouvelle paire entre les sept premiers. Les paires entre $1, \ldots, 7$ ne se répètent donc toujours pas. Quant à $8$, ses voisins sont $2$ et $3$, puis $5$ et $7$, puis $4$ et $1$ : six personnes différentes. Trois dîners sont donc possibles, et c'est le maximum.

**c) Dix-sept personnes : huit dîners.** Cette fois, on numérote les amis de $0$ à $16$, et aussi les places de $0$ à $16$ en faisant le tour de la table (la place $16$ est à côté de la place $0$).

Au dîner numéro $i$, pour $i$ de $1$ à $8$, on assied à la place $p$ la personne dont le numéro est **le reste de la division de $i \times p$ par $17$**. Par exemple, voici les trois premiers dîners :

- dîner $1$ : $0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16$ ;
- dîner $2$ : $0, 2, 4, 6, 8, 10, 12, 14, 16, 1, 3, 5, 7, 9, 11, 13, 15$ ;
- dîner $3$ : $0, 3, 6, 9, 12, 15, 1, 4, 7, 10, 13, 16, 2, 5, 8, 11, 14$.

Au dîner $i$, on fait le tour des numéros en avançant de $i$ à chaque place, et en enlevant $17$ quand on dépasse $16$. Il faut vérifier deux choses.

*Chacun a bien une place, et une seule.* Supposons que deux places différentes $p$ et $p'$, avec $p < p'$, reçoivent la même personne. Alors $i \times p$ et $i \times p'$ ont le même reste dans la division par $17$, donc $17$ divise leur différence $i \times (p' - p)$. Or $17$ est un nombre premier : s'il divise un produit, il apparaît dans la décomposition en facteurs premiers de l'un des deux facteurs, donc il divise $i$ ou $p' - p$. Mais $1 \leqslant i \leqslant 8$ et $1 \leqslant p' - p \leqslant 16$, et $17$ ne divise aucun de ces nombres. C'est impossible. Les $17$ places reçoivent donc $17$ personnes différentes : tout le monde est assis, une seule fois.

*Aucune paire de voisins ne se répète.* Disons que l'**écart** entre deux personnes $x$ et $y$ est le plus petit des deux nombres $|x - y|$ et $17 - |x - y|$. C'est la distance entre $x$ et $y$ sur une horloge qui aurait $17$ heures, numérotées de $0$ à $16$. L'écart est un entier entre $1$ et $8$.

Prenons deux places voisines $p$ et $p + 1$ au dîner $i$. Leurs occupants sont $a$, le reste de $i \times p$, et $b$, le reste de $i \times p + i$. En ajoutant $i$ à $a$, on obtient soit $b$ directement, soit $b + 17$. Donc $|b - a|$ vaut $i$ ou $17 - i$, et dans les deux cas l'écart entre $a$ et $b$ est $i$, puisque $i \leqslant 8$. Cela marche aussi pour les places $16$ et $0$ : la personne de la place $0$ est $0$, qui est aussi le reste de $i \times 17$.

Ainsi, **au dîner numéro $i$, deux voisins ont toujours un écart égal à $i$**. Deux personnes dont l'écart vaut $d$ ne peuvent donc être voisines qu'au dîner numéro $d$, et jamais à un autre. Les huit dîners conviennent.

**c) Dix-huit personnes : huit dîners.** On garde les huit dîners précédents et on glisse la dix-huitième personne, appelons-la $Z$, entre deux voisins à chaque dîner. Comme en b), cela ne crée aucune paire répétée entre les dix-sept premiers. Il suffit que les $16$ voisins de $Z$ soient tous différents.

Au dîner $i$, chaque personne $x$ a pour voisins les deux personnes à l'écart $i$ de $x$ (il y en a exactement deux). On peut donc placer $Z$ :

| Dîner | $Z$ entre | | Dîner | $Z$ entre |
|---|---|---|---|---|
| $1$ | $3$ et $4$ | | $5$ | $1$ et $6$ |
| $2$ | $11$ et $13$ | | $6$ | $9$ et $15$ |
| $3$ | $2$ et $5$ | | $7$ | $0$ et $7$ |
| $4$ | $10$ et $14$ | | $8$ | $8$ et $16$ |

Dans chaque ligne, les deux personnes ont pour écart le numéro du dîner, donc elles sont bien voisines ce soir-là. Et les seize numéros $3, 4, 11, 13, 2, 5, 10, 14, 1, 6, 9, 15, 0, 7, 8, 16$ sont tous différents (seul $12$ manque). $Z$ a donc bien deux nouveaux voisins à chaque dîner.

**Conclusion.** Sept ou huit amis peuvent dîner au plus **trois** fois, et dix-sept ou dix-huit amis au plus **huit** fois. Dans les quatre cas, ce nombre maximum est vraiment atteint.

## Going further

Pour $5$ personnes, combien de dîners au plus ? Et pour $6$ ? Trouve les placements.

La méthode du c) marche dès que le nombre de personnes est un nombre premier. On peut démontrer que la limite $2k \leqslant n - 1$ est atteinte pour tout nombre $n$ de personnes, mais la construction est plus délicate quand $n$ n'est pas premier. Essaie avec $n = 9$ : il faudrait quatre dîners.
