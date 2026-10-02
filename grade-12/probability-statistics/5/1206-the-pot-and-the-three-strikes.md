---
id: "1206"
title: "Le pot et les trois fautes"
grade: 12
theme: probability-statistics
difficulty: 5
duration_min: 50
tags: [esperance, strategie-optimale, recurrence, suite-geometrique, arret-optimal]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 1, compétition d'automne 2023"
  reference: "Handout-4216-3990.pdf, problème 1.3 (réponse dans Handout-4217-3990.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4216-3990.pdf"
---

## Statement

Voici un jeu de fête foraine. Devant vous, un pot, vide au départ. Vous lancez une pièce équilibrée autant de fois que vous le voulez :

- si elle tombe sur **pile**, on ajoute $100$ jetons dans le pot ;
- si elle tombe sur **face**, le pot est entièrement vidé et vous recevez une **faute**.

À tout moment, avant un lancer, vous pouvez décider d'arrêter et de repartir avec tous les jetons présents dans le pot. Mais dès que vous avez reçu **trois fautes**, le jeu s'arrête d'office et vous repartez les mains vides.

Vous jouez du mieux possible. Quelle est l'espérance de gain de la meilleure stratégie ?

## Hints

1. À un instant donné, tout ce qui compte est le nombre de fautes déjà reçues et le nombre de jetons dans le pot. Le passé n'apporte rien d'autre.
2. Commencer par le cas le plus simple : vous avez déjà **deux** fautes. Une seule face de plus et tout est perdu.
3. Dans ce cas, une stratégie revient à choisir un nombre $k$ : « je lance encore $k$ fois, et si je réussis $k$ piles d'affilée je m'arrête ». Calculer l'espérance de gain en fonction de $k$ et du pot de départ.
4. Une fois connue la valeur du jeu à deux fautes, on peut traiter le cas d'une seule faute : quand une face tombe, on ne perd pas tout, on retombe sur la situation précédente.
5. Il faut donc remonter : valeur du jeu à $2$ fautes, puis à $1$ faute, puis à $0$ faute. C'est un raisonnement **à rebours**.
6. À chaque étape, comparer les espérances pour $k = 0, 1, 2, 3, 4$ suffit : au-delà, le facteur $\left(\frac12\right)^k$ écrase tout.

## Solution

**Mise en place.**

L'état du jeu est décrit par deux nombres : le nombre $s$ de fautes déjà reçues ($s = 0$, $1$ ou $2$) et le nombre $v$ de jetons dans le pot.

Notons $W_s$ l'espérance de gain de la meilleure stratégie **à partir d'un pot vide** avec $s$ fautes au compteur. Le nombre cherché est $W_0$. Par convention, $W_3 = 0$ : avec trois fautes, le jeu est fini et on ne gagne rien.

**Le seul type de stratégie possible.**

Tant qu'on n'a pas reçu de nouvelle face, la seule chose qui change est le nombre de piles enchaînés. Une stratégie consiste donc, dans chaque état, à se fixer un objectif : « je m'arrête dès que j'ai obtenu $k$ piles de plus ». Si, en route, une face tombe, le pot est vidé, on écope d'une faute, et on recommence à jouer au mieux dans le nouvel état.

Partons d'un pot de $v$ jetons avec $s$ fautes, en visant $k$ piles de plus. Deux issues :

- une face tombe au $(j+1)$-ième lancer, après $j$ piles ($0 \leqslant j \leqslant k-1$) : cela arrive avec la probabilité $\left(\frac12\right)^{j+1}$, et on se retrouve avec le gain espéré $W_{s+1}$ ;
- les $k$ premiers lancers donnent tous pile : cela arrive avec la probabilité $\left(\frac12\right)^{k}$, et on repart avec $v + 100k$ jetons.

L'espérance de gain de cette stratégie vaut donc

$$E_k(v,s) = W_{s+1} \sum_{j=0}^{k-1} \left(\frac12\right)^{j+1} + \left(\frac12\right)^{k}(v + 100k).$$

