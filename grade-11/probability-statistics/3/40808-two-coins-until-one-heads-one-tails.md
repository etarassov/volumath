---
id: "40808"
title: "Deux pièces lancées jusqu'à un pile et un face"
grade: 11
theme: probability-statistics
difficulty: 3
duration_min: 45
tags: [probabilite, independance, suite-geometrique, somme-geometrique, passage-a-la-limite, jeu, evenements]
adapted_from: null
see_also: ["40809", "40810"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2022, mathématiques"
  reference: "cg-2022-s-sujet.pdf, problème 3 « Un tournoi par équipes », partie 1 « Un jeu, deux joueurs » (questions 1 à 3) et partie 2 « Qu'est-ce qu'un jeu régulier ? » (question 4)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2022-s-sujet.pdf"
---

## Statement

Si $E$ est un événement, on note $P(E)$ sa probabilité. On pourra utiliser librement le résultat
suivant : si $D_1, \ldots, D_k$ sont des événements deux à deux disjoints, alors
$$P(D_1 \cup \cdots \cup D_k) = P(D_1) + \cdots + P(D_k).$$

**Un jeu, deux joueurs.** Ambre dispose d'une pièce qui, à chaque lancer, donne pile avec une
probabilité $a$ et face avec une probabilité $1 - a$, où $0 < a < 1$. Benjamin dispose d'une pièce
qui, à chaque lancer, donne pile avec une probabilité $b$ et face avec une probabilité $1 - b$, où
$0 < b < 1$.

Ils jouent au jeu suivant : chacun lance sa pièce. S'ils obtiennent tous les deux pile, ou tous les
deux face, ils relancent chacun leur pièce, et ainsi de suite tant qu'ils obtiennent en même temps
pile ou en même temps face. Ils s'arrêtent dès que l'un obtient pile et l'autre face. Celui qui
obtient pile est alors déclaré gagnant. Tous les lancers sont indépendants.

Pour tout entier $n \geqslant 1$, on note $A_n$ l'événement « Ambre gagne lors du $n$-ième
lancer », $B_n$ l'événement « Benjamin gagne lors du $n$-ième lancer », et $C_n$ l'événement
« chacun des deux joueurs lance au moins $n$ fois sa pièce ».

1. a) On pose $\lambda = 1 - a - b + 2ab$. Démontrer que $P(C_2) = \lambda$.

   b) Pour tout entier $n \geqslant 1$, exprimer $P(C_{n+1})$ en fonction de $P(C_n)$. En déduire
   une expression de $P(C_n)$ en fonction de $n$.
2. Soit $n \geqslant 1$ un entier.

   a) Exprimer $P(A_n)$ en fonction de $a$, $b$ et $P(C_n)$.

   b) En déduire une expression de $P(A_n)$ en fonction de $a$, $b$ et $n$.

   c) Donner une expression de $P(B_n)$ en fonction de $a$, $b$ et $n$.
3. On note $G_A$ l'événement « Ambre est gagnante » et $G_B$ l'événement « Benjamin est
   gagnant ».

   a) Démontrer que $0 < \lambda < 1$.

   b) Démontrer que, pour tout entier $n \geqslant 1$,
   $$P(G_A) \geqslant a(1 - b) \times \frac{1 - \lambda^n}{1 - \lambda} \qquad \text{et} \qquad
   P(G_B) \geqslant b(1 - a) \times \frac{1 - \lambda^n}{1 - \lambda}.$$

   c) On note $G_\varnothing$ l'événement « ce jeu n'a aucun gagnant ». Déduire de ce qui précède
   que
   $$P(G_A) = \frac{a(1 - b)}{1 - \lambda}, \qquad P(G_B) = \frac{b(1 - a)}{1 - \lambda}
   \qquad \text{et} \qquad P(G_\varnothing) = 0.$$

**Un jeu régulier.** Dans cette partie, $A_1, A_2, \ldots$ désignent des personnes, et non plus
des événements. Un jeu entre $N$ personnes $A_1, A_2, \ldots, A_N$ est dit *régulier* s'il a
les caractéristiques suivantes :

- le jeu se déroule en un ou plusieurs tours successifs, et chaque tour ne concerne que deux
  joueurs (chaque personne peut jouer plusieurs tours, mais n'est pas obligée de jouer contre
  chacune des autres) ;
