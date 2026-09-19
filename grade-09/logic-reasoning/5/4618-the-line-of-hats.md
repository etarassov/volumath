---
id: "4618"
title: "La file de chapeaux"
grade: 9
theme: logic-reasoning
difficulty: 5
duration_min: 45
tags: [strategie, parite, information, chapeaux, majoration]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Beginners 2, Logic Puzzles: Wizards and Hats"
  reference: "Handout-2493-2192.pdf, « Challenge Problem » (réponse dans Handout-2584-2233.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2493-2192.pdf"
---

## Statement

$n$ élèves sont assis en file indienne. On pose sur la tête de chacun un chapeau, jaune ou vert.
Le professeur choisit les couleurs comme il veut, et il peut y avoir n'importe quel nombre de
chapeaux de chaque couleur.

Chaque élève voit tous les chapeaux des élèves **placés devant lui**. Il ne voit ni le sien, ni
ceux des élèves placés derrière lui.

Le professeur interroge les élèves un par un, en commençant par celui du fond, qui voit tous les
autres, puis en remontant la file jusqu'à celui de devant, qui ne voit personne. Chaque élève
annonce à voix haute une couleur, et **tout le monde l'entend**. Il n'a pas le droit de dire
autre chose, ni de faire le moindre signe.

Les élèves peuvent se mettre d'accord sur une stratégie **avant** que les chapeaux soient posés,
mais plus du tout ensuite.

Quel est le plus grand nombre de réponses justes qu'ils peuvent garantir, quels que soient les
chapeaux choisis par le professeur ?

## Hints

1. Commence par $n = 2$, puis $n = 3$, pour sentir ce qui se passe.
2. L'élève du fond ne peut rien savoir de son propre chapeau. En revanche, il voit tout le monde.
   Sa réponse peut donc servir à transmettre un renseignement aux autres.
3. Il n'a que deux mots à sa disposition : il ne peut transmettre qu'une information « oui ou
   non ». Quel renseignement, portant sur tous les chapeaux qu'il voit, serait utile à tous les
   autres à la fois ?
4. Pense à la parité : le nombre de chapeaux verts qu'il voit est pair, ou il est impair.
5. Pour la majoration : y a-t-il quelqu'un dont le chapeau n'est vu par personne, et dont la
   couleur n'influence donc aucune réponse ?

## Solution

**La réponse est $n - 1$.**

Numérotons les élèves de $1$ à $n$ en partant du fond : l'élève $1$ voit les $n-1$ autres,
l'élève $2$ voit les élèves $3, 4, \ldots, n$, et ainsi de suite jusqu'à l'élève $n$, qui ne voit
personne. Ils sont interrogés dans cet ordre.

**Première partie : ils ne peuvent pas garantir $n$ réponses justes.**

Le chapeau de l'élève $1$ n'est vu par personne. Aucune des réponses données ne peut donc dépendre
de sa couleur : si le professeur changeait uniquement le chapeau de l'élève $1$, absolument tout
se déroulerait de la même façon, et l'élève $1$ donnerait la même réponse.

Le professeur, qui connaît la stratégie, peut donc toujours choisir pour l'élève $1$ la couleur
que celui-ci ne dira pas. L'élève $1$ se trompe alors, et au mieux $n - 1$ réponses sont justes.

**Seconde partie : ils peuvent garantir $n - 1$ réponses justes.**

Voici la stratégie convenue à l'avance.

*L'élève 1 annonce une parité.* Il compte les chapeaux verts qu'il voit devant lui, c'est-à-dire
parmi les élèves $2, 3, \ldots, n$. Puis il dit :

- « vert » si ce nombre est **impair** ;
- « jaune » si ce nombre est **pair**.

Sa propre réponse a peu de chances d'être juste, tant pis : elle sert de message.

*Les autres déduisent.* Après cette annonce, tous les élèves de $2$ à $n$ connaissent la parité du
nombre de chapeaux verts portés par les élèves $2$ à $n$, c'est-à-dire par eux-mêmes tous
ensemble.

Prenons l'élève $k$, avec $k \geqslant 2$, au moment où on l'interroge. Il connaît trois choses :

- la parité du nombre de verts parmi les élèves $2$ à $n$, grâce à l'annonce de l'élève $1$ ;
- les couleurs des élèves $2$ à $k-1$, car il les a entendues, et ces réponses-là sont justes
  (c'est ce que nous sommes en train de démontrer, de proche en proche) ;
- les couleurs des élèves $k+1$ à $n$, car il les voit.

Il connaît donc la couleur de **tous** les élèves de $2$ à $n$ sauf la sienne. Il compte les verts
qu'il connaît ainsi. Si cette parité est la même que celle annoncée par l'élève $1$, c'est que son
propre chapeau n'ajoute pas de vert : il est jaune. Sinon, il est vert.

Il annonce cette couleur, et il a raison.

*Pourquoi ce raisonnement est-il valide de proche en proche ?* L'élève $2$ n'a besoin d'aucune
réponse intermédiaire : il voit tous les élèves $3$ à $n$ et déduit la sienne. Il a donc raison.
L'élève $3$ utilise la réponse de l'élève $2$, qui vient d'être reconnue juste, et il a raison à
son tour. Et ainsi de suite jusqu'à l'élève $n$.

Les $n-1$ élèves numérotés de $2$ à $n$ répondent donc tous correctement.

**Conclusion.** Le nombre maximal de réponses justes que les élèves peuvent garantir est
$$n - 1 .$$

## Going further

Un petit exemple à trois élèves, avec les chapeaux jaune, jaune, vert dans l'ordre $1$, $2$, $3$.

L'élève $1$ voit un jaune et un vert : un seul vert, nombre impair, il dit « vert » (et il se
trompe, son chapeau est jaune). L'élève $2$ voit un vert devant lui : la parité annoncée est déjà
atteinte, donc son chapeau est jaune. Il dit « jaune » : juste. L'élève $3$ a entendu « impair »
puis « jaune » : le vert manquant ne peut être que le sien. Il dit « vert » : juste.

Remarque enfin que la stratégie ne marcherait plus si les élèves ne s'entendaient pas les uns les
autres, ou si le professeur les interrogeait en commençant par l'avant de la file.
