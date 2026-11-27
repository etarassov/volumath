---
id: "40483"
title: "Vite pile : un gagnant unique, combien de gagnants ?"
grade: 12
theme: probability-statistics
difficulty: 3
duration_min: 45
tags: [probabilite, variable-aleatoire, independance, esperance, somme-geometrique, limite]
adapted_from: null
see_also: []
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2014, mathématiques, série S"
  reference: "cg-2014-s-sujet.pdf, problème II « Vite pile », questions 1° à 3°"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2014-s-sujet.pdf"
---

## Statement

Dans cet exercice, $k$ et $n$ sont des entiers supérieurs ou égaux à $2$.

Un groupe de $k$ joueurs dispose d'une pièce de monnaie, pas forcément équilibrée : la probabilité
d'obtenir « pile » en un lancer est $p$, avec $0 < p < 1$. Les lancers sont indépendants.

Chaque joueur lance la pièce au plus $n$ fois, et s'arrête dès qu'il obtient « pile ». Son
*score* est le nombre d'échecs, c'est-à-dire le nombre de « face » obtenus :

- s'il obtient « pile » au premier lancer, son score est $0$ ;
- s'il obtient « pile » au deuxième lancer (après un « face »), son score est $1$ ;
- s'il obtient « pile » au $n$-ième lancer (après $n - 1$ « face »), son score est $n - 1$ ;
- s'il n'obtient pas « pile » pendant les $n$ lancers, son score est $n$.

Quand tous les joueurs ont lancé, le ou les *gagnants* sont les joueurs qui ont le plus petit
score.

1. Déterminer la loi de probabilité du score d'un joueur donné.
2. Déterminer la probabilité qu'il y ait un unique gagnant, puis la limite de cette probabilité
   quand $n$ tend vers $+\infty$.
3. Déterminer l'espérance du nombre de gagnants, puis la limite de cette espérance quand $n$ tend
   vers $+\infty$.

## Hints

1. **Question 1.** Le score vaut $j$, pour $j \leq n - 1$, quand les $j$ premiers lancers donnent
   « face » et le suivant « pile ». Ne pas oublier le cas du score $n$, et vérifier que la somme
   des probabilités vaut $1$.
2. **Question 2.** Calculer d'abord la probabilité qu'un joueur ait un score strictement
   supérieur à $j$. Que doivent donner ses premiers lancers ?
3. **Question 2.** « Il y a un unique gagnant » se découpe en événements disjoints : « le joueur
   numéro $i$ a le score $j$ et tous les autres ont un score strictement plus grand que $j$ ».
   Le score $j = n$ est-il possible pour un gagnant unique ?
4. **Question 3.** Écrire le nombre de gagnants comme une somme de $k$ variables aléatoires qui
   valent $1$ ou $0$ selon que le joueur numéro $i$ gagne ou non, et utiliser la linéarité de
   l'espérance.
5. **Question 3.** Le joueur numéro $1$ est un gagnant quand chacun des autres a un score supérieur
   ou égal au sien. Quelle est la probabilité qu'un joueur ait un score supérieur ou égal à $j$ ?

## Solution

Notons $q = 1 - p$ la probabilité d'obtenir « face » ; on a $0 < q < 1$. Notons $X$ le score d'un
joueur donné.

**1.** Pour $0 \leq j \leq n - 1$, l'événement $X = j$ signifie que les $j$ premiers lancers
donnent « face » et que le lancer numéro $j + 1$ donne « pile ». Les lancers étant indépendants,

$$P(X = j) = q^j\,p \qquad \text{pour } 0 \leq j \leq n - 1 .$$

L'événement $X = n$ signifie que les $n$ lancers donnent « face », donc $P(X = n) = q^n$.

*Vérification.* La somme des probabilités vaut
$p\,(1 + q + \cdots + q^{n-1}) + q^n = p \times \frac{1 - q^n}{1 - q} + q^n = 1 - q^n + q^n = 1$,
puisque $1 - q = p$.

**Conclusion :** $P(X = j) = p\,(1-p)^j$ pour $0 \leq j \leq n-1$, et $P(X = n) = (1-p)^n$.

**2.** *Un score strictement supérieur à $j$.* Pour $0 \leq j \leq n - 1$, on a $X > j$ exactement
quand les $j + 1$ premiers lancers donnent « face » (le joueur ne s'est pas arrêté avant le lancer
numéro $j + 2$, ou a fini ses $n$ lancers sans « pile »). Donc $P(X > j) = q^{j+1}$.

*Découpage.* S'il y a un unique gagnant, c'est l'un des $k$ joueurs, disons le joueur $i$, avec un
certain score $j$, et les $k - 1$ autres joueurs ont un score strictement supérieur à $j$. Le
score $j = n$ est impossible, car aucun score ne dépasse $n$. Les événements
$G_{i,j}$ = « le joueur $i$ a le score $j$ et les autres un score strictement plus grand », pour
$1 \leq i \leq k$ et $0 \leq j \leq n - 1$, sont deux à deux disjoints, et leur réunion est
l'événement « il y a un unique gagnant ».

Les joueurs lancent indépendamment les uns des autres, donc

$$P(G_{i,j}) = P(X = j) \times P(X > j)^{k-1} = p\,q^j \times q^{(j+1)(k-1)} = p\,q^{k-1} \times (q^k)^j .$$

