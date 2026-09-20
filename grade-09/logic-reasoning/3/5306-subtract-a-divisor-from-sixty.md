---
id: "5306"
title: "Retirer un diviseur, en partant de 60"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [jeu, strategie gagnante, diviseurs, parite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Mathematical Games, par Tatiana Shubin (San José State University)"
  reference: "TShubinmathgames.pdf, jeu 8 ; le document ne donne aucune solution"
  url: "https://mathcircles.org/activity/mathematical-games/"
  original_language: "en"
  local_copy: "sources/originals/namc/TShubinmathgames.pdf"
---

## Statement

Au tableau est écrit le nombre $60$.

Chacun à son tour, un joueur efface le nombre écrit et le remplace par ce nombre **diminué de l'un de ses diviseurs positifs**. Par exemple, à partir de $60$, on peut écrire $59$, $58$, $57$, $56$, $55$, $54$, $50$, $48$, $45$, $40$, $30$ ou $0$.

Le joueur qui écrit $0$ a **perdu**. Alice commence.

Lequel des deux joueurs a une stratégie gagnante ?

## Hints

1. Essayer d'abord avec de petits nombres de départ : $1$, $2$, $3$, $4$, $5$. Qui gagne dans chaque cas ?
2. Le joueur qui trouve $1$ écrit au tableau est perdu : pourquoi ?
3. Les diviseurs d'un nombre impair sont-ils pairs ou impairs ? Et ceux d'un nombre pair ?
4. Montrer qu'à partir d'un nombre impair, on ne peut écrire que des nombres pairs, et qu'à partir d'un nombre pair, on peut toujours écrire un nombre impair.

## Solution

**Réponse : Alice gagne. Il lui suffit de toujours laisser un nombre impair à Bob, par exemple en retirant $1$ à chaque fois.**

### La clé : la parité des diviseurs

**Un diviseur d'un nombre impair est toujours impair.** En effet, si $d$ divise $n$ et que $d$ est pair, alors $n$ est pair lui aussi, puisque $n$ est un multiple de $d$.

**Un nombre pair, lui, admet toujours le diviseur $1$, qui est impair.**

### Ce que fait un joueur qui reçoit un nombre impair

Soit $n$ impair, écrit au tableau, et soit $d$ le diviseur que le joueur retire. Comme $d$ est impair,
$$n - d = \text{impair} - \text{impair} = \text{pair}.$$

Ce joueur est donc **obligé** d'écrire un nombre pair. Deux cas :

- ou bien il écrit $0$ (ce qui arrive quand il retire $d = n$), et il a perdu immédiatement ;
- ou bien il écrit un nombre pair strictement positif.

### Ce que fait un joueur qui reçoit un nombre pair non nul

Soit $n$ pair, avec $n \geqslant 2$. Il peut retirer le diviseur $1$ et écrire
$$n - 1,$$
qui est impair et strictement positif (car $n \geqslant 2$). Il ne perd donc pas à ce coup, et il repasse un nombre impair à son adversaire.

### La stratégie d'Alice

Au tableau il y a $60$, qui est pair : Alice est donc dans le bon camp.

**Sa stratégie : toujours retirer $1$** (ou, plus généralement, toujours laisser un nombre impair).

- Elle écrit $59$, qui est impair et non nul.
- Bob, qui reçoit un nombre impair, doit écrire un nombre pair : soit $0$ et il perd tout de suite, soit un nombre pair non nul.
- Alice retire de nouveau $1$ et laisse un nombre impair. Et ainsi de suite.

Le nombre écrit diminue strictement à chaque coup, donc la partie s'arrête. Elle ne peut s'arrêter que lorsque quelqu'un écrit $0$, et ce quelqu'un est toujours un joueur qui vient de recevoir un nombre impair : c'est donc **Bob**.

On peut aussi le voir ainsi : Bob reçoit toujours un nombre impair. S'il reçoit $1$, son seul coup possible est de retirer $1$ et d'écrire $0$ : il perd. Et Alice, elle, ne reçoit jamais que des nombres pairs non nuls, sur lesquels elle a toujours le coup « retirer $1$ » à sa disposition.

**Conclusion : Alice gagne.**

Remarquons pour finir que le nombre $60$ ne joue aucun rôle particulier : le premier joueur gagne dès que le nombre de départ est pair, et perd dès qu'il est impair.

## Going further

1. On interdit de retirer le nombre lui-même : on ne peut donc jamais écrire $0$ d'un coup, et le joueur qui ne peut plus jouer a perdu. Qui gagne en partant de $60$ ? La réponse change-t-elle ?
2. On durcit encore la règle : le diviseur retiré doit être différent de $1$ **et** du nombre lui-même. Un joueur qui ne peut pas jouer a perdu, ce qui arrive dès que le nombre écrit est $1$ ou un nombre premier. Qui gagne en partant de $60$ ?
