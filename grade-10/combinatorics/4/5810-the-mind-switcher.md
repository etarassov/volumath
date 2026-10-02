---
id: "5810"
title: "L'échangeur d'esprits"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [permutations, echanges, recherche-exhaustive, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), The Futurama Theorem (Cheryl Grood)"
  reference: "GroodFuturamaTheorem.pdf, « Appetizer » et « Main Course » (théorème de Keeler, épisode « The Prisoner of Benda » de Futurama)"
  url: "https://mathcircles.org/activity/the-futurama-theorem/"
  original_language: "en"
  local_copy: "sources/originals/namc/GroodFuturamaTheorem.pdf"
---

## Statement

Une machine permet d'**échanger les esprits** de deux personnes : elles y entrent toutes les deux,
et elles en ressortent avec l'esprit de chacune dans le corps de l'autre.

La machine a un défaut : **deux corps donnés ne peuvent jamais y entrer ensemble plus d'une
fois**. Une fois que les corps de Pierre et de Julie ont été reliés par la machine, la machine
refuse définitivement ce couple de corps, quels que soient les esprits qui les habitent.

Le professeur et Amy ont essayé la machine sur eux-mêmes. L'esprit du professeur est maintenant
dans le corps d'Amy, et l'esprit d'Amy dans le corps du professeur. Ils voudraient revenir à la
normale, mais la machine ne veut plus de ce couple de corps.

1. Une troisième personne, dont le corps n'est encore jamais entré dans la machine, accepte de
   les aider. Montrer qu'il est **impossible** de remettre tout le monde en ordre.
2. Montrer qu'avec **deux** personnes supplémentaires, c'est possible, et donner une suite
   d'échanges qui remet chacun des quatre esprits dans son corps.

## Hints

1. Numérote les **corps**, pas les personnes : le corps $1$ est celui du professeur, le corps $2$
   celui d'Amy, et les corps $3$ et $4$ ceux des aides. Un échange est alors une paire de
   numéros, et chaque paire ne sert qu'une fois.
2. Décris une situation par la liste des esprits présents dans les corps $1, 2, 3, \ldots$, dans
   cet ordre. Au départ, la situation est $(2, 1, 3)$ : l'esprit $2$ est dans le corps $1$, etc.
   L'objectif est $(1, 2, 3)$.
3. Pour la question 1, compte combien d'échanges sont encore disponibles. Le nombre est très
   petit : tu peux tous les essayer.
4. Pour la question 2, il y a maintenant $5$ paires disponibles sur $6$. Commence par envoyer les
   deux esprits emmêlés chacun dans un corps d'aide, et observe ce qui se passe.

## Solution

Numérotons les corps : $1$ pour le professeur, $2$ pour Amy, puis $3$ et $4$ pour les aides. On
numérote chaque esprit du même numéro que son corps d'origine. Une situation s'écrit alors comme
une liste : la place $i$ de la liste indique quel esprit occupe le corps $i$.

Au départ, la situation est $(2, 1, 3)$ avec une aide, ou $(2, 1, 3, 4)$ avec deux aides. Le but
est d'arriver à $(1, 2, 3)$ ou $(1, 2, 3, 4)$.

Un échange est déterminé par la **paire de corps** qui entre dans la machine, et chaque paire ne
peut servir qu'une fois. La paire $\{1, 2\}$ est déjà utilisée.

**Question 1 : une aide ne suffit pas.**

Avec trois corps, il n'y a que trois paires possibles : $\{1,2\}$, $\{1,3\}$ et $\{2,3\}$. La
première est interdite, et les deux autres ne servent qu'une fois chacune. Il y a donc au plus
deux échanges à faire, et très peu de scénarios. Les voici tous.

| Échanges effectués | Situation finale |
|---|---|
| aucun | $(2, 1, 3)$ |
| $\{1,3\}$ | $(3, 1, 2)$ |
| $\{2,3\}$ | $(2, 3, 1)$ |
| $\{1,3\}$ puis $\{2,3\}$ | $(3, 2, 1)$ |
| $\{2,3\}$ puis $\{1,3\}$ | $(1, 3, 2)$ |

Détaillons la dernière ligne, les autres se vérifient pareil. On part de $(2,1,3)$. L'échange
$\{2,3\}$ permute le contenu des cases $2$ et $3$ : on obtient $(2, 3, 1)$. L'échange $\{1,3\}$
permute alors le contenu des cases $1$ et $3$ : on obtient $(1, 3, 2)$.

Aucune des cinq situations finales n'est $(1, 2, 3)$. La dernière ligne est la plus frustrante :
le professeur a récupéré son corps, mais Amy et l'aide sont maintenant échangées, et leur paire
de corps a déjà servi. Avec une seule aide, c'est impossible.

**Question 2 : deux aides suffisent.**

Avec quatre corps, il y a six paires, et une seule est interdite. Voici une suite de cinq
échanges qui marche.

| Échange | Situation |
|---|---|
| — | $(2, 1, 3, 4)$ |
| $\{1,3\}$ | $(3, 1, 2, 4)$ |
| $\{2,4\}$ | $(3, 4, 2, 1)$ |
| $\{1,4\}$ | $(1, 4, 2, 3)$ |
| $\{2,3\}$ | $(1, 2, 4, 3)$ |
| $\{3,4\}$ | $(1, 2, 3, 4)$ |

Les cinq paires utilisées, $\{1,3\}$, $\{2,4\}$, $\{1,4\}$, $\{2,3\}$, $\{3,4\}$, sont toutes
distinctes, et aucune n'est la paire interdite $\{1,2\}$. Chaque esprit est revenu dans son corps.

**L'idée de la manœuvre.** Les deux premiers échanges envoient les esprits emmêlés, $2$ et $1$,
se réfugier chacun dans un corps d'aide. Les deux suivants les ramènent chez eux, mais en
croisant : le corps $1$ reçoit son esprit depuis le corps de l'aide $4$, et le corps $2$ depuis
le corps de l'aide $3$. Ce croisement est justement ce qui évite de jamais relier les corps $1$
et $2$. À la fin, les deux aides se retrouvent échangées entre elles, et comme leur paire n'a pas
encore servi, un dernier passage les remet en place.

**Conclusion.** Avec une seule aide, remettre tout le monde en place est impossible. Avec deux
aides, cinq échanges suffisent.

## Going further

Cette histoire vient d'un épisode de la série *Futurama*, « The Prisoner of Benda ». Son
scénariste, Ken Keeler, est docteur en mathématiques appliquées, et il a démontré le théorème
nécessaire pour sortir ses personnages du pétrin. On l'appelle depuis le **théorème de Futurama**
ou **théorème de Keeler** :

> Quel que soit l'enchevêtrement des esprits et des corps d'un groupe de personnes, on peut
> toujours tout remettre en ordre avec l'aide d'au plus **deux** personnes supplémentaires.

Deux remarques.

- En essayant systématiquement toutes les possibilités, on vérifie qu'ici cinq échanges sont
  vraiment le minimum : on ne peut pas faire le travail en quatre, ni en trois.
- Savoir, dans le cas général, combien d'échanges il faut au minimum est une question encore
  ouverte.

Essaie maintenant avec trois esprits en ronde : l'esprit $1$ dans le corps $2$, l'esprit $2$ dans
le corps $3$, l'esprit $3$ dans le corps $1$, et aucune paire encore utilisée. Combien d'aides
faut-il ?
