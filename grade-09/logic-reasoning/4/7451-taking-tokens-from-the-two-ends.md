---
id: "7451"
title: "Prendre les jetons par les deux bouts"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [jeu, strategie, parite, somme]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, chasse au trésor"
  reference: "stage_ete_2011.pdf, « Chasse au trésor », énigmes, exercice 6 (la question 1 est le résultat général qui sert à résoudre l'énigme, la question 2 est l'énigme elle-même)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

Des jetons sont alignés sur une table. Sur chaque jeton est écrit un nombre entier positif.

Deux joueurs jouent à tour de rôle. À son tour, un joueur prend **l'un des deux jetons situés aux
extrémités** de la ligne et le met de côté, dans sa propre réserve. La ligne raccourcit donc d'un
jeton à chaque coup, et on joue jusqu'à ce qu'il n'en reste aucun.

À la fin, chacun additionne les nombres de sa réserve. Celui qui obtient la plus grande somme a
gagné ; en cas d'égalité, la partie est nulle.

1. On suppose que le nombre de jetons est **pair**. Montrer que le joueur qui commence peut
   toujours s'arranger pour ne pas perdre, quels que soient les nombres écrits sur les jetons.
2. On joue maintenant avec les treize jetons suivants, dans cet ordre de gauche à droite :
   $$7 \quad 2 \quad 3 \quad 8 \quad 9 \quad 4 \quad 1 \quad 6 \quad 3 \quad 2 \quad 4 \quad 7 \quad 1.$$
   Lequel des deux joueurs peut être sûr de gagner ?

## Hints

1. Numérote les positions des jetons de gauche à droite : $1$, $2$, $3$, et ainsi de suite.
   Sépare-les en positions paires et positions impaires.
2. Au tout début, l'extrémité gauche est en position $1$ et l'extrémité droite en position $2n$ :
   une impaire et une paire. Si le premier joueur prend un jeton de position impaire, que
   deviennent les deux extrémités ?
3. Montre que le premier joueur peut s'assurer **tous** les jetons de position impaire s'il le
   veut, et aussi bien tous ceux de position paire. Il lui reste à choisir.
4. Pour la question 2, le nombre de jetons est impair. Après le premier coup, il en reste douze :
   qui se retrouve alors dans la situation de la question 1 ?

## Solution

### Question 1 : avec un nombre pair de jetons

Supposons qu'il y ait $2n$ jetons. Numérotons les **positions** de $1$ à $2n$, de gauche à droite.
Ces numéros ne changent jamais : un jeton garde son numéro de départ même quand la ligne
raccourcit.

Notons :
$$I = \text{somme des jetons de position impaire}, \qquad P = \text{somme des jetons de position paire}.$$

**Le premier joueur peut prendre tous les jetons de position impaire.** Voici pourquoi.

À tout moment, la ligne restante est un morceau de la ligne de départ : un bloc de positions
consécutives, disons de la position $i$ à la position $j$.

- **Quand c'est au premier joueur de jouer**, il a déjà pris autant de jetons que son adversaire,
  donc il reste un nombre **pair** de jetons : $j - i + 1$ est pair, donc $j - i$ est impair, donc
  $i$ et $j$ **n'ont pas la même parité**. L'une des deux extrémités est en position impaire : il
  la prend.
- **Après ce coup**, il reste un nombre impair de jetons. Le nouveau bloc a ses deux extrémités de
  **même** parité, et comme on vient d'enlever une position impaire, ces deux extrémités sont
  paires. Quoi que fasse le second joueur, il prend donc un jeton de position paire.

On revient alors à la situation de départ, avec un nombre pair de jetons restants. En répétant,
le premier joueur récupère **tous** les jetons de position impaire, et le second tous ceux de
position paire.

La somme du premier joueur est alors $I$.

**Il peut tout aussi bien prendre tous les jetons de position paire.** Le raisonnement est le
même, en choisissant à chaque fois l'extrémité de position paire. Sa somme est alors $P$.

**Conclusion.** Le premier joueur choisit avant de commencer laquelle des deux sommes $I$ et $P$
est la plus grande, et joue la stratégie correspondante. Il obtient
$$\max(I, P) \geqslant \frac{I + P}{2},$$
c'est-à-dire au moins la moitié du total. Son adversaire obtient le reste, donc au plus l'autre
moitié.

**Le premier joueur ne peut pas perdre.**

### Question 2 : les treize jetons

La somme de tous les jetons vaut
$$7 + 2 + 3 + 8 + 9 + 4 + 1 + 6 + 3 + 2 + 4 + 7 + 1 = 57.$$

Il y a treize jetons, un nombre **impair**. Le premier joueur joue donc un coup, et il reste
**douze** jetons : c'est alors au second joueur de jouer, et c'est **lui** qui se trouve dans la
situation de la question 1. Il peut donc s'assurer le plus grand des deux totaux, pair ou impair,
de la ligne restante.

Le premier joueur n'a que deux coups possibles au départ : prendre le $7$ de gauche, ou le $1$ de
droite. Examinons-les.

**S'il prend le $7$ de gauche.** Il reste
$$2 \quad 3 \quad 8 \quad 9 \quad 4 \quad 1 \quad 6 \quad 3 \quad 2 \quad 4 \quad 7 \quad 1$$
En renumérotant ces douze jetons de $1$ à $12$ :

- positions impaires : $2 + 8 + 4 + 6 + 2 + 7 = 29$ ;
- positions paires : $3 + 9 + 1 + 3 + 4 + 1 = 21$.

Le second joueur prend la famille impaire et obtient $29$. Le premier joueur finit avec
$7 + 21 = 28$. Score : **$29$ à $28$** pour le second joueur.

**S'il prend le $1$ de droite.** Il reste
$$7 \quad 2 \quad 3 \quad 8 \quad 9 \quad 4 \quad 1 \quad 6 \quad 3 \quad 2 \quad 4 \quad 7$$

- positions impaires : $7 + 3 + 9 + 1 + 3 + 4 = 27$ ;
- positions paires : $2 + 8 + 4 + 6 + 2 + 7 = 29$.

Le second joueur prend cette fois la famille paire et obtient $29$. Le premier joueur finit avec
$1 + 27 = 28$. Score : **$29$ à $28$** pour le second joueur.

Dans les deux cas le second joueur gagne d'un point.

**C'est donc le second joueur qui est sûr de gagner, $29$ à $28$.**

## Going further

1. Où la démonstration de la question 1 se sert-elle du fait que le nombre de jetons est pair ?
   Vérifier avec les trois jetons $1 \ \ 10 \ \ 1$ que le premier joueur peut être obligé de
   perdre.
2. Le premier joueur est sûr de ne pas perdre, mais il n'est pas toujours sûr de gagner :
   montrer qu'avec les jetons $1 \ \ 10 \ \ 10 \ \ 1$ la partie est forcément nulle, quoi que
   fassent les deux joueurs.