La somme géométrique vaut $\frac12 \cdot \dfrac{1 - (1/2)^k}{1 - 1/2} = 1 - \left(\frac12\right)^k$, d'où la formule de travail :

$$E_k(v,s) = W_{s+1}\left[1 - \left(\frac12\right)^{k}\right] + \left(\frac12\right)^{k}(v + 100k),$$

qu'on écrira aussi, en partant d'un pot vide ($v = 0$),

$$E_k(0,s) = W_{s+1} + \left(\frac12\right)^{k}\bigl(100k - W_{s+1}\bigr).$$

Sous cette forme, on voit tout de suite le comportement pour les grands $k$ : le terme $\left(\frac12\right)^{k}(100k - W_{s+1})$ tend vers $0$, donc $E_k(0,s)$ redescend vers $W_{s+1}$. Il suffit donc d'examiner les premières valeurs de $k$.

**Étape 1 : deux fautes au compteur ($s = 2$, donc $W_3 = 0$).**

$$E_k(0,2) = \left(\frac12\right)^{k} \times 100k.$$

$$E_0 = 0, \quad E_1 = 50, \quad E_2 = 50, \quad E_3 = \text{37,5}, \quad E_4 = 25.$$

Au-delà, $100k / 2^k$ ne fait que décroître : en passant de $k$ à $k+1$ le numérateur est multiplié par $\frac{k+1}{k} \leqslant 2$ tandis que le dénominateur double. Donc

$$W_2 = 50.$$

La meilleure conduite, à deux fautes : s'arrêter dès qu'on a $100$ jetons (ou $200$, cela revient exactement au même).

**Étape 2 : une faute au compteur ($s = 1$, donc $W_2 = 50$).**

$$E_k(0,1) = 50\left[1 - \left(\frac12\right)^{k}\right] + \left(\frac12\right)^{k} \times 100k.$$

$$E_0 = 0, \qquad E_1 = 25 + 50 = 75, \qquad E_2 = \text{37,5} + 50 = \text{87,5},$$
$$E_3 = \text{43,75} + \text{37,5} = \text{81,25}, \qquad E_4 = \text{46,875} + 25 = \text{71,875}.$$

D'après la remarque ci-dessus, l'espérance décroît ensuite vers $50$. Donc

$$W_1 = \text{87,5}.$$

**Étape 3 : aucune faute ($s = 0$, donc $W_1 = \text{87,5}$).**

$$E_k(0,0) = \text{87,5}\left[1 - \left(\frac12\right)^{k}\right] + \left(\frac12\right)^{k} \times 100k.$$

$$E_0 = 0, \qquad E_1 = \text{43,75} + 50 = \text{93,75}, \qquad E_2 = \text{65,625} + 50 = \text{115,625},$$
$$E_3 = \text{76,5625} + \text{37,5} = \text{114,0625}, \qquad E_4 = \text{82,03125} + 25 = \text{107,03125}.$$

Ensuite l'espérance redescend vers $\text{87,5}$, toujours pour la même raison. Le maximum est atteint en $k = 2$ :

$$W_0 = \text{115,625} = \frac{925}{8}.$$

**La stratégie optimale.** À chacun des trois niveaux, on vise $200$ jetons puis on s'arrête : « deux piles d'affilée et je pars ». (Au dernier niveau, viser $100$ jetons donne exactement le même résultat.)

**Conclusion.** Le mieux qu'on puisse espérer est $\dfrac{925}{8} = \text{115,625}$ jetons en moyenne, soit un peu plus que la valeur d'un seul pile. Le droit à trois fautes vaut donc cher : sans lui, l'espérance tomberait à $50$ jetons.

## Going further

1. Remplacer trois fautes par $n$ fautes. Montrer que la suite $(W_0^{(n)})$ des espérances optimales est croissante, et trouver sa limite quand $n \to +\infty$.
2. Que devient la réponse si la pièce n'est pas équilibrée et donne pile avec la probabilité $p$ ? Pour quelles valeurs de $p$ a-t-on intérêt à ne jamais s'arrêter ?