Cette probabilité ne dépend pas de $i$. En additionnant sur les $k$ joueurs et sur
$j = 0, \ldots, n - 1$ (une somme géométrique de raison $q^k \neq 1$) :

$$P(\text{gagnant unique}) = k\,p\,q^{k-1}\left(1 + q^k + \cdots + (q^k)^{n-1}\right) = k\,p\,q^{k-1} \times \frac{1 - q^{kn}}{1 - q^k} .$$

*Limite.* Comme $0 < q^k < 1$, la suite $q^{kn} = (q^k)^n$ tend vers $0$ quand $n$ tend vers
$+\infty$.

**Conclusion :** la probabilité qu'il y ait un unique gagnant est
$$\frac{k\,p\,(1-p)^{k-1}\left(1 - (1-p)^{kn}\right)}{1 - (1-p)^k},$$
et elle tend vers $\frac{k\,p\,(1-p)^{k-1}}{1 - (1-p)^k}$ quand $n$ tend vers $+\infty$.

Par exemple, pour deux joueurs et une pièce équilibrée ($k = 2$, $p = \frac{1}{2}$), le numérateur
de la limite vaut $2 \times \frac{1}{2} \times \frac{1}{2} = \frac{1}{2}$ et son dénominateur
$1 - \frac{1}{4} = \frac{3}{4}$, donc la limite vaut $\frac{2}{3}$.

**3.** *Le nombre de gagnants comme une somme.* Pour chaque joueur $i$, notons $W_i$ la variable
aléatoire qui vaut $1$ si le joueur $i$ est un gagnant et $0$ sinon. Le nombre de gagnants est
$N = W_1 + W_2 + \cdots + W_k$. Par linéarité de l'espérance,
$E(N) = E(W_1) + \cdots + E(W_k)$, et $E(W_i) = P(\text{le joueur} \ i \ \text{gagne})$. Tous les
joueurs jouent dans les mêmes conditions, donc ces $k$ probabilités sont égales, et

$$E(N) = k \times P(\text{le joueur 1 gagne}) .$$

*Un score supérieur ou égal à $j$.* Pour $0 \leq j \leq n$, on a $X \geq j$ exactement quand les
$j$ premiers lancers donnent « face », donc $P(X \geq j) = q^j$ (pour $j = 0$, cela donne bien
$1$).

*La probabilité que le joueur 1 gagne.* Le joueur $1$ gagne quand chacun des $k - 1$ autres a un
score supérieur ou égal au sien. En découpant selon le score $j$ du joueur $1$ et en utilisant
l'indépendance des joueurs :

$$P(\text{le joueur 1 gagne}) = \sum_{j=0}^{n} P(X = j) \times P(X \geq j)^{k-1} = \sum_{j=0}^{n-1} p\,q^j\,q^{j(k-1)} + q^n\,q^{n(k-1)} .$$

La somme de $j = 0$ à $n - 1$ vaut $p\,(1 + q^k + \cdots + (q^k)^{n-1}) = p\,\frac{1 - q^{kn}}{1 - q^k}$,
et le dernier terme vaut $q^{kn}$. Donc

$$E(N) = k\left(p\,\frac{1 - q^{kn}}{1 - q^k} + q^{kn}\right) .$$

*Limite.* Comme $q^{kn}$ tend vers $0$, $E(N)$ tend vers $\frac{k\,p}{1 - q^k}$.

**Conclusion :** l'espérance du nombre de gagnants est
$$k\left(p\,\frac{1 - (1-p)^{kn}}{1 - (1-p)^k} + (1-p)^{kn}\right),$$
et elle tend vers $\frac{k\,p}{1 - (1-p)^k}$ quand $n$ tend vers $+\infty$.

Pour $k = 2$ et $p = \frac{1}{2}$, la limite vaut $2 \times \frac{1}{2} = 1$ divisé par
$\frac{3}{4}$, soit $\frac{4}{3}$. C'est cohérent avec
la question 2 : à la limite, il y a un seul gagnant avec probabilité $\frac{2}{3}$ et deux gagnants
avec probabilité $\frac{1}{3}$, et $1 \times \frac{2}{3} + 2 \times \frac{1}{3} = \frac{4}{3}$.

**Bilan.** Le score d'un joueur compte les « face » obtenus avant le premier « pile », sans
dépasser $n$. On a calculé exactement la
probabilité d'un gagnant unique, $k\,p\,q^{k-1}\,\frac{1 - q^{kn}}{1 - q^k}$, et l'espérance du
nombre de gagnants, $k\left(p\,\frac{1 - q^{kn}}{1 - q^k} + q^{kn}\right)$, avec $q = 1 - p$.
Quand le nombre de lancers autorisés devient très grand, elles tendent vers
$\frac{k\,p\,q^{k-1}}{1 - q^k}$ et $\frac{k\,p}{1 - q^k}$.

## Going further

- Remarquer que la limite de la probabilité d'un gagnant unique est égale à $(1-p)^{k-1}$ fois la
  limite de l'espérance du nombre de gagnants. Pouvez-vous l'expliquer ?
- Que deviennent ces deux limites quand $p$ tend vers $1$ ? Quand $p$ tend vers $0$ ? (Pour
  $p$ proche de $0$, on pourra utiliser le nombre dérivé en $0$ de la fonction
  $p \mapsto (1-p)^k$.) Interpréter : avec une pièce qui ne tombe presque jamais sur « pile »,
  y a-t-il souvent égalité ?
