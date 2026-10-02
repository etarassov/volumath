---
id: "12409"
title: "Bob doit poser toutes les questions"
grade: 12
theme: logic-reasoning
difficulty: 5
duration_min: 60
tags: [strategie, information, graphe, routes, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 10 janvier 2018"
  reference: "2018-01_pofm-2017-2018-test-janvier.pdf, exercices du groupe A, exercice 6 ; corrigé 2018-01_pofm-2017-2018-test-janvier-corrige.pdf (solution réécrite avec une stratégie explicite pour Alice)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/01/pofm-2017-2018-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2018-01_pofm-2017-2018-test-janvier.pdf"
---

## Statement

Un pays compte $64$ villes. Certaines paires de villes sont reliées par une route directe, mais
Bob ne sait pas lesquelles. Les routes se parcourent dans les deux sens, et elles ne se croisent
pas (si deux routes se rencontrent, l'une passe au-dessus de l'autre).

Alice, elle, connaît parfaitement le réseau. Bob peut choisir n'importe quelle paire de villes et
demander à Alice si ces deux villes sont reliées directement par une route. Alice répond toujours
la vérité.

Le but de Bob est de savoir si l'on peut aller de n'importe quelle ville à n'importe quelle autre,
en empruntant éventuellement plusieurs routes à la suite.

Montrer qu'aucune stratégie ne permet à Bob d'en être sûr, dans tous les cas, en posant moins de
$2016$ questions.

## Hints

1. Combien y a-t-il de paires de villes ? Il s'agit de montrer que, dans le pire des cas, Bob doit
   poser une question sur **chaque** paire.
2. Imagine qu'Alice n'a pas encore choisi le réseau et qu'elle répond au fur et à mesure, de façon
   à embêter Bob le plus possible, tout en restant cohérente. Il suffit de montrer que, tant qu'une
   paire n'a pas été demandée, les deux réponses finales (« tout est relié » et « pas tout est
   relié ») restent possibles.
3. Une stratégie pour Alice : elle répond « non » chaque fois que c'est possible sans rendre le
   réseau à coup sûr non relié, c'est-à-dire si le réseau formé des routes déjà confirmées et des
   paires pas encore demandées reste tout relié sans cette paire. Sinon, elle répond « oui ».
4. Avec cette stratégie, montre que les routes confirmées seules ne relient jamais tout le pays
   tant qu'il reste une paire non demandée. Regarde la route confirmée la plus récente sur un
   chemin.

## Solution

Il y a $\dfrac{64 \times 63}{2} = 2016$ paires de villes. Il faut donc montrer que, dans certains
cas, Bob doit poser une question sur **toutes** les paires avant de pouvoir conclure.

Dans toute la solution, on dit qu'un réseau est **relié** si l'on peut aller de toute ville à
toute autre en suivant ses routes.

### L'idée : Alice construit le réseau au fur et à mesure

La stratégie de Bob décide de chaque question en fonction des réponses précédentes. Il suffit de
montrer qu'Alice peut répondre à ses questions, une par une, de telle sorte que :

- ses réponses soient toujours cohérentes avec au moins un réseau relié **et** avec au moins un
  réseau non relié, tant qu'une paire n'a pas été demandée.

Ces réponses correspondent à un vrai réseau (on le fixe à la fin), et pour ce réseau, Bob ne peut
pas conclure avant la $2016^{\text{e}}$ question.

À chaque instant, notons $O$ l'ensemble des paires pour lesquelles Alice a répondu « oui »
(routes confirmées) et $I$ l'ensemble des paires pas encore demandées.

**La règle d'Alice.** Quand Bob demande une paire $e$ :

- si le réseau formé des routes de $O$ et des paires de $I$ **autres que $e$** est relié, elle
  répond « non » ;
- sinon, elle répond « oui ».

### Étape 1 : le réseau $O \cup I$ reste toujours relié

Au départ, $O$ est vide et $I$ contient toutes les paires : le réseau $O \cup I$ relie
directement toutes les villes. Ensuite :

- si Alice répond « non » à $e$, le nouveau réseau $O \cup I$ est l'ancien sans $e$, qui est
  relié d'après la règle ;
- si elle répond « oui », la paire $e$ passe de $I$ à $O$ : le réseau $O \cup I$ ne change pas.

Donc $O \cup I$ est toujours relié. Autrement dit, si toutes les paires non demandées étaient des
routes, le réseau serait relié.

### Étape 2 : tant que $I$ n'est pas vide, le réseau $O$ seul n'est pas relié

Supposons au contraire qu'à un moment, il reste une paire non demandée $e = \{X, Y\}$ et que le
réseau $O$ seul soit relié. Il existe alors un chemin de $X$ à $Y$ formé uniquement de routes
confirmées. Parmi les routes de ce chemin, considérons celle, notée $f$, pour laquelle Alice a
répondu « oui » **en dernier**.

Revenons au moment où Bob a demandé $f$. À ce moment-là :

- les autres routes du chemin étaient déjà confirmées, donc dans $O$ ;
- la paire $e$ n'avait pas encore été demandée (elle ne l'est toujours pas), donc elle était dans
  $I$.

Le chemin, complété par la paire $e$, forme une boucle qui passe par $f$. Sans $f$, on peut donc
toujours aller d'une extrémité de $f$ à l'autre en faisant le reste du tour de la boucle, avec
des paires de $O$ et de $I$. Ainsi, enlever $f$ au réseau $O \cup I$ (relié d'après l'étape 1) ne
le déconnecte pas : tout trajet qui utilisait $f$ peut faire le détour. D'après sa règle, Alice
aurait alors répondu « non » à $f$. C'est une contradiction.

Donc, tant qu'une paire n'a pas été demandée, le réseau $O$ des routes confirmées n'est pas
relié.

### Étape 3 : conclusion

Supposons que Bob ait posé moins de $2016$ questions. Il reste au moins une paire non demandée.
Les réponses d'Alice sont alors compatibles avec deux réseaux :

- celui où toutes les paires non demandées sont des routes : c'est $O \cup I$, relié (étape 1) ;
- celui où aucune paire non demandée n'est une route : c'est $O$, non relié (étape 2).

Bob ne peut donc pas savoir si le pays est relié. **Aucune stratégie ne lui permet de conclure à
coup sûr avec moins de $2016$ questions** : face à Alice, il doit demander toutes les paires.
