---
id: "7044"
title: "Noircir des cases de proche en proche"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [jeu, strategie gagnante, dominos, appariement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2011, groupe des avancés"
  reference: "stage_junior_2011.pdf, « Combinatoire », TD stratégies, exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2011.pdf"
---

## Statement

Alice et Bob jouent sur une grille carrée dont toutes les cases sont blanches au départ.

Alice commence en noircissant la case en haut à gauche. Bob doit alors noircir une case
blanche **voisine** de celle qu'Alice vient de noircir (voisine veut dire : qui partage un
côté avec elle). Puis Alice noircit une case blanche voisine de celle que Bob vient de
noircir, et ainsi de suite.

Le joueur qui ne peut plus jouer a perdu.

1. La grille fait $2012 \times 2012$ cases. Lequel des deux joueurs peut être sûr de gagner ?
2. Et si la grille fait $2011 \times 2011$ cases ?

## Hints

1. Les nombres $2012$ et $2011$ n'ont rien de spécial. Ce qui compte, c'est leur parité.
   Essaie d'abord sur une grille $2 \times 2$, puis $3 \times 3$, puis $4 \times 4$.
2. Le jeton noir se promène de case en case, sans jamais repasser. Un joueur perd quand toutes
   les voisines de la dernière case noircie sont déjà noires.
3. Imagine la grille entièrement pavée de dominos (chaque domino couvre deux cases voisines).
4. Si un joueur s'arrange pour toujours **compléter** le domino que l'autre vient d'ouvrir,
   il ne sera jamais bloqué. Pourquoi ?
5. Pour la question 2, la grille impaire ne se pave pas par des dominos. Mais si on enlève une
   case, combien en reste-t-il ? Laquelle enlever ?

## Solution

**L'idée : un pavage par dominos fixé une fois pour toutes.**

Un **domino** est une paire de cases voisines. Paver la grille par des dominos, c'est la
découper entièrement en telles paires.

Supposons qu'un joueur, appelons-le le *suiveur*, dispose d'un tel pavage, choisi à l'avance
et gardé en tête. Sa stratégie : **à chaque tour, noircir la case qui complète le domino que
son adversaire vient d'entamer.**

Pourquoi cela marche-t-il ? Quand l'adversaire vient de noircir une case, le domino qui la
contient a son autre case encore blanche. Voyons pourquoi.

Au début de chaque tour du suiveur, tous les dominos sont soit entièrement noirs, soit
entièrement blancs : c'est vrai au tout début, et cela reste vrai après chaque coup du
suiveur, puisqu'il ferme le domino ouvert. L'adversaire noircit alors une case d'un domino
tout blanc, donc l'autre case de ce domino est blanche, et elle est voisine de celle qu'il
vient de noircir. **Le suiveur peut donc toujours jouer.**

Comme la partie se termine forcément (il y a un nombre fini de cases), c'est l'adversaire qui
sera bloqué le premier. **Le suiveur gagne.**

**Question 1 : la grille $2012 \times 2012$.**

Cette grille a $2012^2$ cases, un nombre pair, et elle se pave entièrement par des dominos :
il suffit par exemple de coucher $1006$ dominos horizontaux sur chaque ligne.

Ici, c'est Alice qui joue la première case, imposée. Le suiveur est donc **Bob** : il répond
à chaque fois en complétant le domino ouvert par Alice, à commencer par le domino qui
contient la case en haut à gauche.

$$\boxed{\text{Bob possède une stratégie gagnante.}}$$

**Question 2 : la grille $2011 \times 2011$.**

Cette fois le nombre de cases, $2011^2$, est impair : aucun pavage par dominos n'existe.

Mais retirons la case en haut à gauche, celle qu'Alice noircit d'office. Il reste
$2011^2 - 1$ cases, un nombre pair, et cette forme se pave bel et bien par des dominos :

- la première ligne, privée de sa case de gauche, compte $2010$ cases : on la couvre par
  $1005$ dominos horizontaux ;
- les $2010$ lignes restantes se groupent deux par deux (lignes $2$ et $3$, lignes $4$ et
  $5$, etc.), ce qui donne $1005$ bandes de $2 \times 2011$ cases, chacune couverte par
  $2011$ dominos verticaux.

Alice joue donc sa case imposée, puis devient le suiveur pour le reste de la partie : à chaque
coup de Bob, elle complète le domino ouvert.

$$\boxed{\text{Alice possède une stratégie gagnante.}}$$

## Going further

La seule chose qui a compté, c'est la **parité** du côté de la grille. Sur une grille
$n \times n$ :

- si $n$ est pair, Bob gagne ;
- si $n$ est impair, Alice gagne.

Cette stratégie d'appariement est une des plus utiles en combinatoire des jeux. Retiens la
forme générale : **si je peux apparier les coups deux par deux de façon que chaque coup de
l'adversaire ouvre une paire que je referme, alors je ne serai jamais bloqué le premier.**