- à chaque tour, il ne peut y avoir qu'un seul gagnant ;
- il existe des réels strictement positifs $a_1, a_2, \ldots, a_N$ tels que, pour toutes personnes
  $A_i$ et $A_j$,
  $$\frac{P(A_i \text{ gagne contre } A_j)}{P(A_j \text{ gagne contre } A_i)} = \frac{a_i}{a_j}.$$

4. Les personnes $A_1, A_2, \ldots, A_{2022}$ disposent chacune d'une pièce. Pour tout $i$, à
   chaque lancer, la pièce de $A_i$ donne pile avec une probabilité $p_i$, où $0 < p_i < 1$, et
   face avec une probabilité $1 - p_i$. Le jeu se déroule en un ou plusieurs tours successifs : à
   chaque tour, deux personnes se rencontrent et jouent au jeu à deux joueurs décrit plus haut.
   Démontrer que ce jeu est régulier.

## Hints

1. **Question 1a.** L'événement $C_2$ se produit exactement quand le premier lancer ne désigne
   pas de gagnant. De quelles deux façons ?
2. **Question 1b.** Pour que chacun lance au moins $n + 1$ fois, il faut avoir lancé au moins
   $n$ fois, puis que le $n$-ième lancer ne désigne pas de gagnant.
3. **Question 2a.** Ambre gagne au $n$-ième lancer si le jeu a duré jusque-là, puis si, à ce
   lancer, Ambre fait pile et Benjamin fait face.
4. **Question 3a.** Écrire $1 - \lambda$ comme une somme de deux produits.
5. **Question 3b.** Les événements $A_1, A_2, \ldots, A_n$ sont deux à deux disjoints et tous
   inclus dans $G_A$. Reconnaître ensuite la somme des termes d'une suite géométrique.
6. **Question 3c.** Faire tendre $n$ vers $+\infty$ dans les inégalités de la question 3b, puis
   additionner les deux minorations obtenues. Que vaut $a(1-b) + b(1-a)$ ?
7. **Question 4.** Utiliser la question 3c avec $a = p_i$ et $b = p_j$, et chercher $a_i$ sous la
   forme d'une expression qui ne dépend que de $p_i$.

## Solution

**1. a)** Chacun lance au moins deux fois exactement quand le premier lancer ne désigne pas de
gagnant, c'est-à-dire quand les deux joueurs obtiennent tous deux pile ou tous deux face. Ces deux
cas sont disjoints et les lancers sont indépendants, donc
$$P(C_2) = ab + (1 - a)(1 - b) = ab + 1 - a - b + ab = 1 - a - b + 2ab = \lambda.$$

**b)** L'événement $C_{n+1}$ se produit exactement quand $C_n$ se produit (le jeu atteint le
$n$-ième lancer) et que le $n$-ième lancer ne désigne pas de gagnant (deux piles ou deux faces).
Le $n$-ième lancer est indépendant des précédents, et la probabilité qu'il ne désigne pas de
gagnant est $\lambda$, comme à la question 1a. Donc
$$P(C_{n+1}) = \lambda\, P(C_n).$$
La suite $(P(C_n))_{n \geqslant 1}$ est géométrique de raison $\lambda$, et $P(C_1) = 1$ puisque
chacun lance au moins une fois. Donc, pour tout $n \geqslant 1$,
$$P(C_n) = \lambda^{n-1}.$$

**2. a)** Ambre gagne au $n$-ième lancer exactement quand $C_n$ se produit et qu'à ce lancer, Ambre
obtient pile et Benjamin face. Par indépendance,
$$P(A_n) = P(C_n) \times a(1 - b).$$

**b)** Donc $P(A_n) = a(1 - b)\, \lambda^{n-1}$.

**c)** De même, en échangeant les rôles, $P(B_n) = b(1 - a)\, \lambda^{n-1}$.

**3. a)** $\lambda = ab + (1-a)(1-b)$ est la somme de deux produits de nombres strictement
positifs, donc $\lambda > 0$. Et
$$1 - \lambda = a + b - 2ab = a(1 - b) + b(1 - a) > 0,$$
pour la même raison. Donc $0 < \lambda < 1$.

