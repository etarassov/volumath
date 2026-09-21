---
id: "8842"
title: "Le dernier du tournoi a marqué 5 points"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [tournoi, denombrement, minimum, construction]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Combinatoire : Principe de l'extremum » (Théo et Noam), exercice 14, p. 117"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Dans un tournoi, chaque participant rencontre chaque adversaire **deux fois**. Une victoire rapporte $1$ point, une défaite $0$ point, et il n'y a pas de match nul.

À la fin du tournoi, le dernier du classement a récolté $5$ points.

Combien y a-t-il de participants au minimum ?

## Hints

1. Si le dernier a $5$ points, que peut-on dire des points de tous les autres ?
2. Compte le nombre total de matchs joués, puis le nombre total de points distribués. Chaque match distribue combien de points ?
3. Tu obtiens une inégalité sur le nombre $n$ de participants. Résous-la.
4. Pour montrer que le nombre trouvé est atteint, il faut construire un tournoi concret. Cherche le plus symétrique possible.

## Solution

Notons $n$ le nombre de participants.

### Partie 1 : il faut au moins $6$ participants

**Nombre de points distribués.** Chaque paire de participants se rencontre deux fois, et il y a $\binom{n}{2} = \dfrac{n(n-1)}{2}$ paires. Le nombre de matchs vaut donc
$$2 \times \frac{n(n-1)}{2} = n(n-1) .$$
Chaque match distribue exactement $1$ point (au vainqueur). Le total des points est donc $n(n-1)$.

**Minoration par le dernier.** Le dernier du classement a $5$ points, donc tous les autres en ont au moins $5$ : le total vaut au moins $5n$.

**On rassemble.**
$$n(n-1) \geqslant 5n .$$
Comme $n > 0$, on peut diviser par $n$ :
$$n - 1 \geqslant 5, \qquad \text{donc} \qquad n \geqslant 6 .$$

### Partie 2 : $6$ participants, c'est possible

Prenons $6$ participants et décidons que, pour chaque paire, chacun gagne **une** des deux rencontres et perd l'autre.

Chaque participant joue $2 \times 5 = 10$ matchs, et en gagne exactement $5$ (un contre chacun des cinq autres). Tous les participants terminent donc avec $5$ points ; en particulier le dernier du classement a bien $5$ points.

### Conclusion

$$\boxed{\text{Il y a au minimum } 6 \text{ participants.}}$$

### Remarque

Dans la construction, tout le monde est à égalité. L'énoncé ne l'interdit pas : « le dernier a récolté $5$ points » signifie que le plus petit score vaut $5$, et cela reste vrai si tout le monde a $5$ points.

## Going further

Même question si le dernier du classement a $k$ points, pour un entier $k \geqslant 1$ quelconque : combien faut-il de participants au minimum ?
