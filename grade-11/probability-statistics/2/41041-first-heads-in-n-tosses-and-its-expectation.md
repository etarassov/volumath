---
id: "41041"
title: "Le rang du premier Pile en n lancers : son espérance tend vers 1/p"
grade: 11
theme: probability-statistics
difficulty: 2
duration_min: 35
tags: [probabilite, pile-ou-face, independance, variable-aleatoire, esperance, somme-geometrique, telescopage, limite]
adapted_from: null
see_also: ["41042", "1017"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2018, mathématiques, série ES"
  reference: "cg-2018-es-sujet.pdf, problème I, questions 1 à 5. La limite de (q^n) est admise dans l'énoncé, comme celle de (nq^n) dans le sujet."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-es-2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2018-es-sujet.pdf"
---

## Statement

On lance indéfiniment une pièce dont la probabilité de tomber sur Pile est $p$, avec
$0 < p < 1$, et celle de tomber sur Face est $q = 1 - p$. Les lancers sont indépendants.

On admet que, comme $0 < q < 1$, les suites $(q^n)$ et $(nq^n)$ tendent vers $0$ quand $n$ tend
vers $+\infty$.

1. Dans cette question, on lance la pièce trois fois.

   a) Quelle est la probabilité que la pièce tombe sur Face lors des deux premiers lancers et sur
   Pile lors du troisième ?

   b) Quelle est la probabilité que la pièce tombe sur Face lors des trois lancers ?

Pour tout entier $k \geqslant 1$, on pose $p_k = q^{k-1} - q^k$, puis

$$S_k = p_1 + p_2 + \cdots + p_k \qquad \text{et} \qquad E_k = p_1 + 2p_2 + \cdots + kp_k.$$

2. Soit $k \geqslant 1$ un entier.

   a) Montrer que $p_k = pq^{k-1}$.

   b) Montrer que $S_k = 1 - q^k$.

   c) Montrer que $E_3 = 1 + q + q^2 - 3q^3$.

   d) Montrer que $E_k = 1 + q + \cdots + q^{k-1} - kq^k$.
3. a) Déterminer la limite de la suite $(S_n)$.

   b) Montrer que la suite $(E_n)$ tend vers $E = \frac{1}{p}$.

Soit $n \geqslant 1$ un entier. On lance la pièce $n$ fois et on s'intéresse à la première
apparition de Pile. On note $X_n$ le numéro du lancer où Pile apparaît pour la première fois,
avec la convention $X_n = 0$ si la pièce ne tombe jamais sur Pile lors des $n$ lancers.
Autrement dit :

- $X_n = 0$ si la pièce tombe sur Face lors des $n$ lancers ;
- $X_n = 1$ si la pièce tombe sur Pile au premier lancer ;
- pour $2 \leqslant k \leqslant n$, $X_n = k$ si la pièce tombe sur Face lors des $k - 1$
  premiers lancers et sur Pile au lancer numéro $k$.

On note $P(A)$ la probabilité d'un événement $A$.

4. a) Pour $1 \leqslant k \leqslant n$, montrer que $P(X_n = k) = p_k$.

   b) Déterminer $P(X_n = 0)$.

   c) Que signifie, en termes de lancers de pièce, le résultat de la question 3 a) ?
5. a) Que représente $E_n$ pour la variable aléatoire $X_n$ ?

   b) Que signifie, en termes de lancers de pièce, le résultat de la question 3 b) ?

## Hints

1. **Question 2 b.** Écrire la somme en remplaçant chaque $p_j$ par $q^{j-1} - q^j$. Que se
   passe-t-il quand on additionne ?
2. **Question 2 d.** Faire comme à la question 2 c : remplacer chaque $p_j$ par $q^{j-1} - q^j$,
   développer, puis regrouper les termes qui contiennent la même puissance de $q$.
3. **Question 2 d.** Pour $1 \leqslant j \leqslant k - 1$, la puissance $q^j$ apparaît deux fois :
   dans $j\,p_j$ avec le coefficient $-j$, et dans $(j+1)\,p_{j+1}$ avec le coefficient $j + 1$.
4. **Question 3 b.** Calculer d'abord la somme géométrique $1 + q + \cdots + q^{n-1}$.
5. **Question 4 a.** Pour que $X_n = k$, quels lancers ont un résultat imposé, et lequel ?
6. **Question 5 a.** Rappeler la définition de l'espérance d'une variable aléatoire. Que vaut le
   terme qui correspond à la valeur $0$ ?

## Solution

**1.** a) Les lancers sont indépendants, donc on multiplie les probabilités : la probabilité
d'obtenir Face, Face, Pile est $q \times q \times p = pq^2$.

b) De même, la probabilité d'obtenir trois fois Face est $q^3$.

**2.** a) On factorise : $p_k = q^{k-1} - q^k = q^{k-1}(1 - q) = pq^{k-1}$.

b) En remplaçant chaque $p_j$ :

$$S_k = (1 - q) + (q - q^2) + (q^2 - q^3) + \cdots + (q^{k-1} - q^k).$$

Chaque puissance $q, q^2, \ldots, q^{k-1}$ apparaît une fois avec le signe $+$ et une fois avec le
signe $-$ : elles s'éliminent. Il reste $S_k = 1 - q^k$.

