---
id: "4622"
title: "Trois professeurs et neuf chaises"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [denombrement, placement, intervalle, choix]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Beginners 2, Sticks and Stones Part II"
  reference: "Handout-2392-2096.pdf, exercice 12"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2392-2096.pdf"
---

## Statement

Neuf chaises sont alignées, en une seule rangée. Elles vont être occupées par six élèves et par
trois professeurs : M. Alpha, M. Bêta et M. Gamma.

Les trois professeurs arrivent les premiers et choisissent leurs chaises. Chacun veut être assis
**entre deux élèves** : autrement dit, ses deux voisins immédiats devront être des élèves.

De combien de façons les trois professeurs peuvent-ils choisir leurs chaises ?

Les professeurs sont trois personnes distinctes : si deux d'entre eux échangent leurs chaises, le
choix est différent.

## Hints

1. Ne raisonne pas sur les chaises, mais sur les élèves. Imagine d'abord les six élèves assis
   côte à côte, puis glisse les professeurs entre eux.
2. Si un professeur doit avoir un élève à sa gauche et un élève à sa droite, peut-il s'asseoir à
   une extrémité de la rangée ? Peuvent-ils être deux côte à côte ?
3. Aligne les six élèves. Combien d'espaces y a-t-il **entre** deux élèves voisins ?
4. Il reste à choisir quels espaces recevront un professeur, puis à décider lequel va où.

## Solution

**Étape 1 : changer de point de vue.**

Oublions un instant les chaises et alignons les six élèves côte à côte. Entre deux élèves voisins
il y a un espace, et ces espaces sont au nombre de $5$, un de moins que le nombre d'élèves :

`É _ É _ É _ É _ É _ É`

Un professeur assis entre deux élèves vient nécessairement se glisser dans l'un de ces $5$
espaces.

Il ne peut pas se placer aux deux bouts de la rangée : il n'aurait alors qu'un seul voisin.

**Étape 2 : deux professeurs ne peuvent pas partager un espace.**

Si deux professeurs se glissaient dans le même espace, ils seraient assis côte à côte, et chacun
aurait l'autre pour voisin au lieu d'un élève. C'est interdit.

Chacun des $5$ espaces reçoit donc $0$ ou $1$ professeur.

**Étape 3 : réciproquement, tout choix convient.**

Choisissons $3$ espaces parmi les $5$ et mettons un professeur dans chacun. La rangée obtenue
compte bien $6 + 3 = 9$ personnes, donc $9$ chaises, et chaque professeur a un élève à sa gauche
et un élève à sa droite. La condition est respectée.

Il y a donc exactement autant de placements valables que de façons de choisir $3$ espaces parmi
$5$, puis d'y répartir les trois professeurs.

**Étape 4 : compter.**

Choisir $3$ espaces parmi $5$ revient à en écarter $2$. Écarter deux espaces parmi cinq, c'est
choisir une paire parmi cinq objets : il y a $5$ choix pour le premier écarté et $4$ pour le
second, mais l'ordre entre les deux ne compte pas, ce qui donne
$$\frac{5 \times 4}{2} = 10$$
façons. Vérifions-le en listant les choix, les espaces étant numérotés de $1$ à $5$ : on écarte
la paire $(1,2)$, ou $(1,3)$, ou $(1,4)$, ou $(1,5)$, ou $(2,3)$, ou $(2,4)$, ou $(2,5)$, ou
$(3,4)$, ou $(3,5)$, ou $(4,5)$. Cela fait bien $10$ possibilités.

Une fois les trois espaces choisis, il reste à décider quel professeur va dans lequel : il y a
$3$ choix pour M. Alpha, puis $2$ pour M. Bêta, puis $1$ pour M. Gamma, soit
$$3 \times 2 \times 1 = 6$$
possibilités.

**Conclusion.**
$$10 \times 6 = 60 .$$

Les trois professeurs peuvent choisir leurs chaises de **$60$** façons différentes.

## Going further

Le piège serait de compter directement sur les chaises numérotées de $1$ à $9$, en cherchant les
triplets de chaises non voisines et n'utilisant ni la chaise $1$ ni la chaise $9$. Cela marche
aussi, mais c'est beaucoup plus long et on oublie facilement des cas. Passer par les espaces
entre les élèves fait disparaître d'un coup les deux contraintes.

Essaie la même question avec $10$ chaises, six élèves et **quatre** professeurs : il y a toujours
$5$ espaces, et il faut maintenant en choisir $4$, c'est-à-dire en écarter un seul. Il y a donc
$5$ choix d'espaces, et $4 \times 3 \times 2 \times 1 = 24$ façons de répartir les quatre
professeurs, soit $5 \times 24 = 120$ placements.
