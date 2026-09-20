---
id: "6014"
title: "Les sept tickets qui ne perdent jamais"
grade: 11
theme: probability-statistics
difficulty: 4
duration_min: 50
tags: [esperance, denombrement, combinaisons, loterie, strategie]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), MTCircular, « Winning the Lottery : An Expected Value Mystery » (Michelle Manes)"
  reference: "MTCircularSA2016.pdf, p. 8-10 : séance du Math Teachers' Circle of Hawai'i ; la revue donne les probabilités et l'espérance, et laisse la propriété des sept tickets à démontrer"
  url: "https://mathcircles.org/"
  original_language: "en"
  local_copy: "sources/originals/namc/MTCircularSA2016.pdf"
---

## Statement

Une classe organise une mini-loterie. À chaque tirage, on tire au sort **trois numéros différents** parmi $1, 2, 3, 4, 5, 6, 7$.

Un **ticket** est un choix de trois numéros différents parmi les sept. Il coûte $1$ €. Les gains sont :

- les trois numéros du ticket sont sortis : le ticket rapporte $10$ € ;
- exactement deux des trois numéros du ticket sont sortis : il rapporte $3$ € ;
- sinon : il ne rapporte rien.

1. Combien y a-t-il de tickets différents ?
2. Quelle est la probabilité qu'un ticket donné rapporte $10$ € ? Qu'il rapporte $3$ € ?
3. Calculer l'espérance de gain d'un ticket. Le jeu est-il avantageux pour le joueur ?
4. Michelle achète à chaque tirage les **sept** tickets suivants, et toujours les mêmes :
$$\{1,2,3\}, \quad \{1,4,7\}, \quad \{1,5,6\}, \quad \{2,5,7\}, \quad \{2,4,6\}, \quad \{3,4,5\}, \quad \{3,6,7\}.$$
Elle dépense donc $7$ € par tirage. Montrer qu'à chaque tirage, quel qu'il soit, elle récupère au moins $9$ € : elle ne perd **jamais**.

## Hints

1. Pour la question 2, compter les tirages favorables. Un tirage est un choix de $3$ numéros parmi $7$, et tous ces tirages ont la même probabilité.
2. Pour que le ticket fasse exactement deux bons numéros : choisir les deux numéros du ticket qui sortent, puis le troisième numéro tiré, qui doit être en dehors du ticket.
3. Pour la question 4, ne pas essayer les $35$ tirages un par un. Regarder plutôt les **paires** de numéros : dans combien des sept tickets la paire $\{2,5\}$ figure-t-elle ? et la paire $\{3,4\}$ ?
4. Si chaque paire figure dans exactement un ticket, que peut-on dire de deux tickets différents ? Combien de numéros ont-ils en commun ?
5. Séparer deux cas : le tirage est l'un des sept tickets, ou il ne l'est pas.

## Solution

### Question 1 : le nombre de tickets

Un ticket est un choix de $3$ numéros parmi $7$, sans ordre :
$$\binom{7}{3} = \frac{7 \times 6 \times 5}{3 \times 2 \times 1} = 35 .$$

Il y a $35$ tickets différents, et aussi $35$ tirages possibles, tous équiprobables.

### Question 2 : les deux probabilités

**Le gros lot.** Un seul tirage sur les $35$ donne exactement les trois numéros du ticket :
$$P(\text{10 €}) = \frac{1}{35} .$$

**Exactement deux bons numéros.** Construisons les tirages favorables. Il faut choisir lesquels des trois numéros du ticket sortent — $\binom{3}{2} = 3$ possibilités — puis le troisième numéro tiré, qui doit être pris **en dehors** du ticket, c'est-à-dire parmi les $4$ numéros restants. Cela fait
$$3 \times 4 = 12$$
tirages favorables, d'où
$$P(\text{3 €}) = \frac{12}{35} .$$

*(Au passage : $1 + 12 = 13$ tirages rapportent quelque chose, et les $22$ autres rien.)*

### Question 3 : l'espérance

Notons $G$ le gain rapporté par un ticket. Alors
$$E(G) = 10 \times \frac{1}{35} + 3 \times \frac{12}{35} + 0 \times \frac{22}{35} = \frac{10 + 36}{35} = \frac{46}{35} \approx \text{1,31} \text{ €} .$$

Le ticket coûte $1$ €, donc le joueur gagne en moyenne environ $31$ centimes par ticket. **Le jeu est avantageux pour le joueur**, et désastreux pour l'organisateur : sur un grand nombre de tirages, il perdra environ $31 \%$ de ce qu'il encaisse.

Attention cependant : une espérance n'est pas une promesse. Sur un tirage donné, un ticket rapporte $0$ €, $3$ € ou $10$ €, jamais $\text{1,31}$ €.

