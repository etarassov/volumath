---
id: "40810"
title: "L'ordre de passage des joueurs ne compte pas"
grade: 11
theme: probability-statistics
difficulty: 5
duration_min: 60
tags: [probabilite, independance, tournoi, tableau, denombrement, bijection, probabilites-totales, symetrie]
adapted_from: null
see_also: ["40808", "40809"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2022, mathématiques"
  reference: "cg-2022-s-sujet.pdf, problème 3 « Un tournoi par équipes », partie 4 « Une généralisation », questions 7 à 9"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2022-s-sujet.pdf"
---

## Statement

Si $E$ est un événement, on note $P(E)$ sa probabilité.

**Le tournoi.** Soit $A$ et $B$ deux équipes, d'effectifs $m \geqslant 1$ et $n \geqslant 1$. On
numérote les membres des équipes par ordre de passage : $A_1, \ldots, A_m$ et $B_1, \ldots, B_n$.
Lors de la première partie, $A_1$ joue contre $B_1$. À l'issue de chaque partie, une seule des deux
personnes est déclarée gagnante, et le perdant est éliminé. Le gagnant joue alors contre la
personne suivante de l'équipe adverse, et ainsi de suite jusqu'à ce qu'une équipe n'ait plus de
joueur : l'autre équipe a gagné le tournoi.

On suppose qu'il existe des réels strictement positifs $a_1, \ldots, a_m$ et $b_1, \ldots, b_n$
tels que, pour toute partie entre $A_i$ et $B_j$,
$$\frac{P(A_i \text{ gagne contre } B_j)}{P(B_j \text{ gagne contre } A_i)} = \frac{a_i}{b_j}.
\qquad (\star)$$
Comme les deux probabilités ont pour somme $1$, cela revient à dire que $A_i$ gagne contre $B_j$
avec la probabilité $\frac{a_i}{a_i + b_j}$, et $B_j$ gagne contre $A_i$ avec la probabilité
$\frac{b_j}{a_i + b_j}$.

**Le tableau.** En plus des parties du tournoi, on fait jouer chaque membre de l'équipe $A$ contre
chacun des membres de l'équipe $B$ qu'il n'a pas rencontrés pendant le tournoi. Ces parties
supplémentaires vérifient aussi $(\star)$, et les issues des $mn$ parties sont indépendantes. On
code leurs résultats dans un tableau de $m$ lignes et $n$ colonnes : dans la case de la ligne $i$
et de la colonne $j$, on écrit $A$ si $A_i$ a gagné contre $B_j$, et $B$ sinon.

Dans l'exemple où $m = n = 3$, $A_1$ bat $B_1$, puis $B_2$ bat $A_1$, $A_2$ et $A_3$, on obtient
un tableau de la forme suivante, où chaque « ? » cache un $A$ ou un $B$ selon le résultat d'une
partie supplémentaire.

|       | $B_1$ | $B_2$ | $B_3$ |
|:-----:|:-----:|:-----:|:-----:|
| $A_1$ | A     | B     | ?     |
| $A_2$ | ?     | B     | ?     |
| $A_3$ | ?     | B     | ?     |

On dit qu'un tableau est *gagnant* s'il correspond à un tournoi gagné par l'équipe $A$.

Quand $m = 2$, on dit qu'une colonne est *de type AB* si elle contient $A$ sur la première ligne
et $B$ sur la deuxième ; on définit de même les colonnes de type AA, BA et BB.

1. On suppose que $m = 2$. Décrire tous les tableaux gagnants, et montrer que, pour tout entier
   $n \geqslant 1$, il y a exactement $2^n + n\,2^{n-1}$ tableaux gagnants.
2. On suppose toujours que $m = 2$.

   a) On note $D$ le produit de tous les nombres $(a_1 + b_j)(a_2 + b_j)$ pour $j$ allant de $1$ à
   $n$ :
   $$D = \prod_{j=1}^{n} (a_1 + b_j)(a_2 + b_j).$$
   Pour un tableau $T$, gagnant ou non, on note $x_1$ et $x_2$ les nombres de parties gagnées par
   $A_1$ et par $A_2$, et, pour tout $j$, $y_j$ le nombre de parties gagnées par $B_j$. On organise
   un tournoi, avec ses parties supplémentaires, et on note $P_T$ la probabilité que les résultats
   des $mn$ parties donnent le tableau $T$. Exprimer $P_T$ en fonction de $D$, $a_1$, $a_2$,
   $x_1$, $x_2$, $b_1, \ldots, b_n$, $y_1, \ldots, y_n$.

   b) On suppose maintenant que $T$ est un tableau gagnant. On note $k$ son nombre de colonnes de
   type AB, et $\ell$ son nombre de colonnes de type BA.

   - i) Justifier que $T$ ne contient aucune colonne de type BB, et qu'aucune colonne de type AB
     n'est à droite d'une colonne de type BA.
   - ii) On construit un tableau $T'$ à partir de $T$ : on garde les colonnes de type AA à leur
     place ; dans les $k + \ell$ autres emplacements, pris de gauche à droite, on met $\ell$
     colonnes de type AB, puis $k$ colonnes de type BA. Démontrer que $T'$ est un tableau gagnant.
     Qu'obtient-on si l'on effectue la même transformation à partir de $T'$ ?

   c) Démontrer que la probabilité que l'équipe $A$ gagne le tournoi ne dépend pas de l'ordre
   choisi pour l'entrée de ses deux joueurs dans le tournoi.
