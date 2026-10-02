---
id: "7130"
title: "La cantine et les cent plats"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [double-comptage, coefficients-binomiaux, paires]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2013"
  reference: "stage_junior_2013.pdf, « Mardi : test initial », exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2013.pdf"
---

## Statement

Un établissement scolaire compte $n$ élèves qui mangent à la cantine. Au cours de l'année,
la cantine a proposé $100$ plats différents, et chaque élève a goûté exactement $10$ plats
différents.

Par ailleurs, si l'on prend deux plats quelconques parmi les $100$, il y a exactement $m$
élèves qui ont goûté à chacun des deux.

Calculer le rapport $\dfrac{n}{m}$.

## Hints

1. Les deux données, « chaque élève goûte $10$ plats » et « chaque paire de plats est goûtée
   par $m$ élèves », parlent toutes les deux de **paires de plats**. C'est la piste.
2. Compte l'ensemble des couples formés d'un élève et d'une paire de plats que cet élève a
   goûtés tous les deux.
3. Compte-les élève par élève : combien de paires de plats un élève donné fournit-il ?
4. Compte-les ensuite paire de plats par paire de plats.

## Solution

Considérons l'ensemble $\mathcal{P}$ des couples

$$(e, \{p, p'\})$$

où $e$ est un élève et $\{p, p'\}$ une paire de plats distincts que l'élève $e$ a **tous les
deux** goûtés. Comptons $|\mathcal{P}|$ de deux façons.

**Premier comptage : élève par élève.** Un élève $e$ a goûté exactement $10$ plats. Les
paires de plats qu'il a goûtés tous les deux sont donc les paires prises parmi ces $10$
plats, et il y en a

$$\binom{10}{2} = \frac{10 \times 9}{2} = 45 .$$

Chaque élève fournit donc $45$ couples, et comme il y a $n$ élèves :

$$|\mathcal{P}| = 45 n .$$

**Deuxième comptage : paire de plats par paire de plats.** Il y a

$$\binom{100}{2} = \frac{100 \times 99}{2} = 4950$$

paires de plats distincts, et chacune a été goûtée par exactement $m$ élèves. Donc

$$|\mathcal{P}| = 4950 \, m .$$

**On égale.**

$$45 n = 4950 \, m, \qquad \text{donc} \qquad \frac{n}{m} = \frac{4950}{45} = 110 .$$

**Conclusion.** $\boxed{\dfrac{n}{m} = 110}$.

## Going further

Remarquons ce que le calcul donne, et ce qu'il ne donne pas. Il donne le **rapport** $n/m$,
et rien d'autre : ni $n$, ni $m$ séparément. C'est normal, puisque l'énoncé ne contient
aucune information qui fixerait la taille de l'établissement.

Le calcul dit aussi que $n$ est nécessairement un multiple de $110$. En particulier une telle
situation demande au moins $110$ élèves, et l'on peut se demander si elle est seulement
réalisable. C'est une question de **plans en blocs**, un domaine de la combinatoire qui
étudie exactement ce genre de configurations : des objets, des groupes d'objets, et la
condition que chaque paire apparaisse le même nombre de fois.
