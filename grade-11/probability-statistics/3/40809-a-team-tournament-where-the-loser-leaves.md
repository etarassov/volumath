---
id: "40809"
title: "Un tournoi par équipes où le perdant sort"
grade: 11
theme: probability-statistics
difficulty: 3
duration_min: 45
tags: [probabilite, independance, arbre, tournoi, symetrie, calcul-litteral, factorisation]
adapted_from: null
see_also: ["40808", "40810"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2022, mathématiques"
  reference: "cg-2022-s-sujet.pdf, problème 3 « Un tournoi par équipes », partie 3 « Un tournoi régulier par équipes », questions 5 et 6"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2022-s-sujet.pdf"
---

## Statement

Si $E$ est un événement, on note $P(E)$ sa probabilité.

Soit $A$ et $B$ deux équipes. On note $m \geqslant 1$ l'effectif de $A$ et $n \geqslant 1$
l'effectif de $B$. On numérote les membres des équipes par ordre de passage : $A_1, A_2, \ldots,
A_m$ pour l'équipe $A$ et $B_1, B_2, \ldots, B_n$ pour l'équipe $B$.

Les deux équipes s'affrontent lors d'un tournoi formé de plusieurs parties successives, dont les
issues sont indépendantes. Lors de la première partie, $A_1$ joue contre $B_1$. À l'issue de
chaque partie, une seule des deux personnes est déclarée gagnante, et le perdant est éliminé. Le
gagnant joue alors contre la personne suivante de l'équipe adverse, et ainsi de suite jusqu'à ce
qu'une équipe n'ait plus de joueur : l'autre équipe a gagné le tournoi.

Par exemple, pour $m = n = 3$ : $A_1$ joue contre $B_1$. Si $A_1$ gagne, $B_1$ est éliminé et
$A_1$ joue contre $B_2$. Si cette fois $B_2$ gagne, $A_1$ est éliminé et $B_2$ rencontre $A_2$. Si
$B_2$ gagne encore, $A_2$ est éliminé et $B_2$ rencontre $A_3$. Si $B_2$ gagne à nouveau, $A_3$ est
éliminé et l'équipe $B$ a gagné le tournoi.

On suppose de plus qu'il existe des réels strictement positifs $a_1, \ldots, a_m$ et
$b_1, \ldots, b_n$ tels que, pour chaque partie qui oppose les personnes $A_i$ et $B_j$,
$$\frac{P(A_i \text{ gagne contre } B_j)}{P(B_j \text{ gagne contre } A_i)} = \frac{a_i}{b_j}.$$
On peut voir $a_i$ et $b_j$ comme les « forces » des joueurs.

1. Dans cette question uniquement, on suppose que $a_i = b_j = 1$ pour tous $i$ et $j$. On note
   $u_{m,n}$ la probabilité que l'équipe $A$ gagne le tournoi.

   a) Démontrer que $u_{m,n} + u_{n,m} = 1$.

   b) Que vaut $u_{n,n}$ ?

   c) Déterminer la valeur de $u_{1,n}$ en fonction de $n$.

   d) Déterminer la valeur de $u_{2,n}$ en fonction de $n$.
2. Dans cette question uniquement, on se place dans le cas $m = n = 2$. Les nombres $a_1$, $a_2$,
   $b_1$ et $b_2$ ne sont plus supposés égaux à $1$.

   a) Exprimer la probabilité que $A_i$ gagne contre $B_j$ en fonction de $a_i$ et $b_j$.

   b) Démontrer que la probabilité que l'équipe $A$ gagne le tournoi est égale à
   $$\frac{a_1^2 a_2^2 + a_1 a_2 (a_1 + a_2)(b_1 + b_2) + (a_1^2 + a_1 a_2 + a_2^2)\, b_1 b_2}
   {(a_1 + b_1)(a_1 + b_2)(a_2 + b_1)(a_2 + b_2)}.$$
   Cette probabilité dépend-elle de l'ordre choisi par chaque équipe pour l'entrée de ses joueurs
   dans le tournoi ?