3. On revient au cas général, avec $m$ quelconque. Démontrer que la probabilité que l'équipe $A$
   gagne le tournoi ne dépend pas de l'ordre choisi par chaque équipe pour l'entrée de ses joueurs
   dans le tournoi.

## Hints

1. **Question 1.** Distinguer selon que $A_1$ gagne toutes ses parties ou non. Dans le second cas,
   noter $B_j$ le joueur qui élimine $A_1$, et repérer les cases qui correspondent à des parties
   supplémentaires : elles peuvent contenir n'importe quoi.
2. **Question 2a.** Chaque case contribue un facteur à $P_T$ : lequel, selon qu'elle contient
   $A$ ou $B$ ?
3. **Question 2b.** Pour ii), montrer d'abord la réciproque de i) : un tableau sans colonne BB, et
   où aucune colonne AB n'est à droite d'une colonne BA, est gagnant.
4. **Question 2c.** Si l'on fait entrer $A_2$ en premier, la première ligne du tableau devient
   celle de $A_2$. Écrire les deux probabilités comme des sommes de termes $P_T$ sur les tableaux
   gagnants, et comparer $x_1$, $x_2$ et les $y_j$ de $T$ et de $T'$.
5. **Question 3.** Il suffit de montrer qu'on peut échanger deux joueurs *consécutifs* de
   l'équipe $A$ sans changer la probabilité. Pourquoi ? Et pourquoi l'équipe $B$ se traite-t-elle
   de la même façon ?
6. **Question 3.** Pendant que les deux joueurs consécutifs $P$ et $Q$ sont en jeu, ils forment
   une petite équipe de deux contre $B_j, B_{j+1}, \ldots$ La suite du tournoi ne dépend que du
   joueur de $B$ qui élimine le second d'entre eux.
7. **Question 3.** La probabilité que la paire élimine $B_j, B_{j+1}, \ldots, B_s$ est la
   probabilité qu'une équipe de deux batte l'équipe $(B_j, \ldots, B_s)$ : la question 2c dit
   qu'elle ne dépend pas de l'ordre de $P$ et $Q$.

## Solution

**1.** Avec $m = 2$, l'équipe $A$ gagne le tournoi dans les cas suivants, deux à deux disjoints.

- *$A_1$ bat $B_1, B_2, \ldots, B_n$.* La première ligne ne contient que des $A$. Toutes les
  parties de $A_2$ sont supplémentaires, donc la deuxième ligne est quelconque. Toutes les
  colonnes sont de type AA ou AB. Cela fait $2^n$ tableaux.
