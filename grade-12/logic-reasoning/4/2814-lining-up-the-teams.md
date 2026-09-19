---
id: "2814"
title: "Ranger les équipes en file"
grade: 12
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [recurrence, tournoi, graphe, classement]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School I, Proofs using Induction"
  reference: "Handout-772-875.pdf, problème 4"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-772-875.pdf"
---

## Statement

Un championnat réunit $n$ équipes. Chaque équipe rencontre chacune des autres exactement une fois, et **aucun match ne se termine par un match nul** : il y a toujours un vainqueur.

Démontrer qu'on peut toujours numéroter les équipes $E_1, E_2, \ldots, E_n$ de telle sorte que

$$E_1 \text{ ait battu } E_2, \quad E_2 \text{ ait battu } E_3, \quad \ldots, \quad E_{n-1} \text{ ait battu } E_n .$$

*(Attention : on ne demande pas un classement au sens habituel. $E_1$ n'est pas forcément la meilleure équipe, et $E_n$ peut très bien avoir battu $E_1$.)*

## Hints

1. Essaie d'abord à la main avec $n = 3$ et $n = 4$. Trouve un cas où trois équipes se battent « en rond » : $A$ bat $B$, $B$ bat $C$, $C$ bat $A$. La file existe-t-elle quand même ?
2. Raisonne par récurrence sur le nombre d'équipes.
3. Pour l'hérédité : prends un championnat à $n+1$ équipes, mets-en une de côté, et applique l'hypothèse de récurrence aux $n$ autres.
4. Il reste à glisser l'équipe mise de côté quelque part dans la file obtenue. Où ? Regarde d'abord si elle a battu la toute première.
5. Sinon, avance dans la file jusqu'à la **première** équipe que l'équipe mise de côté a battue. Que sais-tu alors de l'équipe qui la précède ?

## Solution

**Un avertissement utile.**

Un tel championnat peut parfaitement contenir des « cycles » : $A$ bat $B$, $B$ bat $C$, et $C$ bat $A$. Il n'y a donc pas toujours de classement cohérent du meilleur au moins bon. Pourtant, la file demandée existe toujours — ici, par exemple, $A, B, C$ convient, même si $C$ a battu $A$. La file ne dit rien de plus que : chacun a battu son voisin de droite.

**Démonstration par récurrence sur $n$.**

Soit $P(n)$ la propriété : « dans tout championnat à $n$ équipes où chaque paire s'est rencontrée une fois sans match nul, on peut ranger les équipes en file de sorte que chacune ait battu la suivante ».

**Initialisation.** Pour $n = 1$, la file est constituée de l'unique équipe et il n'y a aucune condition à vérifier : $P(1)$ est vraie. (Pour $n = 2$, on met en tête celle qui a gagné le match.)

**Hérédité.** Supposons $P(n)$ vraie pour un entier $n \geqslant 1$, et considérons un championnat à $n+1$ équipes.

Mettons de côté une équipe, appelons-la $X$. Les $n$ équipes restantes ont elles aussi joué les unes contre les autres exactement une fois, sans match nul : l'hypothèse de récurrence s'applique. Il existe donc une file

$$E_1, \; E_2, \; \ldots, \; E_n$$

dans laquelle chaque équipe a battu la suivante. Il reste à insérer $X$.

*Premier cas : $X$ a battu $E_1$.* On place $X$ en tête :

$$X, \; E_1, \; E_2, \; \ldots, \; E_n .$$

Toutes les conditions sont remplies : $X$ a battu $E_1$, et le reste de la file était déjà correct.

*Deuxième cas : $X$ n'a battu aucune des équipes $E_1, \ldots, E_n$.* On place $X$ à la fin :

$$E_1, \; E_2, \; \ldots, \; E_n, \; X .$$

En effet, $E_n$ a joué contre $X$ et, puisque $X$ n'a battu personne, c'est $E_n$ qui a gagné.

*Troisième cas : les deux précédents sont exclus.* Alors $E_1$ a battu $X$, et $X$ a battu au moins une équipe de la file. Notons $i$ le **plus petit** indice tel que $X$ ait battu $E_i$. Comme $E_1$ a battu $X$, on a $i \geqslant 2$, donc l'équipe $E_{i-1}$ existe. Et par minimalité de $i$, $X$ n'a pas battu $E_{i-1}$ : c'est donc $E_{i-1}$ qui a battu $X$.

On insère alors $X$ entre $E_{i-1}$ et $E_i$ :

$$E_1, \; \ldots, \; E_{i-1}, \; X, \; E_i, \; \ldots, \; E_n .$$

Les deux nouvelles conditions à vérifier sont : $E_{i-1}$ a battu $X$ (vrai, on vient de le voir) et $X$ a battu $E_i$ (vrai, par définition de $i$). Toutes les autres conditions sont celles de la file de départ, inchangées.

Dans les trois cas, on obtient une file valable pour les $n+1$ équipes : $P(n+1)$ est vraie.

**Conclusion.** Par récurrence, $P(n)$ est vraie pour tout $n \geqslant 1$ : dans un tel championnat, on peut toujours ranger les équipes en file de sorte que chacune ait battu la suivante.

**Un exemple.** Trois équipes en cycle, $A$ bat $B$, $B$ bat $C$, $C$ bat $A$. Ajoutons $D$ qui perd contre $A$ et $B$ et gagne contre $C$. La file $A, B, C$ convient pour les trois premières ; $D$ n'a pas battu $A$, mais a battu $C$, donc le plus petit indice est $i = 3$, et on insère $D$ entre $B$ et $C$ : la file $A, B, D, C$ convient.

## Going further

1. Combien de files valables y a-t-il quand les $n$ équipes forment un classement strict (l'équipe $1$ bat tout le monde, l'équipe $2$ bat tout le monde sauf la $1$, etc.) ?
2. Dans le cycle à trois équipes $A \to B \to C \to A$, combien de files valables y a-t-il ?
3. Peut-on toujours ranger les équipes **en rond**, de sorte que chacune ait battu sa voisine dans le sens des aiguilles d'une montre ? Chercher un contre-exemple à quatre équipes, puis trouver la condition qui manque.
