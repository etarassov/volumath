---
id: "8447"
title: "2009 cartes et des blocs de cinquante"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 45
tags: [jeu, strategie, invariant, monovariant, parite, puissances-de-deux]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe B"
  reference: "Poly-2021-Valbonne.pdf, Groupe B, « Invariants, Monovariants, Pavages et Coloriages » (Savinien Kreczman), exercice 14"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

On aligne $2009$ cartes sur une table. Chaque carte a une face bleue et une face jaune, et au départ **toutes** montrent leur face bleue.

Deux joueurs, assis du même côté de la table, jouent chacun leur tour. Un coup consiste à :

- choisir un bloc de $50$ cartes voisines, dont la carte la plus à gauche est bleue ;
- retourner les $50$ cartes de ce bloc, chacune passant du bleu au jaune ou du jaune au bleu.

Le joueur qui ne peut plus jouer a perdu.

1. Montrer que la partie se termine forcément.
2. Lequel des deux joueurs a une stratégie gagnante ?

## Hints

1. Pour la question 1, cherche une quantité attachée à la position qui **diminue strictement** à chaque coup, et qui ne peut pas descendre indéfiniment.
2. Numérote les cartes de $1$ à $2009$ **en partant de la droite**, et attribue à la carte numéro $i$ le poids $2^{i}$. Additionne les poids des cartes bleues. Que devient cette somme après un coup ?
3. Souviens-toi que $2^{0} + 2^{1} + \cdots + 2^{48} < 2^{49}$ : les $49$ cartes de droite du bloc, à elles toutes, pèsent moins que celle de gauche.
4. Pour la question 2, ne cherche pas à décrire les coups du gagnant. Montre plutôt que l'un des deux joueurs **a toujours un coup disponible**, donc ne peut pas être celui qui se retrouve bloqué.
5. Regarde uniquement les cartes qui occupent les positions $50$, $100$, $150$, …, $2000$ en partant de la droite. Combien un bloc de $50$ cartes voisines en contient-il ?

## Solution

### Question 1 : la partie se termine

Numérotons les cartes de $1$ à $2009$ **en partant de la droite** : la carte la plus à droite porte le numéro $1$, la plus à gauche le numéro $2009$.

À chaque position du jeu, associons le nombre $P$ obtenu en additionnant $2^{i}$ pour chaque carte bleue, où $i$ est le numéro de cette carte. C'est un entier positif ou nul.

Regardons ce que devient $P$ après un coup. Le bloc choisi occupe les positions $j$, $j-1$, …, $j-49$ pour un certain $j$, et la carte la plus à gauche du bloc est celle de numéro $j$ (c'est celle dont le numéro est le plus grand). Elle est bleue avant le coup, elle devient jaune : $P$ perd donc $2^{j}$.

Les $49$ autres cartes du bloc changent de couleur elles aussi, dans un sens ou dans l'autre. Dans le meilleur des cas pour elles, toutes deviennent bleues, et $P$ gagne alors au plus

$$2^{j-1} + 2^{j-2} + \cdots + 2^{j-49} = 2^{j} - 2^{j-49} < 2^{j}.$$

Les cartes en dehors du bloc ne bougent pas. Au total, $P$ perd $2^{j}$ et regagne strictement moins que $2^{j}$ :

> **À chaque coup, $P$ diminue strictement.**

Or $P$ est un entier positif ou nul. Une suite d'entiers positifs strictement décroissante est forcément finie. La partie se termine donc au bout d'un nombre fini de coups.

### Question 2 : le second joueur gagne

Intéressons-nous aux cartes dont le numéro est un multiple de $50$, c'est-à-dire les positions

$$50, \; 100, \; 150, \; \ldots, \; 2000$$

en partant de la droite. Comme $50 \times 40 = 2000 \leqslant 2009$ et $50 \times 41 = 2050 > 2009$, il y en a exactement $\mathbf{40}$. Appelons-les les **cartes repères**, et notons $B$ le nombre de cartes repères bleues.

**Un coup change $B$ de exactement $1$.** Un bloc est formé de $50$ numéros consécutifs, et parmi $50$ entiers consécutifs il y a exactement un multiple de $50$. Le bloc contient donc exactement une carte repère, et cette carte est retournée. Les autres cartes repères ne bougent pas. Donc $B$ augmente de $1$ ou diminue de $1$.

**Conséquence sur la parité.** Au départ, toutes les cartes sont bleues, donc $B = 40$, qui est **pair**. Comme $B$ change de parité à chaque coup :

- quand c'est au tour du premier joueur (aucun coup joué, puis $2$, puis $4$…), $B$ est **pair** ;
- quand c'est au tour du second joueur ($1$ coup joué, puis $3$, puis $5$…), $B$ est **impair**.

**Le second joueur n'est jamais bloqué.** Quand c'est son tour, $B$ est impair, donc $B \neq 0$ : il existe une carte repère bleue, disons à la position $50k$. Le second joueur peut alors retourner le bloc formé des positions

$$50k, \; 50k-1, \; \ldots, \; 50k-49.$$

Ces $50$ positions existent bien, puisque $50k - 49 \geqslant 1$, et la carte la plus à gauche du bloc est celle de numéro $50k$, qui est bleue. Le coup est donc légal.

**Conclusion.** Le second joueur a toujours un coup à jouer, il ne peut donc jamais être celui qui se retrouve bloqué. Comme la partie se termine (question 1), c'est forcément le premier joueur qui, à un moment, ne peut plus jouer.

**Le second joueur gagne à tous les coups**, et ce quelle que soit sa façon de jouer.

## Going further

Cette solution est étonnante par ce qu'elle ne dit pas : elle ne décrit aucune stratégie. Le second joueur n'a rien à calculer, rien à préparer. Il joue n'importe quel coup légal, et il gagne.

Les deux questions utilisent deux outils voisins mais différents :

- un **monovariant** ($P$) pour la question 1 : une quantité qui évolue toujours dans le même sens, ce qui interdit de tourner en rond indéfiniment ;
- un **invariant** (la parité de $B$) pour la question 2 : une quantité qui, elle, suit une règle rigide, et qui interdit une situation précise.

Le nombre $2009$ ne joue presque aucun rôle. Ce qui compte est qu'en écrivant $2009 = 50 \times 40 + 9$, le quotient $40$ soit **pair** : c'est lui qui donne la parité de départ. Avec $1959$ cartes au lieu de $2009$, on aurait $1959 = 50 \times 39 + 9$, le nombre de cartes repères serait $39$, impair, et c'est le premier joueur qui gagnerait, par le même raisonnement décalé d'un cran.