- *Pour un $j$ entre $1$ et $n$ : $A_1$ bat $B_1, \ldots, B_{j-1}$, perd contre $B_j$, puis $A_2$
  bat $B_j, \ldots, B_n$.* Sur la première ligne : $A$ dans les colonnes $1$ à $j - 1$, $B$ dans
  la colonne $j$, et n'importe quoi dans les colonnes $j + 1$ à $n$ (parties supplémentaires).
  Sur la deuxième ligne : n'importe quoi dans les colonnes $1$ à $j - 1$ (parties
  supplémentaires), et $A$ dans les colonnes $j$ à $n$. Les colonnes avant la colonne $j$ sont de
  type AA ou AB, la colonne $j$ est de type BA, les colonnes après sont de type AA ou BA. Il y a
  $2^{n-j}$ choix pour la fin de la première ligne et $2^{j-1}$ pour le début de la deuxième, soit
  $2^{n-1}$ tableaux pour chaque $j$.

L'équipe $A$ ne peut pas gagner autrement : si $A_1$ perd, c'est contre un certain $B_j$, et alors
$A_2$, dernier joueur de $A$, doit battre tous les joueurs restants. Les tableaux obtenus pour des
cas différents sont différents (le premier $B$ de la première ligne est à un endroit différent, ou
il n'y en a pas). Le nombre de tableaux gagnants est donc
$$2^n + n \times 2^{n-1}.$$

**2. a)** Les $mn$ parties sont indépendantes, donc $P_T$ est le produit des probabilités des
résultats inscrits dans les cases. Une case $A$ de la ligne $i$ et de la colonne $j$ contribue
$\frac{a_i}{a_i + b_j}$, une case $B$ contribue $\frac{b_j}{a_i + b_j}$. Le produit des
dénominateurs est $D$. Au numérateur, chaque $A$ de la ligne $i$ apporte un facteur $a_i$, et
chaque $B$ de la colonne $j$ apporte un facteur $b_j$. Comme la ligne $i$ contient $x_i$ fois $A$
et la colonne $j$ contient $y_j$ fois $B$ :
$$P_T = \frac{a_1^{x_1}\, a_2^{x_2}\, b_1^{y_1}\, b_2^{y_2} \cdots b_n^{y_n}}{D}.$$

**b) i)** D'après la question 1, un tableau gagnant est de l'une des deux formes suivantes : soit
toutes ses colonnes sont de type AA ou AB ; soit il existe $j$ tel que les colonnes avant $j$
soient de type AA ou AB, la colonne $j$ de type BA, et les colonnes après $j$ de type AA ou BA.
Dans les deux cas, aucune colonne n'est de type BB. Dans la seconde forme, toutes les colonnes BA
sont à la position $j$ ou après, et toutes les colonnes AB sont avant la position $j$ : aucune
colonne AB n'est à droite d'une colonne BA. Dans la première forme, il n'y a pas de colonne BA.

**ii)** *Réciproque de i).* Soit $U$ un tableau sans colonne BB dans lequel aucune colonne AB n'est
à droite d'une colonne BA. S'il n'a pas de colonne BA, toutes ses colonnes sont AA ou AB : c'est la
première forme, il est gagnant. Sinon, soit $j$ la position de sa première colonne BA. Les colonnes
avant $j$ ne sont ni BB, ni BA : elles sont AA ou AB. Les colonnes après $j$ ne sont ni BB, ni AB
(elles sont à droite d'une colonne BA) : elles sont AA ou BA. C'est la seconde forme : $U$ est
gagnant.

*Le tableau $T'$.* Ses colonnes sont de type AA, AB ou BA, donc il n'a pas de colonne BB. Hors des
colonnes AA, il contient $\ell$ colonnes AB suivies de $k$ colonnes BA, donc aucune colonne AB
n'est à droite d'une colonne BA. D'après la réciproque, $T'$ est gagnant.

*La transformation appliquée à $T'$.* Le tableau $T'$ a ses colonnes AA aux mêmes places que $T$,
et $\ell$ colonnes AB puis $k$ colonnes BA dans les autres emplacements. La transformation y met
donc $k$ colonnes AB puis $\ell$ colonnes BA. Or, d'après i), c'est exactement ce que contient $T$
dans ces emplacements. On retrouve $T$.

**c)** Notons $W$ l'ensemble des tableaux gagnants. Le résultat du tournoi est lu dans le tableau,
donc la probabilité que $A$ gagne est la somme des $P_T$ pour $T \in W$.