**b)** Ambre ne peut gagner qu'une fois, puisque le jeu s'arrête dès qu'il y a un gagnant. Les
événements $A_1, \ldots, A_n$ sont donc deux à deux disjoints, et ils sont tous inclus dans $G_A$.
Ainsi
$$P(G_A) \geqslant P(A_1 \cup \cdots \cup A_n) = \sum_{k=1}^{n} a(1-b)\,\lambda^{k-1}
= a(1 - b) \times \frac{1 - \lambda^n}{1 - \lambda},$$
en utilisant la somme des termes d'une suite géométrique de raison $\lambda \neq 1$. De même pour
$P(G_B)$ avec $b(1 - a)$.

**c)** Comme $0 < \lambda < 1$, $\lambda^n$ tend vers $0$ quand $n$ tend vers $+\infty$. Le
nombre $P(G_A)$ ne dépend pas de $n$ et il est supérieur ou égal à
$a(1 - b) \times \frac{1 - \lambda^n}{1 - \lambda}$ pour tout $n$ ; en passant à la limite,
$$P(G_A) \geqslant \frac{a(1 - b)}{1 - \lambda} \qquad \text{et de même} \qquad
P(G_B) \geqslant \frac{b(1 - a)}{1 - \lambda}.$$
D'après la question 3a, la somme de ces deux minorants vaut
$$\frac{a(1 - b) + b(1 - a)}{1 - \lambda} = \frac{1 - \lambda}{1 - \lambda} = 1.$$
Les événements $G_A$, $G_B$ et $G_\varnothing$ sont deux à deux disjoints et leur réunion est
certaine (soit Ambre gagne, soit Benjamin gagne, soit personne), donc
$$P(G_A) + P(G_B) + P(G_\varnothing) = 1.$$
Comme $P(G_A) + P(G_B) \geqslant 1$, on obtient $P(G_\varnothing) \leqslant 0$, donc
$P(G_\varnothing) = 0$ et $P(G_A) + P(G_B) = 1$. Si l'on avait
$P(G_A) > \frac{a(1-b)}{1-\lambda}$, on aurait $P(G_A) + P(G_B) > 1$, ce qui est impossible. Donc
$P(G_A) = \frac{a(1-b)}{1-\lambda}$, et de même $P(G_B) = \frac{b(1-a)}{1-\lambda}$.

**4.** Chaque tour oppose deux personnes, et comme le jeu à deux joueurs a toujours au plus un
gagnant, il ne peut y avoir qu'un seul gagnant par tour. Quand $A_i$ rencontre $A_j$, la question
3c avec $a = p_i$ et $b = p_j$ donne, en notant $\lambda$ la valeur correspondante,
$$P(A_i \text{ gagne contre } A_j) = \frac{p_i(1 - p_j)}{1 - \lambda}, \qquad
P(A_j \text{ gagne contre } A_i) = \frac{p_j(1 - p_i)}{1 - \lambda}.$$
Ces deux probabilités sont strictement positives et leur quotient vaut
$$\frac{p_i(1 - p_j)}{p_j(1 - p_i)} = \frac{a_i}{a_j} \qquad \text{avec} \qquad
a_k = \frac{p_k}{1 - p_k} > 0 \text{ pour tout } k.$$
Les réels $a_1, \ldots, a_{2022}$ ne dépendent chacun que d'une personne, donc le jeu est
régulier.

**Bilan.** Dans le jeu à deux pièces, il y a un gagnant avec probabilité $1$, et Ambre gagne avec la
probabilité $\frac{a(1-b)}{a(1-b) + b(1-a)}$. Les chances des deux joueurs sont dans le rapport
$\frac{a/(1-a)}{b/(1-b)}$ : chaque joueur a une « force » $\frac{p}{1-p}$ qui ne dépend que de sa
pièce, ce qui rend régulier un jeu à plusieurs où l'on se rencontre deux par deux.

## Going further

- Le nombre $\frac{p}{1-p}$ s'appelle la *cote* de l'événement pile. Que vaut-elle pour une pièce
  équilibrée ? Que se passe-t-il quand Ambre et Benjamin ont des pièces identiques ?
- Combien de lancers dure le jeu en moyenne ? Calculer $P(C_n) - P(C_{n+1})$, la probabilité que
  le jeu s'arrête exactement au $n$-ième lancer.
- Dans la suite du sujet, des joueurs de ce type s'affrontaient dans un tournoi par équipes, et l'on
  montrait que la probabilité de victoire d'une équipe ne dépend pas de l'ordre de passage de ses
  joueurs (exercices 40809 et 40810).
