---
id: "40604"
title: "QCM à dix questions : quand faut-il s'arrêter ?"
grade: 11
theme: probability-statistics
difficulty: 2
duration_min: 30
tags: [probabilite, independance, arbre, strategie-optimale, factorisation, second-degre]
adapted_from: null
see_also: ["40605"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2017, mathématiques, série S"
  reference: "cg-2017-s-sujet.pdf, problème II « C'est probablement bon », partie A « Franck passe un premier examen », questions 1 à 3. L'indépendance des réponses, implicite dans le sujet, est écrite dans l'énoncé."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2017.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2017-s-sujet.pdf"
---

## Statement

Franck passe un examen sous forme de QCM (questionnaire à choix multiples) de dix questions,
numérotées de $1$ à $10$. Il doit y répondre dans l'ordre : s'il ne répond pas à une question, les
réponses qu'il pourrait donner aux questions suivantes ne sont pas prises en compte.

Chaque bonne réponse rapporte un point, chaque mauvaise réponse fait perdre un point, et une
question sans réponse ne rapporte rien. Franck réussit l'examen si sa note finale est d'au moins
**sept** points.

Franck connaît les bonnes réponses des **six** premières questions. Pour chacune des quatre
questions suivantes, il trouve la bonne réponse avec la probabilité $p$, où $0 < p < 1$,
indépendamment des autres questions. Il ne sait pas, en répondant, si ses réponses à ces quatre
questions sont justes.

1. Montrer que si Franck ne répond pas à la question 9, il a intérêt, pour réussir son examen, à
   ne pas répondre non plus à la question 8.
2. Franck a-t-il intérêt à répondre à la question 10 ?
3. Déterminer, selon la valeur de $p$, la meilleure stratégie pour Franck.

## Hints

1. **Question 1.** Une stratégie revient à choisir combien de questions on traite : les
   $6 + k$ premières, avec $k$ entre $0$ et $4$. S'il ne répond pas à la question 9, Franck
   traite $6$, $7$ ou $8$ questions.
2. **Question 1.** Si Franck traite $6 + k$ questions et réussit $R$ des $k$ questions
   incertaines, quelle est sa note ? À quelle condition sur $R$ réussit-il ?
3. **Question 2.** Comparer la probabilité de réussir en traitant $9$ questions (au moins deux
   bonnes réponses sur trois) et en en traitant $10$ (au moins trois sur quatre). Un arbre aide à
   compter les chemins.
4. **Question 2.** La différence des deux probabilités se factorise : on peut mettre $-3p^2$ en
   facteur.
5. **Question 3.** Il ne reste que deux stratégies sérieuses. Lesquelles ? Factoriser la
   différence de leurs probabilités de succès.

## Solution

*Mise en équation.* Franck a toujours intérêt à répondre aux six premières questions : sinon sa
note est au plus $5$. Une stratégie consiste donc à répondre aux $6 + k$ premières questions,
avec $k \in \{0, 1, 2, 3, 4\}$, puis à s'arrêter. S'il donne $R$ bonnes réponses parmi les $k$
questions incertaines, il en donne $k - R$ mauvaises, et sa note est
$$6 + R - (k - R) = 6 + 2R - k .$$
Il réussit si et seulement si $6 + 2R - k \geq 7$, c'est-à-dire $2R \geq k + 1$. Notons $p_k$ la
probabilité de réussir en répondant aux $6 + k$ premières questions. Les réponses étant
indépendantes, la probabilité d'une suite donnée de bonnes et mauvaises réponses est le produit
des probabilités (arbre pondéré).

- $k = 0$ : la note est $6$, Franck échoue : $p_0 = 0$.
- $k = 1$ : il faut $R = 1$ : $p_1 = p$.
- $k = 2$ : il faut $2R \geq 3$, donc $R = 2$ : $p_2 = p^2$.
- $k = 3$ : il faut $R \geq 2$. Exactement deux bonnes réponses : la mauvaise est la 7, la 8 ou
  la 9, soit $3$ chemins de probabilité $p^2(1 - p)$. Trois bonnes réponses : $p^3$. Donc
  $p_3 = 3p^2(1 - p) + p^3 = 3p^2 - 2p^3$.
- $k = 4$ : il faut $2R \geq 5$, donc $R \geq 3$. Exactement trois bonnes réponses : $4$ chemins
  de probabilité $p^3(1 - p)$ ; quatre : $p^4$. Donc $p_4 = 4p^3(1 - p) + p^4 = 4p^3 - 3p^4$.

**1.** S'il ne répond pas à la question 9, Franck traite $6$, $7$ ou $8$ questions, avec les
probabilités de succès $p_0 = 0$, $p_1 = p$ et $p_2 = p^2$. Comme $0 < p < 1$, on a $p^2 < p$ :
la meilleure de ces trois stratégies est de répondre à la question 7 et de s'arrêter.
**Conclusion :** il a intérêt à ne pas répondre à la question 8.

**2.** Répondre à la question 10, c'est traiter les dix questions ($k = 4$). Comparons avec
l'arrêt après la question 9 ($k = 3$) :
$$p_4 - p_3 = 4p^3 - 3p^4 - 3p^2 + 2p^3 = -3p^2\left(p^2 - 2p + 1\right) = -3p^2(1 - p)^2 < 0 .$$
**Conclusion :** non, quelle que soit la valeur de $p$, répondre à la question 10 diminue ses
chances par rapport à un arrêt après la question 9.

**3.** D'après ce qui précède, $p_0 = 0$, $p_2 < p_1$ et $p_4 < p_3$. La meilleure stratégie est
donc de s'arrêter après la question 7 ou après la question 9. Comparons :
$$p_3 - p_1 = 3p^2 - 2p^3 - p = -p\left(2p^2 - 3p + 1\right) = -p\,(2p - 1)(p - 1) = p\,(1 - p)(2p - 1) .$$
Comme $p > 0$ et $1 - p > 0$, le signe de $p_3 - p_1$ est celui de $2p - 1$.

**Conclusion :**

- si $p < \frac{1}{2}$, Franck doit répondre aux questions 1 à 7 seulement ; il réussit avec la
  probabilité $p$ ;
- si $p > \frac{1}{2}$, il doit répondre aux questions 1 à 9, et pas à la question 10 ; il
  réussit avec la probabilité $3p^2 - 2p^3$ ;
- si $p = \frac{1}{2}$, les deux stratégies se valent, avec une probabilité de succès
  $\frac{1}{2}$.

**Bilan.** Franck ne doit jamais traiter un nombre pair de questions incertaines : la dernière
d'entre elles ne peut que lui faire perdre son point d'avance. Entre une et trois questions
incertaines, il choisit trois quand il a plus d'une chance sur deux de répondre juste, une
seulement sinon.

## Going further

- Pourquoi, intuitivement, la question 8 ne sert-elle à rien quand on s'arrête juste après ?
  Après la question 7, Franck a soit $7$ points, soit $5$. Que peut lui apporter la question 8
  dans chacun des deux cas ?
- Dans la suite du sujet, l'examen comptait $50$ questions, dont $24$ connues, et il fallait
  $25$ points. On montrait que la même règle se généralise : voir l'exercice 40605.