c) On développe :

$$E_3 = (1 - q) + 2(q - q^2) + 3(q^2 - q^3) = 1 - q + 2q - 2q^2 + 3q^2 - 3q^3 = 1 + q + q^2 - 3q^3.$$

d) De la même façon,

$$E_k = 1 \times (1 - q) + 2(q - q^2) + 3(q^2 - q^3) + \cdots + k(q^{k-1} - q^k).$$

Regroupons les termes selon les puissances de $q$.

- Le terme constant $1$ n'apparaît que dans $1 \times (1 - q)$ : son coefficient est $1$.
- Pour $1 \leqslant j \leqslant k - 1$, la puissance $q^j$ apparaît dans $j(q^{j-1} - q^j)$ avec
  le coefficient $-j$, et dans $(j + 1)(q^j - q^{j+1})$ avec le coefficient $j + 1$. Au total, son
  coefficient est $-j + (j + 1) = 1$.
- La puissance $q^k$ n'apparaît que dans le dernier terme, avec le coefficient $-k$.

Donc $E_k = 1 + q + \cdots + q^{k-1} - kq^k$. (Pour $k = 1$, la formule donne $1 - q = p_1$, ce
qui est bien $E_1$.)

**3.** a) $S_n = 1 - q^n$ et $q^n$ tend vers $0$, donc $(S_n)$ tend vers $1$.

b) Comme $q \neq 1$, la somme géométrique vaut

$$1 + q + \cdots + q^{n-1} = \frac{1 - q^n}{1 - q} = \frac{1 - q^n}{p},$$

donc $E_n = \frac{1 - q^n}{p} - nq^n$. Quand $n$ tend vers $+\infty$, $q^n$ et $nq^n$ tendent vers
$0$, donc $(E_n)$ tend vers $\frac{1}{p} = E$.

**4.** a) Pour $k = 1$ : $X_n = 1$ signifie que le premier lancer donne Pile, donc
$P(X_n = 1) = p = p_1$.

Pour $2 \leqslant k \leqslant n$ : $X_n = k$ signifie que les $k - 1$ premiers lancers donnent Face
et que le $k$-ième donne Pile. Les résultats des lancers suivants n'ont aucune importance. Par
indépendance, $P(X_n = k) = q^{k-1}p$, qui vaut $p_k$ d'après la question 2 a).

b) $X_n = 0$ signifie que les $n$ lancers donnent Face, donc $P(X_n = 0) = q^n$.

On peut vérifier que les probabilités ont bien pour somme $1$ :
$P(X_n = 0) + P(X_n = 1) + \cdots + P(X_n = n) = q^n + S_n = q^n + 1 - q^n = 1$.

c) $S_n = P(X_n = 1) + \cdots + P(X_n = n) = P(X_n \geqslant 1)$ : c'est la probabilité d'obtenir
au moins une fois Pile en $n$ lancers. Qu'elle tende vers $1$ signifie qu'en lançant la pièce
assez longtemps, on est presque sûr d'obtenir Pile au moins une fois, même si $p$ est très petit.

**5.** a) La variable $X_n$ prend les valeurs $0, 1, \ldots, n$. Son espérance est

$$E(X_n) = 0 \times P(X_n = 0) + 1 \times P(X_n = 1) + \cdots + n \times P(X_n = n) = p_1 + 2p_2 + \cdots + np_n = E_n.$$

Le terme de la valeur $0$ est nul. Donc $E_n$ est l'espérance de $X_n$ : le rang moyen du premier
Pile parmi $n$ lancers, en comptant $0$ quand Pile n'apparaît pas.

b) Quand le nombre de lancers devient grand, le rang moyen du premier Pile se rapproche de
$\frac{1}{p}$. En moyenne, il faut attendre $\frac{1}{p}$ lancers pour obtenir Pile : $2$ lancers
avec une pièce équilibrée ($p = \frac{1}{2}$), $6$ lancers pour obtenir un six avec un dé
($p = \frac{1}{6}$).

**Bilan.** Si l'on lance $n$ fois une pièce, le rang $X_n$ du premier Pile vaut $k$ avec la
probabilité $pq^{k-1}$ pour $1 \leqslant k \leqslant n$, et vaut $0$ (pas de Pile) avec la
probabilité $q^n$. La probabilité d'obtenir au moins un Pile, $1 - q^n$, tend vers $1$, et
l'espérance de $X_n$, égale à $1 + q + \cdots + q^{n-1} - nq^n$, tend vers $\frac{1}{p}$.

## Going further

- Pourquoi $nq^n$ tend-il vers $0$ ? Montrer que, pour $n$ assez grand,
  $\frac{(n+1)q^{n+1}}{nq^n} \leqslant \frac{1 + q}{2}$, puis conclure en comparant avec une suite
  géométrique.
- Dans la suite du sujet, on plaçait les points de coordonnées $(S_n, \frac{E_n}{E})$ : ils sont
  tous sur une même courbe, et l'on calculait un *indice de Gini*, qui mesure l'inégalité entre
  les valeurs de $X_n$. C'est l'exercice 41042.
