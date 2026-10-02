---
id: "6015"
title: "Le jeu où deux cartes ont toujours un symbole commun"
grade: 12
theme: combinatorics
difficulty: 4
duration_min: 50
tags: [denombrement, injection, double-comptage, majoration]
adapted_from: null
see_also: ["5401", "5402"]
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), MTCircular, « Spot It! Mathematical Structure in a Children's Game » (Tom Clark)"
  reference: "MTCircular2017WS.pdf, p. 10-12 : l'argument de la revue omet l'hypothèse « aucun symbole n'est sur toutes les cartes », sans laquelle la majoration par 31 est fausse (voir la question 4)"
  url: "https://mathcircles.org/"
  original_language: "en"
  local_copy: "sources/originals/namc/MTCircular2017WS.pdf"
---

## Statement

Dans certains jeux de cartes, chaque carte porte plusieurs symboles, et la règle veut que deux cartes quelconques aient toujours exactement un symbole en commun : c'est ce symbole-là qu'il faut repérer le plus vite possible.

Considérons un jeu construit selon les règles suivantes :

- chaque carte porte exactement $6$ symboles, tous différents ;
- deux cartes différentes ont **exactement un** symbole en commun ;
- aucun symbole ne figure sur **toutes** les cartes.

1. Montrer que deux cartes différentes ne peuvent pas porter deux symboles communs. (C'est la deuxième règle, mais il est utile de la reformuler ainsi.)
2. Soit $s$ un symbole du jeu. Montrer qu'au plus $6$ cartes portent le symbole $s$.
3. En déduire que le jeu compte au plus $31$ cartes.
4. Montrer que la troisième règle est indispensable : sans elle, on peut fabriquer un jeu vérifiant les deux premières règles et comptant autant de cartes que l'on veut.

## Hints

1. Pour la question 2, la troisième règle fournit une carte $E$ qui ne porte pas $s$. Que peut-on dire de $E$ et d'une carte quelconque portant $s$ ?
2. À chaque carte portant $s$, associe le symbole qu'elle partage avec $E$. Est-ce que ce symbole peut être $s$ ?
3. Deux cartes portant $s$ peuvent-elles être associées au même symbole de $E$ ?
4. Pour la question 3, choisis une carte $C$ et range toutes les autres selon celui des $6$ symboles de $C$ qu'elles partagent avec elle.
5. Pour la question 4, essaie un jeu où toutes les cartes partagent un même symbole, et où tout le reste est différent d'une carte à l'autre.

## Solution

### Question 1 : jamais deux symboles communs

C'est exactement la deuxième règle : deux cartes différentes ont *exactement* un symbole en commun, donc jamais deux. Retenons cette formulation, car c'est sous cette forme qu'elle servira :

> si deux cartes portent toutes les deux les symboles $s$ et $t$, avec $s \neq t$, alors ce sont la même carte.

### Question 2 : au plus six cartes par symbole

Soit $s$ un symbole. D'après la troisième règle, il existe une carte $E$ qui **ne porte pas** $s$.

Considérons une carte quelconque $D$ portant $s$. Comme $E$ ne porte pas $s$, on a $D \neq E$, donc $D$ et $E$ ont exactement un symbole en commun ; notons-le $f(D)$. Ce symbole n'est pas $s$, puisque $E$ ne porte pas $s$. Et $f(D)$ est l'un des $6$ symboles de $E$.

**L'application $f$ est injective.** Supposons que deux cartes $D_1$ et $D_2$ portant $s$ vérifient $f(D_1) = f(D_2) = t$. Alors $D_1$ et $D_2$ portent toutes les deux $s$ **et** $t$, avec $t \neq s$. D'après la question 1, $D_1 = D_2$.

L'application $f$ envoie donc injectivement l'ensemble des cartes portant $s$ dans l'ensemble des $6$ symboles de $E$. Il y a donc **au plus $6$ cartes portant $s$**.

### Question 3 : au plus 31 cartes

Choisissons une carte $C$, et notons $s_1, \ldots, s_6$ ses six symboles.

Toute autre carte $D$ partage exactement un symbole avec $C$, et ce symbole est l'un des $s_i$. Rangeons donc les cartes autres que $C$ en six groupes : le groupe $G_i$ rassemble les cartes qui partagent $s_i$ avec $C$. Ces groupes n'ont aucune carte en commun, puisque chaque carte partage exactement un symbole avec $C$, et ensemble ils contiennent toutes les cartes sauf $C$.

Or les cartes de $G_i$ portent le symbole $s_i$, tout comme $C$. D'après la question 2, il y a au plus $6$ cartes portant $s_i$, et $C$ en est une : donc
$$\mathrm{card}\,(G_i) \leqslant 5 .$$

Le nombre total $N$ de cartes vaut alors
$$N = 1 + \mathrm{card}\,(G_1) + \cdots + \mathrm{card}\,(G_6) \leqslant 1 + 6 \times 5 = 31 .$$

Le jeu compte donc au plus $\boxed{31}$ cartes.

*(Cette borne est atteinte : le jeu du commerce « Spot It! Junior » compte exactement $31$ cartes, $31$ symboles en tout, chaque symbole figurant sur exactement $6$ cartes. Sa structure est celle d'un plan projectif fini.)*

### Question 4 : pourquoi la troisième règle est indispensable

Fabriquons un jeu qui ne la respecte pas. Choisissons un symbole $\star$ et donnons-le à **toutes** les cartes. Les cinq autres symboles de chaque carte sont tirés d'une réserve inépuisable, et aucun d'eux ne sert deux fois dans tout le jeu :
$$\{\star, a_1, a_2, a_3, a_4, a_5\}, \quad \{\star, b_1, b_2, b_3, b_4, b_5\}, \quad \{\star, c_1, c_2, c_3, c_4, c_5\}, \quad \ldots$$

Chaque carte porte bien $6$ symboles, et deux cartes ont exactement un symbole en commun, à savoir $\star$. Les deux premières règles sont respectées, et l'on peut mettre autant de cartes que l'on veut dans ce jeu : $100$, $1000$, davantage encore.

La troisième règle est donc bien nécessaire à la majoration. Elle exclut ce jeu dégénéré, qui n'aurait d'ailleurs aucun intérêt : la réponse serait toujours $\star$.

## Going further

1. Refaire tout le raisonnement avec $n$ symboles par carte au lieu de $6$. Combien de cartes au maximum ?
2. Montrer que si le jeu atteint vraiment $31$ cartes, alors chaque symbole figure sur exactement $6$ cartes, et le jeu compte exactement $31$ symboles.
3. Construire un tel jeu avec $3$ symboles par carte. Combien de cartes obtient-on ?
4. Pour $11$ symboles par carte, une recherche par ordinateur a montré qu'aucun jeu complet n'existe. Pour $13$, la question est **ouverte** : personne ne sait, et les ordinateurs actuels n'y suffisent pas.