## Hints

1. **Question 1a.** Le tournoi se termine toujours, au plus tard après $m + n - 1$ parties.
   Quand toutes les parties sont équilibrées, l'équipe $B$ joue exactement le rôle que jouerait
   une équipe de $n$ joueurs contre une équipe de $m$ joueurs.
2. **Question 1c.** L'unique joueur de l'équipe $A$ doit gagner toutes ses parties.
3. **Question 1d.** L'équipe $A$ gagne si $B$ perd ses $n$ joueurs avant que $A$ en perde deux.
   Distinguer selon que $A_1$ gagne toutes ses parties ou non, et, dans le second cas, selon le
   joueur $B_j$ qui élimine $A_1$.
4. **Question 2a.** Les deux probabilités ont pour somme $1$.
5. **Question 2b.** Faire un arbre : il n'y a que trois façons, pour l'équipe $A$, de gagner.
6. **Question 2b.** Réduire les trois probabilités au même dénominateur, puis développer et
   comparer avec le numérateur proposé.

## Solution

**1.** Ici, chaque partie est gagnée par chacun des deux joueurs avec la probabilité
$\frac{1}{2}$, puisque les deux probabilités sont égales et ont pour somme $1$.

**a)** Chaque partie élimine un joueur, et le tournoi s'arrête quand une équipe n'a plus de
joueur : il dure au plus $m + n - 1$ parties, et l'une des deux équipes le gagne. Donc
$P(A \text{ gagne}) + P(B \text{ gagne}) = 1$. Or, comme toutes les parties sont équilibrées, la
probabilité que l'équipe $B$, de $n$ joueurs, gagne contre l'équipe $A$, de $m$ joueurs, est la
probabilité qu'une première équipe de $n$ joueurs batte une seconde équipe de $m$ joueurs : c'est
$u_{n,m}$. Donc $u_{m,n} + u_{n,m} = 1$.

**b)** Avec $m = n$, on obtient $2u_{n,n} = 1$, donc $u_{n,n} = \frac{1}{2}$.

**c)** Si $m = 1$, l'équipe $A$ gagne exactement quand $A_1$ gagne ses $n$ parties, contre $B_1$,
puis $B_2$, …, puis $B_n$. Ces parties sont indépendantes, donc
$$u_{1,n} = \left(\frac{1}{2}\right)^n = \frac{1}{2^n}.$$

**d)** Si $m = 2$, l'équipe $A$ gagne dans les cas suivants, deux à deux disjoints.

- $A_1$ gagne ses $n$ parties : probabilité $\frac{1}{2^n}$.
- Pour un $j$ entre $1$ et $n$ : $A_1$ bat $B_1, \ldots, B_{j-1}$, puis perd contre $B_j$, puis
  $A_2$ bat $B_j, B_{j+1}, \ldots, B_n$. Cela fait $(j - 1) + 1 + (n - j + 1) = n + 1$ parties
  aux résultats imposés, d'où une probabilité $\frac{1}{2^{n+1}}$.

L'équipe $A$ ne peut pas gagner autrement : si $A_1$ perd une partie, c'est contre un certain
$B_j$, et alors $A_2$, dernier joueur de $A$, doit gagner toutes ses parties. Donc
$$u_{2,n} = \frac{1}{2^n} + \frac{n}{2^{n+1}} = \frac{n + 2}{2^{n+1}}.$$
Vérification : pour $n = 2$, on retrouve $\frac{4}{8} = \frac{1}{2} = u_{2,2}$.

**2. a)** Notons $p = P(A_i \text{ gagne contre } B_j)$. Il y a exactement un gagnant, donc
$P(B_j \text{ gagne contre } A_i) = 1 - p$, et l'hypothèse donne
$\frac{p}{1 - p} = \frac{a_i}{b_j}$, soit $b_j p = a_i (1 - p)$, d'où
$$P(A_i \text{ gagne contre } B_j) = \frac{a_i}{a_i + b_j}, \qquad
P(B_j \text{ gagne contre } A_i) = \frac{b_j}{a_i + b_j}.$$

