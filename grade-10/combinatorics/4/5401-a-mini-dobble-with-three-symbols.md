---
id: "5401"
title: "Un mini-Dobble à trois symboles"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [dobble, denombrement, cartes, symboles, construction]
adapted_from: null
see_also: ["5402", "6015"]
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Can you « Spot it! », Calvin Jongsma et Thomas J. Clark"
  reference: "SpotItPuzzleEdited.pdf, « Case 3: s = 3 » (le texte donne le jeu, la démonstration de la borne est reconstruite ici)"
  url: "https://mathcircles.org/activity/can-you-spot-it/"
  original_language: "en"
  local_copy: "sources/originals/namc/SpotItPuzzleEdited.pdf"
---

## Statement

Dans le jeu de **Dobble**, chaque carte porte plusieurs symboles, et deux cartes quelconques du jeu ont **exactement un** symbole en commun. C'est cette propriété qui fait tout le jeu : quelles que soient les deux cartes retournées, il y a toujours un symbole à trouver, et un seul.

On veut fabriquer un jeu du même genre, mais tout petit : **trois symboles par carte**. Les règles de fabrication sont donc :

- chaque carte porte exactement trois symboles, tous différents ;
- deux cartes quelconques du jeu ont exactement un symbole en commun ;
- deux cartes du jeu ne portent jamais les trois mêmes symboles ;
- aucun symbole ne figure sur **toutes** les cartes (sinon le jeu n'aurait aucun intérêt : on gagnerait à tous les coups en annonçant ce symbole-là).

Pour travailler sur le papier, on numérote les symboles $1, 2, 3, \ldots$ et on décrit une carte par la liste de ses trois numéros, par exemple $(1, 2, 3)$.

1. Fabriquer un jeu de $7$ cartes qui respecte toutes ces règles.
2. Montrer qu'un symbole ne peut pas figurer sur plus de trois cartes.
3. Montrer qu'un tel jeu ne peut pas contenir plus de $7$ cartes.
4. Montrer que dans un jeu de $7$ cartes, il y a exactement $7$ symboles différents, et que chacun figure sur exactement trois cartes.

## Hints

1. Pour la question 1, partez de la carte $(1, 2, 3)$, puis écrivez toutes les cartes qui contiennent le symbole $1$. Une telle carte a déjà le symbole $1$ en commun avec $(1,2,3)$ : que peut-elle contenir d'autre ?
2. Continuez avec les cartes qui contiennent le symbole $2$ : chacune doit rencontrer $(1,4,5)$ et $(1,6,7)$, et ni l'une ni l'autre sur le symbole $1$.
3. Question 2 : prenez un symbole $x$, et une carte $E$ qui ne le porte pas (la dernière règle en garantit une). Chaque carte qui porte $x$ a exactement un symbole en commun avec $E$.
4. Toujours question 2 : deux cartes qui portent $x$ peuvent-elles rencontrer $E$ sur le même symbole ?
5. Question 3 : choisissez une carte $C$ du jeu. Toute autre carte rencontre $C$, donc contient l'un des trois symboles de $C$ — et un seul.
6. Question 4 : reprenez le compte de la question 3. Si le jeu a vraiment $7$ cartes, aucune des majorations utilisées ne peut avoir perdu quoi que ce soit.

## Solution

### 1. Un jeu de sept cartes

Construisons-le, plutôt que de le deviner. Commençons par une carte quelconque, disons $(1, 2, 3)$.

**Les cartes qui portent le symbole 1.** Une telle carte a déjà le symbole $1$ en commun avec $(1,2,3)$, donc elle ne contient ni $2$ ni $3$ : ses deux autres symboles sont nouveaux. Avec deux nouveaux symboles à chaque fois, on écrit

$$(1, 4, 5) \qquad \text{et} \qquad (1, 6, 7).$$

**Les cartes qui portent le symbole 2.** Une telle carte (autre que la première) ne contient ni $1$ ni $3$. Elle doit rencontrer $(1,4,5)$, et pas sur le $1$ : elle contient donc $4$ ou $5$. De même elle contient $6$ ou $7$. Prenons

$$(2, 4, 6).$$

La deuxième carte qui porte $2$ ne peut plus utiliser ni $4$ ni $6$ (elle aurait deux symboles communs avec la précédente), il ne reste donc que

$$(2, 5, 7).$$

**Les cartes qui portent le symbole 3.** Même raisonnement : elles contiennent $4$ ou $5$, et $6$ ou $7$. La carte $(3,4,6)$ est interdite, car elle aurait $4$ et $6$ en commun avec $(2,4,6)$. Restent

$$(3, 4, 7) \qquad \text{et} \qquad (3, 5, 6),$$

et on vérifie que ces deux-là ont bien un seul symbole commun entre elles : le $3$.

**Le jeu complet.** Voici les sept cartes, avec sur chaque ligne une croix sous les symboles utilisés :

| carte | 1 | 2 | 3 | 4 | 5 | 6 | 7 |
|---|---|---|---|---|---|---|---|
| $(1,2,3)$ | x | x | x | | | | |
| $(1,4,5)$ | x | | | x | x | | |
| $(1,6,7)$ | x | | | | | x | x |
| $(2,4,6)$ | | x | | x | | x | |
| $(2,5,7)$ | | x | | | x | | x |
| $(3,4,7)$ | | | x | x | | | x |
| $(3,5,6)$ | | | x | | x | x | |

Il y a $21$ paires de cartes ; on vérifie sur le tableau que chacune partage exactement un symbole. Ce jeu utilise $7$ symboles, et chaque colonne contient trois croix : chaque symbole figure sur trois cartes.

### 2. Un symbole figure sur au plus trois cartes

Soit $x$ un symbole. D'après la dernière règle, il existe une carte $E$ qui ne porte pas $x$ ; notons $E = (u, v, w)$.

Soit $C$ une carte qui porte $x$. Les cartes $C$ et $E$ ont exactement un symbole en commun, et ce symbole est $u$, $v$ ou $w$.

Maintenant, deux cartes $C$ et $C'$ qui portent toutes les deux $x$ ne peuvent pas rencontrer $E$ sur le même symbole : elles auraient alors **deux** symboles en commun, $x$ et celui-là, ce qui est interdit.

À chaque carte portant $x$ correspond donc un symbole de $E$, et deux cartes différentes donnent deux symboles différents. Comme $E$ n'a que trois symboles, il y a **au plus trois cartes** qui portent $x$.

### 3. Le jeu a au plus sept cartes

Choisissons une carte $C = (a, b, c)$ du jeu. Toute autre carte $D$ a exactement un symbole en commun avec $C$ : elle contient donc exactement un des trois symboles $a$, $b$, $c$.

Les cartes du jeu se répartissent ainsi, sans chevauchement :

- la carte $C$ elle-même ;
- les cartes, autres que $C$, qui portent $a$ ;
- les cartes, autres que $C$, qui portent $b$ ;
- les cartes, autres que $C$, qui portent $c$.

D'après la question 2, chacun des symboles $a$, $b$, $c$ figure sur au plus trois cartes, donc sur au plus **deux** cartes autres que $C$. Au total le jeu contient au plus

$$1 + 2 + 2 + 2 = 7 \ \text{cartes.}$$

### 4. Sept cartes, sept symboles, trois cartes par symbole

Notons $n_x$ le nombre de cartes qui portent le symbole $x$. Le découpage de la question 3 ne majore rien, il **compte** : pour n'importe quelle carte $C = (a,b,c)$ du jeu,

$$\text{nombre de cartes} = 1 + (n_a - 1) + (n_b - 1) + (n_c - 1) = n_a + n_b + n_c - 2 .$$

Si le jeu a $7$ cartes, alors $n_a + n_b + n_c = 9$. Or chacun de ces trois nombres est au plus $3$ : si l'un était plus petit que $3$, la somme serait plus petite que $9$. Donc

$$n_a = n_b = n_c = 3 .$$

Tout symbole du jeu figure sur au moins une carte, et cette carte peut jouer le rôle de $C$ dans le raisonnement ci-dessus. Donc **tout symbole figure sur exactement trois cartes**.

Il reste à compter les symboles. Comptons de deux façons les couples (carte, symbole écrit sur cette carte) :

- carte par carte : $7$ cartes portant chacune $3$ symboles, soit $7 \times 3 = 21$ couples ;
- symbole par symbole : si le jeu utilise $p$ symboles, chacun figurant sur $3$ cartes, cela fait $3p$ couples.

Donc $3p = 21$, c'est-à-dire $p = 7$.

**Conclusion.** Un jeu à trois symboles par carte compte au plus $7$ cartes ; le jeu de $7$ cartes existe, il utilise exactement $7$ symboles, et chaque symbole y figure trois fois.

## Going further

1. Refaites tout le travail avec **quatre** symboles par carte. Vous devriez trouver au plus $13$ cartes, et réussir à en construire $13$, avec $13$ symboles.
2. Devinez la formule générale : avec $s$ symboles par carte, combien de cartes au maximum ?
3. Le vrai jeu de Dobble a $8$ symboles par carte. Que donne votre formule ? (La boîte contient $55$ cartes, un peu moins que le maximum : deux cartes ont été sacrifiées pour des raisons d'impression.)
