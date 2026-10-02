---
id: "2410"
title: "Quel lancer a donné pile ?"
grade: 12
theme: probability-statistics
difficulty: 5
duration_min: 40
tags: [probabilite-conditionnelle, denombrement, coefficient-binomial, symetrie, pile-ou-face]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced Circle, Conditional Probability"
  reference: "Handout-498-578.pdf, exercice 7 (réponse dans Handout-499-578.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-498-578.pdf"
---

## Statement

On lance $n$ fois une pièce équilibrée. Soient $i$ et $k$ deux entiers avec $1 \le i \le n$ et $0 \le k \le n$.

On note $A_i$ l'événement « le $i$-ième lancer donne pile » et $B_k$ l'événement « on obtient exactement $k$ piles au total ».

1. Calculer $P(A_i \mid B_k)$ pour $k \ne 0$.
2. Le résultat dépend-il de $i$ ? Expliquer pourquoi, sans calcul.

## Hints

1. Décris une partie par un mot de $n$ lettres, chacune valant $P$ ou $F$. Combien y a-t-il de mots en tout ? Combien en comportent exactement $k$ fois la lettre $P$ ?
2. Tous ces mots ont la même probabilité, donc tu peux te contenter de compter.
3. Parmi les mots à $k$ piles, combien ont un $P$ en position $i$ ? Les $k-1$ autres piles se placent librement parmi les $n-1$ positions restantes.
4. Pour la question 2 : imagine que l'on additionne $P(A_1 \mid B_k) + P(A_2 \mid B_k) + \cdots + P(A_n \mid B_k)$. À quoi correspond cette somme ?

## Solution

### 1. Le calcul

Une partie est un mot de $n$ lettres prises dans $\{P, F\}$. Il y a $2^n$ mots, tous de même probabilité $\dfrac{1}{2^n}$ puisque la pièce est équilibrée et les lancers indépendants.

*L'événement $B_k$.* Un mot réalise $B_k$ lorsqu'il comporte exactement $k$ fois la lettre $P$. Choisir un tel mot, c'est choisir les $k$ positions des piles parmi $n$, donc

$$P(B_k) = \frac{\binom{n}{k}}{2^{n}} .$$

*L'événement $A_i \cap B_k$.* Un mot le réalise lorsque sa $i$-ième lettre est $P$ et qu'il comporte $k$ piles en tout. La position $i$ est alors imposée, et il reste à placer les $k-1$ autres piles parmi les $n-1$ positions restantes :

$$P(A_i \cap B_k) = \frac{\binom{n-1}{k-1}}{2^{n}} .$$

*Le quotient.* Comme $k \ne 0$, on a $P(B_k) > 0$ et

$$P(A_i \mid B_k) = \frac{P(A_i \cap B_k)}{P(B_k)} = \frac{\binom{n-1}{k-1}}{\binom{n}{k}} .$$

Il reste à simplifier. En écrivant les deux coefficients avec des factorielles :

$$\frac{\binom{n-1}{k-1}}{\binom{n}{k}} = \frac{\dfrac{(n-1)!}{(k-1)!\,(n-k)!}}{\dfrac{n!}{k!\,(n-k)!}} = \frac{(n-1)!\;k!}{n!\;(k-1)!} = \frac{k}{n} .$$

Donc

$$\boxed{\,P(A_i \mid B_k) = \frac{k}{n}\,}$$

*(On peut aussi obtenir cette simplification à partir de l'identité $k\binom{n}{k} = n\binom{n-1}{k-1}$.)*

### 2. Pourquoi le résultat ne dépend pas de $i$

Le résultat est le même pour tous les lancers, et cela se comprend sans calcul.

*Par symétrie.* Une fois que l'on sait qu'il y a exactement $k$ piles, tous les mots à $k$ piles sont également probables. Or les positions des lancers jouent des rôles parfaitement interchangeables : échanger la position $1$ et la position $i$ transforme l'ensemble des mots à $k$ piles en lui-même. Aucune position ne peut donc être privilégiée.

*Par la somme.* Introduisons, pour chaque lancer, l'indicateur « ce lancer est pile ». Sachant $B_k$, le nombre total de piles vaut $k$ à coup sûr. En sommant les $n$ probabilités conditionnelles, on obtient donc

$$P(A_1 \mid B_k) + P(A_2 \mid B_k) + \cdots + P(A_n \mid B_k) = k .$$

Comme les $n$ termes sont tous égaux par symétrie, chacun vaut $\dfrac{k}{n}$.

**Lecture du résultat.** La réponse est simplement la proportion de piles dans la partie. Si l'on sait que sur $10$ lancers il y a eu $3$ piles, alors chaque lancer particulier a la probabilité $\dfrac{3}{10}$ d'avoir été un pile. C'est ce que l'intuition suggère : savoir combien de piles il y a, sans savoir où, revient à tirer au hasard $k$ positions parmi $n$.

## Going further

1. Reprendre le calcul avec une pièce déséquilibrée, telle que $P(\text{pile}) = p$. Le résultat change-t-il ?
2. Calculer $P(A_1 \cap A_2 \mid B_k)$, probabilité que les deux premiers lancers soient des piles sachant qu'il y a $k$ piles en tout.
3. Les événements $A_1$ et $A_2$ sont indépendants. Le sont-ils encore sachant $B_k$ ?