**b)** L'équipe $A$ gagne si l'équipe $B$ perd ses deux joueurs avant que $A$ perde les siens.
Il y a trois façons, deux à deux disjointes.

- $A_1$ bat $B_1$, puis $B_2$ : probabilité $\frac{a_1}{a_1 + b_1} \times \frac{a_1}{a_1 + b_2}$.
- $A_1$ bat $B_1$, puis perd contre $B_2$, puis $A_2$ bat $B_2$ : probabilité
  $\frac{a_1}{a_1 + b_1} \times \frac{b_2}{a_1 + b_2} \times \frac{a_2}{a_2 + b_2}$.
- $A_1$ perd contre $B_1$, puis $A_2$ bat $B_1$, puis $B_2$ : probabilité
  $\frac{b_1}{a_1 + b_1} \times \frac{a_2}{a_2 + b_1} \times \frac{a_2}{a_2 + b_2}$.

Avec le dénominateur commun $Q = (a_1 + b_1)(a_1 + b_2)(a_2 + b_1)(a_2 + b_2)$, la somme de ces
trois probabilités s'écrit $\frac{S}{Q}$ avec
$$S = a_1^2 (a_2 + b_1)(a_2 + b_2) + a_1 a_2 b_2 (a_2 + b_1) + a_2^2 b_1 (a_1 + b_2).$$
En développant :
$$S = a_1^2 a_2^2 + a_1^2 a_2 b_1 + a_1^2 a_2 b_2 + a_1^2 b_1 b_2 + a_1 a_2^2 b_2 + a_1 a_2 b_1 b_2
+ a_1 a_2^2 b_1 + a_2^2 b_1 b_2.$$
Développons aussi le numérateur proposé :
$$a_1 a_2 (a_1 + a_2)(b_1 + b_2) = a_1^2 a_2 b_1 + a_1^2 a_2 b_2 + a_1 a_2^2 b_1 + a_1 a_2^2 b_2,$$
$$(a_1^2 + a_1 a_2 + a_2^2)\, b_1 b_2 = a_1^2 b_1 b_2 + a_1 a_2 b_1 b_2 + a_2^2 b_1 b_2.$$
Avec le terme $a_1^2 a_2^2$, on retrouve exactement les huit termes de $S$. La formule est
démontrée.

*Ordre de passage.* Changer l'ordre des joueurs de l'équipe $A$ revient à échanger $a_1$ et $a_2$
dans la formule ; changer l'ordre de l'équipe $B$ revient à échanger $b_1$ et $b_2$. Or le
numérateur et le dénominateur restent les mêmes dans ces deux échanges : par exemple,
$a_1 a_2 (a_1 + a_2)(b_1 + b_2)$ et $a_1^2 + a_1 a_2 + a_2^2$ ne changent pas quand on échange
$a_1$ et $a_2$, et le dénominateur est le produit des $a_i + b_j$ pour tous les couples $(i ; j)$.

**Conclusion :** la probabilité que l'équipe $A$ gagne ne dépend pas de l'ordre de passage choisi
par chaque équipe.

**Bilan.** Avec des parties équilibrées, une équipe de $1$ joueur bat une équipe de $n$ joueurs
avec la probabilité $\frac{1}{2^n}$, et une équipe de $2$ joueurs avec la probabilité
$\frac{n+2}{2^{n+1}}$. Pour deux équipes de deux joueurs de forces quelconques, la probabilité de
victoire a une formule symétrique : l'ordre de passage des joueurs n'y change rien.

## Going further

- Avec des parties équilibrées, montrer que $u_{m,n}$ est la probabilité d'obtenir au moins $n$
  fois pile en lançant $m + n - 1$ fois une pièce équilibrée. Indication : imaginer qu'on continue
  à lancer la pièce même après la fin du tournoi.
- Dans la suite du sujet (exercice 40810), on montrait que, pour des équipes de tailles et de
  forces quelconques, la probabilité de victoire ne dépend jamais de l'ordre de passage des
  joueurs.
