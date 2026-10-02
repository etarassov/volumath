---
id: "4801"
title: "Tous les chevaux ont la même couleur"
grade: 12
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [recurrence, raisonnement-faux, initialisation, heredite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Introduction to Induction (Olga Radko)"
  reference: "handoutId10-0.pdf, section 2 « A paradox »"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/handoutId10-0.pdf"
---

## Statement

Voici une « démonstration » due au mathématicien George Pólya.

> **Théorème.** Tous les chevaux du monde ont la même couleur.
>
> **« Démonstration » par récurrence.** Pour $n \geqslant 1$, on note $P(n)$ l'affirmation :
> « dans n'importe quel groupe de $n$ chevaux, tous les chevaux ont la même couleur ».
>
> *Initialisation.* $P(1)$ est vraie : dans un groupe formé d'un seul cheval, tous les chevaux
> ont évidemment la même couleur.
>
> *Hérédité.* Supposons $P(n)$ vraie et prenons un groupe de $n+1$ chevaux, numérotés
> $1, 2, \ldots, n+1$. Considérons les deux groupes
> $$A = \{1, 2, \ldots, n\} \qquad \text{et} \qquad B = \{2, 3, \ldots, n+1\}.$$
> Chacun compte $n$ chevaux, donc par hypothèse de récurrence les chevaux de $A$ ont tous la
> même couleur, et les chevaux de $B$ aussi. Comme $A$ et $B$ ont des chevaux en commun, ces
> deux couleurs sont la même, et les $n+1$ chevaux ont tous la même couleur. Donc $P(n+1)$
> est vraie.
>
> *Conclusion.* $P(n)$ est vraie pour tout $n \geqslant 1$. En particulier, en prenant pour $n$
> le nombre de chevaux du monde, tous les chevaux ont la même couleur. $\square$

La conclusion est fausse. Où est l'erreur ?

## Hints

1. L'initialisation est-elle correcte ? Et le principe de récurrence lui-même ?
2. L'erreur est donc dans l'hérédité. Un raisonnement peut être correct pour presque toutes les valeurs de $n$ et faux pour une seule : cela suffit à tout casser.
3. Essaie l'hérédité « à la main » pour la toute première valeur : écris les groupes $A$ et $B$ quand $n = 1$, c'est-à-dire quand on passe de $1$ cheval à $2$ chevaux.
4. Le texte affirme que $A$ et $B$ ont des chevaux en commun. Vérifie-le dans le cas que tu viens d'écrire.

## Solution

**L'initialisation est juste.** Un groupe d'un seul cheval est bien monochrome.

**L'erreur est dans l'hérédité, et seulement pour $n = 1$.**

Reprenons le passage de $n$ à $n+1$ dans le cas $n = 1$. Le groupe a $2$ chevaux, numérotés $1$ et $2$, et les deux sous-groupes sont
$$A = \{1\} \qquad \text{et} \qquad B = \{2\}.$$

L'argument dit : « comme $A$ et $B$ ont des chevaux en commun, les deux couleurs sont la même ». Mais ici $A$ et $B$ n'ont **aucun** cheval en commun ! $A$ contient le cheval $1$, $B$ contient le cheval $2$, et c'est tout. Rien ne relie la couleur du premier cheval à celle du second.

L'implication $P(1) \Rightarrow P(2)$ n'est donc pas démontrée.

**Pourquoi cela ruine tout.** Le principe de récurrence a besoin de la chaîne complète
$$P(1) \Rightarrow P(2) \Rightarrow P(3) \Rightarrow \cdots$$
Si un seul maillon manque, on ne peut plus avancer. Ici c'est le tout premier maillon qui manque : de $P(1)$ on ne déduit rien, et tout ce qui vient après reste inaccessible.

Notons que pour $n \geqslant 2$ le raisonnement est, lui, parfaitement correct : les groupes $A = \{1, \ldots, n\}$ et $B = \{2, \ldots, n+1\}$ partagent alors le cheval $2$. L'hérédité fonctionne donc à partir de $n = 2$. Autrement dit, la « démonstration » établit bel et bien :
$$P(2) \Rightarrow P(3) \Rightarrow P(4) \Rightarrow \cdots$$
Il ne manque que $P(2)$ pour tout démarrer... et $P(2)$ est précisément fausse, puisqu'il existe deux chevaux de couleurs différentes.

**Réponse : l'hérédité est en défaut pour $n = 1$, car les deux sous-groupes de $n$ chevaux ne se chevauchent pas dans ce cas. La chaîne des implications est cassée dès le premier maillon.**

## Going further

1. La même « démonstration » sert à prouver que toutes les personnes ont la même taille, ou que tous les exercices sont aussi difficiles les uns que les autres. Rédige l'une de ces versions et repère l'erreur au même endroit.
2. Une récurrence peut aussi échouer par l'initialisation. Considère l'affirmation $Q(n)$ : « $n^2 + n + 1$ est pair ». Montre que $Q(n) \Rightarrow Q(n+1)$ est... à vérifier soigneusement, puis regarde si $Q(1)$ est vraie. Que conclure ?
3. Invente une affirmation $R(n)$ fausse pour tout $n$, mais telle que $R(n) \Rightarrow R(n+1)$ soit vraie pour tout $n$.
