---
id: "7206"
title: "Alice, Bob et les dix cartes en rangée"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [strategie, jeu, parite, positions]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Première journée », exercices d'échauffement, exercice 11"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

Dix cartes portant les numéros $1$, $2$, ..., $10$ sont alignées sur une table dans un ordre
quelconque, tiré au hasard. Alice et Bob voient toutes les cartes.

Chacun à son tour, en commençant par Alice, un joueur prend soit la carte la plus à gauche de la
rangée, soit la carte la plus à droite. Le jeu s'arrête quand il n'y a plus de cartes : chacun en
a alors pris cinq. Le gagnant est celui dont la somme des numéros est la plus grande.

Alice a-t-elle une stratégie qui lui garantit de gagner, quel que soit l'ordre initial des cartes
et quelle que soit la façon de jouer de Bob ?

## Hints

1. Alice ne peut pas espérer prendre les cinq plus grosses cartes. Cherche plutôt un groupe de
   cinq cartes qu'elle peut s'assurer de prendre **en entier**, quoi que fasse Bob.
2. Numérote les **places** de $1$ à $10$ de gauche à droite, et oublie un instant les numéros
   écrits sur les cartes. Regarde les places paires et les places impaires.
3. Au tout premier coup, les deux cartes accessibles sont en place $1$ et en place $10$ : l'une
   est en place impaire, l'autre en place paire. Alice peut donc choisir la parité qu'elle veut.
4. Si Alice prend toujours une carte en place paire, quelles places restent accessibles à Bob ?
5. La somme des dix numéros vaut $55$, un nombre impair. Que peut-on en déduire sur les deux
   sommes « places paires » et « places impaires » ?

## Solution

**Numérotons les places.** De gauche à droite, appelons place $1$, place $2$, ..., place $10$ les
positions occupées au départ par les dix cartes. Ces numéros de place ne changent pas pendant la
partie ; ce sont les cartes qui disparaissent.

Notons
$$P = \text{somme des numéros des cartes posées en place paire } (2, 4, 6, 8, 10),$$
$$I = \text{somme des numéros des cartes posées en place impaire } (1, 3, 5, 7, 9).$$

**Première observation : $P \neq I$.**

En effet $P + I = 1 + 2 + \cdots + 10 = 55$. Si on avait $P = I$, alors $55$ serait le double de
$P$, donc un nombre pair. Or $55$ est impair. Donc $P \neq I$, et l'une des deux sommes est
strictement plus grande que l'autre.

**Deuxième observation : Alice peut s'assurer toutes les places d'une parité choisie.**

Montrons qu'Alice peut prendre exactement les cinq cartes des places paires, si elle le souhaite.

À chaque instant, les cartes restantes occupent un bloc de places consécutives, disons des places
$g$ à $d$. Au départ $g = 1$ et $d = 10$ : ces deux places sont de parités différentes, puisque
$10 - 1 = 9$ est impair.

Affirmation : **quand c'est à Alice de jouer, les deux extrémités $g$ et $d$ sont toujours de
parités différentes.** C'est vrai au départ. Et si c'est vrai à un tour d'Alice, alors :

- Alice prend une extrémité ; le bloc devient $[g+1, d]$ ou $[g, d-1]$, et ses deux extrémités
  sont maintenant de **même** parité.
- Bob prend à son tour une extrémité ; le bloc perd encore une place à un bout, et les deux
  extrémités redeviennent de parités différentes.

L'affirmation est donc vraie à chaque tour d'Alice. En particulier, **à chacun de ses tours,
Alice a le choix entre une place paire et une place impaire**. Si elle décide de toujours prendre
la place paire, elle prend cinq cartes de places paires : ce sont donc exactement les cinq cartes
des places paires, et Bob récupère les cinq autres. Sa somme est alors $P$, celle de Bob est $I$.

De la même façon, si Alice décide de toujours prendre la place impaire, elle obtient $I$ et Bob
obtient $P$.

**La stratégie d'Alice.**

Avant de jouer, Alice calcule $P$ et $I$. Elle sait que ces deux nombres sont différents.

- Si $P > I$, elle prend toujours une carte en place paire, et gagne avec $P$ contre $I$.
- Si $I > P$, elle prend toujours une carte en place impaire, et gagne avec $I$ contre $P$.

**Oui : Alice dispose d'une stratégie gagnante, quel que soit l'ordre des cartes et quelle que
soit la façon de jouer de Bob.**

## Going further

Cette stratégie est gagnante, mais elle n'est pas toujours la meilleure. Par exemple avec la
rangée $1, 10, 9, 2$ (quatre cartes), elle rapporte $10 + 2 = 12$ à Alice, alors qu'en jouant
finement elle pourrait obtenir $10 + 9 = 19$.

Le nombre impair $55$ est essentiel : avec une rangée de cartes dont la somme est paire, il peut
arriver que $P = I$ et la stratégie ne donne alors qu'un match nul.