### Question 4 : les sept tickets de Michelle

**La propriété cachée.** Vérifions que **chaque paire de numéros figure dans exactement un des sept tickets**.

Chaque ticket contient $3$ paires, donc les sept tickets contiennent $7 \times 3 = 21$ paires en tout. Or le nombre de paires possibles est
$$\binom{7}{2} = 21 .$$

Il suffit donc de vérifier que les $21$ paires listées sont toutes différentes, ce qui se fait d'un coup d'œil :

| ticket | paires |
|---|---|
| $\{1,2,3\}$ | $12$, $13$, $23$ |
| $\{1,4,7\}$ | $14$, $17$, $47$ |
| $\{1,5,6\}$ | $15$, $16$, $56$ |
| $\{2,5,7\}$ | $25$, $27$, $57$ |
| $\{2,4,6\}$ | $24$, $26$, $46$ |
| $\{3,4,5\}$ | $34$, $35$, $45$ |
| $\{3,6,7\}$ | $36$, $37$, $67$ |

Aucune paire ne se répète, et il y en a $21$ : chaque paire de numéros apparaît donc exactement une fois.

**Conséquence immédiate.** Deux tickets différents ont **au plus un** numéro en commun. En effet, s'ils en avaient deux, la paire formée par ces deux numéros figurerait dans deux tickets différents, ce qui est exclu. C'est la seule conséquence dont nous aurons besoin.

**Premier cas : le tirage est l'un des sept tickets.**

Ce ticket-là rafle le gros lot : $10$ €. Chacun des six autres n'a qu'un seul numéro en commun avec le tirage, donc ne rapporte rien.

Recette : $10$ € pour $7$ € dépensés, soit un gain de $3$ €.

**Second cas : le tirage $\{a,b,c\}$ n'est aucun des sept tickets.**

Aucun ticket ne rapporte $10$ €, puisque cela voudrait dire que le tirage est ce ticket.

Regardons les trois paires du tirage : $\{a,b\}$, $\{b,c\}$, $\{a,c\}$. Chacune figure dans exactement un ticket ; appelons-les $T_1$, $T_2$, $T_3$.

- Ces trois tickets sont **différents** : si un même ticket contenait deux de ces paires, il contiendrait $a$, $b$ et $c$, donc il serait égal au tirage, ce qui est exclu.
- Chacun contient **exactement deux** numéros tirés : il en contient au moins deux (sa paire), et pas trois pour la même raison. Il rapporte donc $3$ €.
- Et aucun autre ticket ne rapporte : un ticket contenant deux numéros tirés contient l'une des trois paires, donc c'est $T_1$, $T_2$ ou $T_3$.

Recette : $3 \times 3 = 9$ € pour $7$ € dépensés, soit un gain de $2$ €.

**Conclusion.** Quel que soit le tirage, Michelle récupère $9$ € ou $10$ €, toujours plus que les $7$ € misés. Elle gagne à **tous** les tirages, ce qu'aucun joueur ordinaire ne peut faire.

Sur les $35$ tirages, $7$ lui rapportent $10$ € et les $28$ autres $9$ €. Son gain moyen vaut donc
$$\frac{7}{35} \times 3 + \frac{28}{35} \times 2 = \frac{3}{5} + \frac{8}{5} = \frac{11}{5} = \text{2,2} \text{ €} ,$$
ce qui est exactement ce que sept tickets quelconques rapporteraient en moyenne : $7 \times \frac{46}{35} - 7 = \frac{46}{5} - 7 = \frac{11}{5}$. Michelle n'a pas amélioré son espérance d'un centime. Ce qu'elle a gagné, ce n'est pas de l'espérance : c'est la **certitude**.

*(La configuration des sept tickets s'appelle le plan de Fano. C'est la plus petite géométrie où deux « points » déterminent une « droite » et où deux « droites » se coupent toujours.)*

## Going further

1. Combien de fois chaque numéro apparaît-il dans les sept tickets de Michelle ? Pourquoi est-ce forcément le même nombre pour les sept numéros ?
2. Vérifier le calcul du gain moyen de Michelle : sur les $35$ tirages, combien donnent $10$ € et combien donnent $9$ € ?
3. Peut-on faire mieux avec moins de sept tickets, c'est-à-dire ne jamais perdre en en achetant six ?
4. Entre $2005$ et $2012$, des étudiants du MIT ont exploité une loterie du Massachusetts dont l'espérance, certaines semaines, dépassait largement le prix du ticket. Ils remplissaient leurs grilles à la main plutôt que de les laisser tirer au hasard. Pourquoi, à votre avis ?
