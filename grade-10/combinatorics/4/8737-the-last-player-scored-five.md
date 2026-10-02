---
id: "8737"
title: "Le dernier du tournoi a marqué cinq points"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [tournoi, double-comptage, minimum, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024, cours de Groupe A"
  reference: "poly_valbonne_2024.pdf, Groupe A, « Principe de l'extremum » (Aimeric), exercice 8"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Dans un tournoi, chaque participant rencontre chacun des autres **deux fois**. Chaque partie donne un point au vainqueur et zéro au perdant : il n'y a pas de match nul.

À la fin du tournoi, le dernier du classement a récolté $5$ points.

Combien y a-t-il de participants au minimum ?

## Hints

1. Si le dernier a $5$ points, que peut-on dire des points de tous les autres ?
2. Compte le nombre total de points distribués de deux façons : d'abord en additionnant les points des joueurs, ensuite en comptant les parties.
3. Combien de parties se jouent en tout s'il y a $n$ participants ? Attention, chaque paire se rencontre deux fois.
4. Tu obtiendras une inégalité sur $n$. Puis il faudra **construire** un tournoi qui réalise le minimum : essaie de faire en sorte que tout le monde ait exactement $5$ points.

## Solution

**Réponse : il faut au moins $6$ participants, et $6$ suffisent.**

Notons $n$ le nombre de participants.

### Étape 1 : le total des points

*Premier comptage, par joueur.* Le dernier du classement a $5$ points, donc **tous** les joueurs ont au moins $5$ points. Le total des points est donc au moins

$$5n .$$

*Second comptage, par partie.* Chaque paire de joueurs se rencontre deux fois. Le nombre de paires est $\binom{n}{2} = \dfrac{n(n-1)}{2}$, donc le nombre de parties vaut

$$2 \times \frac{n(n-1)}{2} = n(n-1) .$$

Chaque partie distribue exactement un point (un au vainqueur, zéro au perdant). Le total des points vaut donc exactement

$$n(n-1) .$$

### Étape 2 : l'inégalité

En rapprochant les deux comptages :

$$5n \;\leqslant\; n(n-1) .$$

Comme $n > 0$, on peut diviser par $n$ :

$$5 \leqslant n - 1, \qquad \text{c'est-à-dire} \qquad n \geqslant 6 .$$

### Étape 3 : six participants suffisent

Il faut maintenant montrer qu'un tournoi à $6$ participants peut vraiment se terminer avec un dernier à $5$ points.

Organisons-le ainsi : **contre chaque adversaire, chaque joueur gagne exactement une des deux parties.** C'est possible : pour chaque paire de joueurs, on décide que l'un gagne la première rencontre et l'autre la seconde.

Chaque joueur affronte $5$ adversaires et gagne une partie contre chacun : il marque donc exactement

$$5 \text{ points.}$$

Tout le monde a $5$ points, donc le dernier du classement en a $5$. La condition de l'énoncé est bien réalisée.

*Vérification globale.* Le total des points vaut $6 \times 5 = 30$, et le nombre de parties vaut $6 \times 5 = 30$. Tout est cohérent.

### Conclusion

$$\boxed{\text{Il y a au minimum } 6 \text{ participants.}}$$

*Sur la méthode.* Comme dans tous les problèmes de minimum, la réponse se démontre en deux temps : une **majoration ou minoration** qui exclut les petites valeurs, et une **construction** qui réalise la valeur annoncée. Sans la construction, on n'aurait prouvé que « au moins $6$ », sans savoir si $6$ est atteignable.

## Going further

1. Même question si le dernier a récolté $k$ points au lieu de $5$. Quelle est la réponse en fonction de $k$ ?

2. Même question si chaque paire ne se rencontre qu'**une** fois. Attention, cette fois le nombre de points par joueur n'est plus forcément entier si on ajoute les matchs nuls : reste sans matchs nuls.

3. Dans le tournoi à $6$ participants construit ci-dessus, tout le monde est à égalité. Peut-on construire un tournoi à $6$ participants où le dernier a $5$ points et où le premier en a **strictement plus** ? Justifie ta réponse par un comptage.
