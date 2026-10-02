---
id: "1601"
title: "Les cinquante spectateurs et la place perdue"
grade: 12
theme: probability-statistics
difficulty: 4
duration_min: 30
tags: [probabilite, symetrie, denombrement, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2A, Group Competition"
  reference: "Handout-2698-2323.pdf, problème 9 (réponse dans Handout-2710-2323.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2698-2323.pdf"
---

## Statement

Cinquante spectateurs font la queue devant une salle de cinéma. Chacun a une place numérotée
indiquée sur son billet, et il y a exactement cinquante places.

La première personne de la queue a perdu son billet : elle entre et s'assoit sur une place
choisie au hasard, chaque place libre ayant la même chance d'être choisie.

Ensuite, chaque spectateur entre à son tour :

- si sa place est libre, il s'y assoit ;
- si sa place est déjà occupée, il s'assoit sur une place libre choisie au hasard, chaque
  place libre ayant la même chance d'être choisie.

Quelle est la probabilité que le cinquantième spectateur, le dernier à entrer, s'assoie
bien à sa place ?

## Hints

1. Commence par un cas minuscule : trois spectateurs, trois places. Fais la liste de tous les scénarios possibles et calcule la probabilité. Recommence avec quatre spectateurs.
2. Personne ne se relève jamais : une place occupée le reste jusqu'à la fin. Que peut-on en déduire sur la place qui reste libre au moment où le dernier spectateur entre ?
3. Montre que cette dernière place libre est forcément la place n° 1 ou la place n° 50, et aucune autre.
4. Intéresse-toi au premier instant où quelqu'un s'assoit sur la place n° 1 ou sur la place n° 50. Juste avant cet instant, ces deux places sont encore libres toutes les deux. Que fait la personne qui s'assoit à cet instant ?

## Solution

**L'idée : tout se joue entre deux places seulement, la place n° 1 et la place n° 50, et ces
deux places jouent exactement le même rôle.**

Numérotons les spectateurs de 1 à 50 dans l'ordre où ils entrent, et notons que le
spectateur $k$ a le billet de la place $k$. Remarquons d'emblée qu'une place occupée le
reste : personne ne se relève.

**Étape 1. À la fin, la place libre est la place 1 ou la place 50.**

Quand le dernier spectateur entre, il reste exactement une place libre. Appelons-la $k$.

Supposons $2 \le k \le 49$. Le spectateur $k$ est entré avant, et à ce moment la place $k$
était libre (elle l'est encore maintenant, et une place libre à la fin a été libre tout le
temps). D'après la règle, il s'y est donc assis. C'est absurde, puisque la place $k$ est
libre à la fin.

Il reste donc deux possibilités : la place libre est la place 50, et le dernier spectateur
s'y assoit, ou bien c'est la place 1, et le dernier spectateur trouve sa propre place prise.

**Étape 2. Qui choisit au hasard, et parmi quoi ?**

Un spectateur choisit au hasard uniquement quand il trouve sa place occupée. Appelons
*tirage* un tel choix au hasard ; le tout premier spectateur en fait un, lui aussi.

Observons la chose suivante : **tant que ni la place 1 ni la place 50 n'ont été prises, ces
deux places sont libres au moment de chaque tirage.** C'est évident pour la place 1 et pour
la place 50 : elles ne sont prises ni par leur propriétaire (le spectateur 1 n'a pas de
billet utilisable, le spectateur 50 n'est pas encore entré), ni par personne d'autre par
hypothèse.

**Étape 3. La symétrie.**

D'après l'étape 1, exactement une des deux places 1 et 50 finit par être occupée avant
l'arrivée du dernier spectateur. Considérons le premier tirage qui tombe sur l'une de ces
deux places. Juste avant ce tirage, les places 1 et 50 sont libres toutes les deux, et la
personne qui tire choisit uniformément parmi les places libres : les places 1 et 50 ont donc
exactement la même probabilité d'être choisies.

Sachant que ce tirage tombe sur l'une des deux, il tombe donc sur la place 1 avec la
probabilité $\dfrac12$ et sur la place 50 avec la probabilité $\dfrac12$.

Or :

- s'il tombe sur la place 1, plus personne n'est délogé ensuite (toutes les places restantes
  appartiennent à des spectateurs qui ne sont pas encore entrés), donc le dernier spectateur
  trouve sa place libre : c'est gagné ;
- s'il tombe sur la place 50, la place du dernier spectateur est prise : c'est perdu.

**Conclusion.**

$$P(\text{le dernier spectateur s'assoit à sa place}) = \frac12 .$$

**Vérification sur trois spectateurs.** Le premier s'assoit sur la place 1 (probabilité
$\frac13$, c'est gagné), sur la place 2 (probabilité $\frac13$ : le spectateur 2 est délogé
et choisit entre les places 1 et 3, une chance sur deux de gagner), ou sur la place 3
(probabilité $\frac13$, c'est perdu). Au total
$$\frac13 + \frac13 \times \frac12 + 0 = \frac12 .$$

## Going further

Le raisonnement n'utilise jamais le nombre 50 : avec $n \ge 2$ spectateurs, la réponse est
toujours $\dfrac12$. C'est assez surprenant : on pourrait croire que plus la salle est
grande, plus le dernier spectateur a de chances de s'en tirer.
