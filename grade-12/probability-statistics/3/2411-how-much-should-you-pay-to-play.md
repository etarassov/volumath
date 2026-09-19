---
id: "2411"
title: "Combien accepter de miser ?"
grade: 12
theme: probability-statistics
difficulty: 3
duration_min: 30
tags: [loi-binomiale, esperance, variable-aleatoire, jeu-equitable, linearite]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced Circle, Random Variables"
  reference: "Handout-505-598.pdf, exercices 14 et 15 (réponses dans Handout-506-598.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-505-598.pdf"
---

## Statement

Une fête foraine propose le jeu suivant. On paie $M$ euros pour jouer. On lance alors $30$ fois un dé équilibré à six faces, et on reçoit $4$ euros pour chaque $6$ obtenu.

On note $X$ le nombre de $6$ obtenus au cours des $30$ lancers, et $G$ le gain net du joueur, c'est-à-dire ce qu'il reçoit moins ce qu'il a payé.

1. Quelle est la loi de $X$ ? Donner $P(X = k)$ pour $0 \le k \le 30$.
2. Exprimer $G$ en fonction de $X$, puis calculer $E(G)$.
3. Pour quelles valeurs de $M$ le jeu est-il favorable au joueur, au sens où $E(G) \ge 0$ ?
4. Le forain fixe $M = 18$ euros. Calculer $E(G)$ et l'écart type de $G$. Commenter.

## Hints

1. Chaque lancer est une épreuve à deux issues, « on fait un $6$ » ou « on ne fait pas un $6$ », et les lancers sont indépendants.
2. L'espérance est linéaire : pour des réels $a$ et $b$, $E(aX + b) = a\,E(X) + b$.
3. Pour une loi binomiale de paramètres $n$ et $p$, on a $E(X) = np$ et $V(X) = np(1-p)$.
4. Attention pour la variance : $V(aX+b) = a^2 V(X)$, la constante $b$ disparaît et le coefficient $a$ est élevé au carré.

## Solution

### 1. La loi de $X$

Les $30$ lancers sont indépendants et identiques. À chaque lancer, « obtenir un $6$ » est un succès de probabilité $p = \dfrac{1}{6}$. On répète donc $n = 30$ fois une même épreuve de Bernoulli de paramètre $\dfrac{1}{6}$, de façon indépendante : $X$ suit la loi binomiale $\mathcal{B}\left(30\,;\tfrac{1}{6}\right)$, et pour $0 \le k \le 30$

$$P(X = k) = \binom{30}{k}\left(\frac{1}{6}\right)^{k}\left(\frac{5}{6}\right)^{30-k} .$$

### 2. Le gain moyen

Le joueur reçoit $4X$ euros et a payé $M$ euros, donc

$$G = 4X - M .$$

L'espérance d'une loi binomiale vaut $E(X) = np$, soit ici

$$E(X) = 30 \times \frac{1}{6} = 5 .$$

Par linéarité de l'espérance,

$$E(G) = 4\,E(X) - M = 4 \times 5 - M = 20 - M .$$

### 3. Quand le jeu est-il favorable ?

$$E(G) \ge 0 \iff 20 - M \ge 0 \iff M \le 20 .$$

Le joueur a donc intérêt à jouer tant que la mise ne dépasse pas $20$ euros. Pour $M = 20$ le jeu est *équitable* : en moyenne, sur un très grand nombre de parties, le joueur ne gagne ni ne perd rien. Au-delà, le jeu est favorable au forain.

### 4. Avec une mise de $18$ euros

$$E(G) = 20 - 18 = 2 \ \text{euros} .$$

Pour la variance, on utilise $V(X) = np(1-p)$ :

$$V(X) = 30 \times \frac{1}{6} \times \frac{5}{6} = \frac{25}{6} \approx \text{4,17} ,$$

puis $V(G) = V(4X - 18) = 4^{2}\,V(X) = 16 \times \dfrac{25}{6} = \dfrac{200}{3} \approx \text{66,7}$, d'où

$$\sigma(G) = \sqrt{\frac{200}{3}} \approx \text{8,2} \ \text{euros} .$$

**Commentaire.** Le jeu est favorable au joueur, mais de peu : il gagne en moyenne $2$ euros par partie, alors que le gain s'écarte typiquement de $8$ euros de cette moyenne. Sur une seule partie, l'avantage est donc à peine perceptible : il suffit d'obtenir quatre $6$ au lieu de cinq pour perdre $2$ euros. C'est en jouant un grand nombre de parties que l'avantage finit par se voir.

## Going further

1. Calculer $P(G > 0)$, c'est-à-dire la probabilité que le joueur gagne effectivement de l'argent lorsque $M = 18$.
2. Le forain veut gagner en moyenne $2$ euros par partie. Quelle mise doit-il demander ?
3. Reprendre l'exercice si l'on gagne $4$ euros pour chaque $6$ **et** $1$ euro pour chaque $5$.
