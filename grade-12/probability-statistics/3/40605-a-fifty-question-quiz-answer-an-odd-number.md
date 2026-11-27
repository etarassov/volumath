---
id: "40605"
title: "QCM à cinquante questions : répondre à un nombre impair de questions"
grade: 12
theme: probability-statistics
difficulty: 3
duration_min: 50
tags: [probabilite, loi-binomiale, coefficients-binomiaux, independance, strategie-optimale, factorisation]
adapted_from: null
see_also: ["40604"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2017, mathématiques, série S"
  reference: "cg-2017-s-sujet.pdf, problème II « C'est probablement bon », partie B « Franck passe un second examen », questions 1 à 4. L'indépendance des réponses, implicite dans le sujet, est écrite dans l'énoncé ; l'indication du sujet (formule de Pascal) n'est pas reprise, la solution s'en passe."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2017.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2017-s-sujet.pdf"
---

## Statement

Franck passe un examen sous forme de QCM (questionnaire à choix multiples) de $50$ questions. Il
doit y répondre dans l'ordre : s'il ne répond pas à une question, les réponses qu'il pourrait
donner aux questions suivantes ne sont pas prises en compte. Chaque bonne réponse rapporte un
point, chaque mauvaise réponse fait perdre un point, et une question sans réponse ne rapporte
rien.

Pour réussir, Franck doit obtenir une note finale d'au moins $25$ points. Il connaît les réponses
aux $24$ premières questions. Pour chacune des $26$ questions suivantes, il trouve la bonne
réponse avec la probabilité $p$, où $0 < p < 1$, indépendamment des autres questions.

Pour tout entier $k$ tel que $1 \leq k \leq 26$, on note $P_k$ la probabilité que Franck
réussisse son examen en répondant seulement aux $24 + k$ premières questions.

1. Montrer que, pour tout entier $k$ tel que $1 \leq k \leq 13$, on a $P_{2k-1} > P_{2k}$.
2. Montrer que, pour tout entier $k$ tel que $0 \leq k \leq 12$,
   $$P_{2k+1} = \sum_{i=k+1}^{2k+1} \binom{2k+1}{i} p^i (1 - p)^{2k+1-i} .$$
3. Montrer que, pour tout entier $k$ tel que $0 \leq k \leq 11$,
   $$P_{2k+3} - P_{2k+1} = \binom{2k+1}{k+1} p^{k+1} (1 - p)^{k+1} (2p - 1) .$$
4. Déterminer, selon la valeur de $p$, la meilleure stratégie pour Franck.

## Hints

1. **Question 1.** Si Franck traite $24 + m$ questions et réussit $X$ des $m$ questions
   incertaines, sa note est $24 + 2X - m$. Écrire la condition de réussite pour $m = 2k - 1$ et
   pour $m = 2k$.
2. **Question 1.** Le nombre de bonnes réponses parmi les $2k$ premières questions incertaines
   est celui parmi les $2k - 1$ premières, plus $0$ ou $1$ pour la dernière. Dans quel cas la
   dernière question change-t-elle le résultat ?
3. **Question 2.** Quelle est la loi du nombre de bonnes réponses parmi $2k + 1$ questions
   incertaines ?
4. **Question 3.** Notons $X$ le nombre de bonnes réponses parmi les $2k + 1$ premières questions
   incertaines, et $Z$ celui parmi les deux suivantes. Avec $2k + 3$ questions, Franck réussit si
   $X + Z \geq k + 2$. Séparer les cas $X \geq k + 2$, $X = k + 1$, $X = k$, $X \leq k - 1$.
5. **Question 3.** Seuls les cas $X = k + 1$ et $X = k$ diffèrent entre les deux stratégies. On
   pourra utiliser $\binom{2k+1}{k} = \binom{2k+1}{k+1}$.
6. **Question 4.** Ne garder que les $P_k$ d'indice impair. La question 3 dit comment ils varient.

## Solution

*Mise en équation.* Pour $1 \leq m \leq 26$, notons $X_m$ le nombre de bonnes réponses parmi les
questions $25$ à $24 + m$. Les réponses étant indépendantes et chacune juste avec la probabilité
$p$, $X_m$ suit la loi binomiale de paramètres $m$ et $p$. Si Franck répond aux $24 + m$ premières
questions, sa note est $24 + X_m - (m - X_m) = 24 + 2X_m - m$, et il réussit si et seulement si
$2X_m \geq m + 1$.

**1.** Soit $1 \leq k \leq 13$.

- Avec $2k$ questions incertaines, Franck réussit si $2X_{2k} \geq 2k + 1$, c'est-à-dire, $X_{2k}$
  étant entier, $X_{2k} \geq k + 1$.
- Avec $2k - 1$ questions incertaines, il réussit si $2X_{2k-1} \geq 2k$, c'est-à-dire
  $X_{2k-1} \geq k$.

Notons $Y$ la variable qui vaut $1$ si la réponse à la question $24 + 2k$ est juste et $0$
sinon : $X_{2k} = X_{2k-1} + Y$, avec $Y$ indépendante de $X_{2k-1}$ et $P(Y = 1) = p$. On a
$X_{2k} \geq k + 1$ exactement quand $X_{2k-1} \geq k + 1$, ou bien quand $X_{2k-1} = k$ et $Y = 1$.
Donc
$$P_{2k} = P(X_{2k-1} \geq k + 1) + p\,P(X_{2k-1} = k) ,$$
$$P_{2k-1} = P(X_{2k-1} \geq k + 1) + P(X_{2k-1} = k) .$$
Par différence,
$$P_{2k-1} - P_{2k} = (1 - p)\,P(X_{2k-1} = k) = (1 - p) \binom{2k-1}{k} p^k (1 - p)^{k-1} > 0 .$$
**Conclusion :** $P_{2k-1} > P_{2k}$. La dernière question ne sert à Franck que s'il a déjà juste
assez de points, et elle peut alors les lui faire perdre.

**2.** Avec $2k + 1$ questions incertaines, Franck réussit si et seulement si
$2X_{2k+1} \geq 2k + 2$, soit $X_{2k+1} \geq k + 1$. Comme $X_{2k+1}$ suit la loi binomiale de
paramètres $2k + 1$ et $p$,
$$P_{2k+1} = \sum_{i=k+1}^{2k+1} P(X_{2k+1} = i) = \sum_{i=k+1}^{2k+1} \binom{2k+1}{i} p^i (1 - p)^{2k+1-i} .$$

**3.** Soit $0 \leq k \leq 11$. Notons $X = X_{2k+1}$ et $Z$ le nombre de bonnes réponses aux
questions $24 + 2k + 2$ et $24 + 2k + 3$. Alors $X_{2k+3} = X + Z$, la variable $Z$ est
indépendante de $X$, et
$$P(Z = 0) = (1 - p)^2 , \qquad P(Z \geq 1) = 1 - (1 - p)^2 , \qquad P(Z = 2) = p^2 .$$
Avec $2k + 3$ questions incertaines, Franck réussit si $X + Z \geq k + 2$. Selon la valeur de $X$ :

- si $X \geq k + 2$, il réussit toujours ;
- si $X = k + 1$, il réussit si $Z \geq 1$ ;
- si $X = k$, il réussit si $Z = 2$ ;
- si $X \leq k - 1$, il échoue, car $Z \leq 2$.

Donc
$$P_{2k+3} = P(X \geq k + 2) + \left(1 - (1 - p)^2\right) P(X = k + 1) + p^2\,P(X = k) ,$$
tandis que $P_{2k+1} = P(X \geq k + 1) = P(X \geq k + 2) + P(X = k + 1)$. Par différence,
$$P_{2k+3} - P_{2k+1} = p^2\,P(X = k) - (1 - p)^2\,P(X = k + 1) .$$
Or $P(X = k) = \binom{2k+1}{k} p^k (1 - p)^{k+1}$ et
$P(X = k + 1) = \binom{2k+1}{k+1} p^{k+1} (1 - p)^{k}$, avec
$\binom{2k+1}{k} = \binom{2k+1}{k+1}$ (choisir $k$ éléments parmi $2k + 1$ revient à choisir les
$k + 1$ autres). Notons $C$ ce coefficient. Alors
$$P_{2k+3} - P_{2k+1} = C\left(p^{k+2}(1 - p)^{k+1} - p^{k+1}(1 - p)^{k+2}\right) = C\,p^{k+1}(1 - p)^{k+1}\left(p - (1 - p)\right) ,$$
ce qui donne bien
$$P_{2k+3} - P_{2k+1} = \binom{2k+1}{k+1} p^{k+1}(1 - p)^{k+1}(2p - 1) .$$

**4.** Répondre seulement aux $24$ premières questions donne la note $24$ : c'est un échec
certain. Pour $k \geq 1$, d'après la question 1, chaque stratégie paire $P_{2k}$ est battue par
$P_{2k-1}$ : la meilleure stratégie est parmi $P_1, P_3, \ldots, P_{25}$. D'après la question 3,
le signe de $P_{2k+3} - P_{2k+1}$ est celui de $2p - 1$, car les autres facteurs sont
strictement positifs.

**Conclusion :**

- si $p > \frac{1}{2}$, la suite $P_1, P_3, \ldots, P_{25}$ est strictement croissante : Franck doit
  répondre aux $49$ premières questions, et laisser la dernière sans réponse ;
- si $p < \frac{1}{2}$, elle est strictement décroissante : Franck doit répondre aux $25$
  premières questions seulement, et il réussit avec la probabilité $P_1 = p$ ;
- si $p = \frac{1}{2}$, toutes les stratégies impaires se valent, avec la probabilité
  $P_1 = \frac{1}{2}$ : Franck répond à $24 + k$ questions, avec $k$ impair quelconque.

**Bilan.** Il ne faut jamais traiter un nombre pair de questions incertaines. Parmi les nombres
impairs, plus on en traite, mieux c'est quand chaque réponse est juste avec une probabilité
supérieure à $\frac{1}{2}$, et moins on en traite, mieux c'est quand elle est inférieure à
$\frac{1}{2}$.

## Going further

- Pour $p = \text{0,6}$, calculer à la calculatrice $P_1$, $P_{25}$ et $P_{26}$. Le gain à
  traiter $25$ questions plutôt qu'une est-il important ?
- La partie précédente du sujet traitait le même problème avec $10$ questions, dont $6$ connues,
  et un seuil de $7$ points : voir l'exercice 40604.
- Le sujet proposait de prouver la question 3 avec la formule de Pascal
  $\binom{n}{m} = \binom{n-1}{m-1} + \binom{n-1}{m}$, appliquée à la somme de la question 2.
  Essayer cette autre voie.