Notons $c$ le nombre de colonnes AA d'un tableau $T \in W$. Dans $T$, la première ligne contient
$x_1 = c + k$ fois $A$ et la deuxième $x_2 = c + \ell$ fois $A$. Dans $T'$, c'est l'inverse :
$x_1' = c + \ell = x_2$ et $x_2' = c + k = x_1$. Enfin, chaque colonne AA ne contient aucun $B$,
et chaque colonne AB ou BA en contient exactement un ; comme les colonnes AA sont aux mêmes places
dans $T$ et $T'$, on a $y_j' = y_j$ pour tout $j$.

Comparons les deux ordres de passage. Si $A_1$ entre en premier, la première ligne est celle de
$A_1$, et
$$P(A \text{ gagne}) = \frac{1}{D} \sum_{T \in W} a_1^{x_1(T)}\, a_2^{x_2(T)}\, b_1^{y_1(T)} \cdots
b_n^{y_n(T)}.$$
Si $A_2$ entre en premier, la première ligne est celle de $A_2$, et la même somme s'écrit avec
$a_1$ et $a_2$ échangés (le produit $D$ ne change pas) :
$$P'(A \text{ gagne}) = \frac{1}{D} \sum_{T \in W} a_2^{x_1(T)}\, a_1^{x_2(T)}\, b_1^{y_1(T)}
\cdots b_n^{y_n(T)}.$$
D'après b) ii), l'application $T \mapsto T'$ envoie $W$ dans $W$ et, appliquée deux fois, redonne
$T$ : elle permute les tableaux gagnants. On peut donc remplacer $T$ par $T'$ dans la seconde somme
sans changer sa valeur. Comme $x_1(T') = x_2(T)$, $x_2(T') = x_1(T)$ et $y_j(T') = y_j(T)$, chaque
terme devient $a_2^{x_2(T)}\, a_1^{x_1(T)}\, b_1^{y_1(T)} \cdots b_n^{y_n(T)}$, qui est le terme
de la première somme. Les deux probabilités sont égales.

**Conclusion :** pour $m = 2$, la probabilité de victoire de l'équipe $A$ ne dépend pas de l'ordre
de passage de ses joueurs. Ce résultat est valable pour tout $n \geqslant 1$ et toutes les forces
$b_1, \ldots, b_n$.

**3.** *Réduction.* Il suffit de montrer qu'échanger deux joueurs consécutifs de l'équipe $A$ ne
change pas la probabilité. En effet, on passe de n'importe quel ordre à n'importe quel autre par
de tels échanges : on amène le joueur voulu en première position en l'échangeant successivement
avec son voisin de gauche, puis le joueur voulu en deuxième position de la même façon, et ainsi de
suite. Pour l'équipe $B$, les règles du tournoi et la condition $(\star)$ sont les mêmes pour les
deux équipes : le même raisonnement montre que la probabilité de victoire de $B$ ne dépend pas de
l'ordre de passage des joueurs de $B$, et celle de $A$ vaut $1$ moins celle de $B$.

*Échange de deux joueurs consécutifs.* Fixons $i$ avec $1 \leqslant i \leqslant m - 1$, et
appelons $P$ et $Q$ les joueurs placés aux positions $i$ et $i + 1$. Découpons le tournoi en trois
phases.

- *Phase 1.* Les joueurs des positions $1$ à $i - 1$ jouent. Soit l'équipe $B$ est éliminée
  pendant cette phase, soit le joueur en position $i$ entre en jeu contre un certain joueur $B_J$.
  Cette phase ne fait pas intervenir $P$ ni $Q$ (si $i = 1$, elle est vide et $J = 1$).
- *Phase 2.* $P$ et $Q$, dans cet ordre, jouent contre $B_J, B_{J+1}, \ldots$ La phase s'arrête
  quand l'équipe $B$ n'a plus de joueur (et $A$ a gagné), ou quand le second de $P$ et $Q$ est
  éliminé, par un certain joueur $B_K$.
- *Phase 3.* Les joueurs des positions $i + 2$ à $m$ jouent contre $B_K, B_{K+1}, \ldots, B_n$
  (s'il n'en reste aucun, $B$ a gagné).

Pour $j \leqslant s \leqslant n$, notons $\pi(j, s)$ la probabilité qu'une équipe formée de $P$ et
$Q$ batte l'équipe $(B_j, B_{j+1}, \ldots, B_s)$, et posons $\pi(j, j - 1) = 1$. Comme les parties
sont indépendantes, sachant que $J = j$, la probabilité que la paire élimine
$B_j, \ldots, B_s$ pendant la phase 2 est exactement $\pi(j, s)$ : jusqu'à l'élimination de $B_s$,
la phase 2 se déroule comme ce petit tournoi. D'après la question 2c, appliquée à l'équipe de
deux joueurs $P$, $Q$ et à l'équipe $(B_j, \ldots, B_s)$, $\pi(j, s)$ ne dépend pas de l'ordre de
$P$ et $Q$.

Sachant $J = j$ :

- la probabilité que $A$ gagne pendant la phase 2 est $\pi(j, n)$ ;
- pour $j \leqslant s \leqslant n$, la probabilité que $K = s$ est $\pi(j, s - 1) - \pi(j, s)$ :
  la paire élimine $B_j, \ldots, B_{s-1}$ mais pas $B_s$, donc c'est $B_s$ qui élimine le second
  joueur de la paire.

Enfin, sachant $K = s$, la probabilité $w(s)$ que $A$ gagne pendant la phase 3 est celle que les
joueurs des positions $i + 2$ à $m$ battent l'équipe $(B_s, \ldots, B_n)$ ; elle ne fait pas
intervenir $P$ ni $Q$. D'après la formule des probabilités totales,
$$P(A \text{ gagne}) = P(A \text{ gagne en phase 1})
+ \sum_{j} P(J = j) \left[\pi(j, n) + \sum_{s = j}^{n} (\pi(j, s-1) - \pi(j, s))\, w(s)\right].$$
Aucun des termes de cette formule ne change quand on échange $P$ et $Q$ : la phase 1 et la phase 3
ne les font pas intervenir, et les $\pi(j, s)$ n'en dépendent pas.

**Conclusion :** la probabilité que l'équipe $A$ gagne le tournoi ne dépend pas de l'ordre de
passage choisi par chacune des deux équipes.

**Bilan.** Pour deux joueurs, une bijection entre tableaux gagnants qui échange les nombres de
victoires des deux lignes montre que l'ordre de passage ne compte pas. En découpant le tournoi
autour de deux joueurs consécutifs, on en déduit que, pour des équipes de tailles quelconques, la
probabilité de victoire d'une équipe ne dépend que des forces de ses joueurs et de celles de ses
adversaires, pas de l'ordre dans lequel ils entrent en jeu.

## Going further

- Pour $m = n = 2$, la probabilité de victoire de $A$ a une formule explicite (exercice 40809),
  visiblement symétrique en $a_1, a_2$ et en $b_1, b_2$. Retrouver cette formule en sommant les
  $P_T$ sur les $8$ tableaux gagnants.
- Dans le cas où toutes les forces valent $1$, en déduire que la probabilité de victoire de $A$
  vaut $\frac{N_{m,n}}{2^{mn}}$, où $N_{m,n}$ est le nombre de tableaux gagnants à $m$ lignes et
  $n$ colonnes.
- Le modèle $(\star)$, où chaque joueur a une force et où $A_i$ bat $B_j$ avec la probabilité
  $\frac{a_i}{a_i + b_j}$, s'appelle le *modèle de Bradley-Terry*. On l'utilise pour classer des
  joueurs d'échecs ou des équipes sportives.
