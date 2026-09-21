---
id: "7311"
title: "La dernière boule du sac"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [invariant, parite, boules, processus]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2007"
  reference: "stage_ete_2007.pdf, « En TD », stratégie de base (groupe B), exercice 30"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2007.pdf"
---

## Statement

Un grand sac contient $2007$ boules noires et $2007$ boules blanches.

On répète l'opération suivante : on tire deux boules du sac au hasard, puis

- si elles sont **de couleurs différentes**, on remet la boule blanche dans le sac et on met la noire de côté ;
- si elles sont **de la même couleur**, on met les deux de côté.

On continue jusqu'à ce qu'il reste zéro ou une boule dans le sac.

Montrer qu'il reste en fait exactement une boule, et déterminer sa couleur.

## Hints

1. Chaque opération retire une ou deux boules du sac : le jeu se termine forcément. La vraie question est : que peut-on dire du contenu du sac en cours de route ?
2. Ne suis pas les deux couleurs à la fois. Concentre-toi sur **une seule** : les blanches.
3. Passe en revue les trois cas possibles (deux blanches, deux noires, une de chaque) et note à chaque fois de combien le nombre de boules blanches diminue.
4. Tu devrais trouver que ce nombre diminue de $0$ ou de $2$, jamais de $1$. Quelle quantité ne change donc jamais ?
5. Au début il y a $2007$ boules blanches. $2007$ est impair.

## Solution

**On suit le nombre de boules blanches.**

Examinons les trois cas possibles d'un tirage.

| les deux boules tirées | ce qu'on fait | boules blanches retirées |
|---|---|---|
| deux blanches | on met les deux de côté | $2$ |
| deux noires | on met les deux de côté | $0$ |
| une blanche, une noire | on remet la blanche, on met la noire de côté | $0$ |

À chaque opération, le nombre de boules blanches du sac diminue donc de $2$ ou ne change pas. **Il ne diminue jamais de $1$.**

**La parité ne change jamais.**

Comme ce nombre ne varie que par sauts de $2$, sa **parité** est la même du début à la fin. Au départ il y a $2007$ boules blanches, un nombre impair. Donc à chaque instant, le nombre de boules blanches dans le sac est impair.

**Conséquences.**

Un nombre impair n'est jamais nul. Il reste donc **toujours au moins une boule blanche** dans le sac, à chaque instant.

En particulier, le sac ne peut pas se vider : à la fin, il ne reste pas zéro boule, mais exactement une. Et cette boule est blanche, puisqu'il y a toujours au moins une blanche.

**Le jeu se termine-t-il vraiment ?**

Oui : chaque opération retire une ou deux boules du sac, donc le nombre total de boules diminue strictement à chaque fois. Il finit par descendre à $1$ (il ne peut pas atteindre $0$ d'après ce qui précède), et on s'arrête.

**Conclusion.** Il reste exactement une boule, et elle est **blanche**.

**Remarque.** Le nombre de boules noires n'intervient nulle part. On aurait pu partir de $5$ boules noires ou de $10^6$ : la conclusion serait la même. Seule compte la parité du nombre de boules blanches au départ.

## Going further

1. Que se passe-t-il si l'on part de $2008$ boules blanches et $2007$ boules noires ?
2. Et si la règle change : quand les deux boules tirées sont de couleurs différentes, on remet la **noire** et on met la blanche de côté ? Quelle est alors la couleur de la dernière boule ?
3. Trouve une règle de jeu pour laquelle on ne peut pas prévoir la couleur de la dernière boule.
