---
id: "3224"
title: "Sept chiffres qui ne redescendent jamais"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [denombrement, combinaisons, coefficients binomiaux, chiffres, barres et etoiles]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Math Competitions Training, Combinatorics review"
  reference: "Handout-4819-5025.pdf, section 5, exercice 7 (Mock AIME 3 Pre 2005, problème 2)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4819-5025.pdf"
---

## Statement

Combien y a-t-il d'entiers à **sept chiffres** dont les chiffres, lus de gauche à droite, ne diminuent jamais ?

Autrement dit, combien y a-t-il d'entiers $\overline{d_1 d_2 d_3 d_4 d_5 d_6 d_7}$ avec

$$d_1 \le d_2 \le d_3 \le d_4 \le d_5 \le d_6 \le d_7 \ ?$$

Les chiffres peuvent se répéter. Par exemple $1\,225\,899$ convient, mais pas $1\,232\,456$.

## Hints

1. Le premier chiffre n'est pas nul, car le nombre a sept chiffres. Qu'en déduis-tu sur **tous** les chiffres ?
2. Un tel nombre est entièrement déterminé par la **liste des chiffres utilisés et de leurs répétitions**, puisque l'ordre est imposé.
3. Donne-toi les neuf quantités $m_1, m_2, \ldots, m_9$, où $m_k$ est le nombre de fois où le chiffre $k$ apparaît. Quelle relation vérifient-elles ?
4. Compter les solutions de $m_1 + m_2 + \cdots + m_9 = 7$ en entiers positifs ou nuls, c'est le problème des « étoiles et des barres ».
5. Sept étoiles et huit barres alignées : il faut choisir les positions des barres parmi les quinze places.

## Solution

**Tous les chiffres sont entre $1$ et $9$.**

Le nombre a sept chiffres, donc $d_1 \ne 0$, c'est-à-dire $d_1 \ge 1$. Comme la suite est croissante au sens large, tous les autres chiffres sont eux aussi $\ge 1$. Aucun des sept chiffres n'est donc nul : ils appartiennent tous à $\{1, 2, \ldots, 9\}$.

**Un tel nombre est déterminé par un simple comptage.**

L'ordre des chiffres est imposé (ils doivent croître). Le nombre est donc entièrement déterminé par la donnée, pour chaque chiffre $k$ de $1$ à $9$, du nombre $m_k$ de fois où il apparaît. Ces neuf entiers vérifient

$$m_1 + m_2 + \cdots + m_9 = 7, \qquad m_k \ge 0 .$$

Réciproquement, tout choix de $m_1, \ldots, m_9$ vérifiant cela donne exactement un nombre valable : on écrit $m_1$ fois le chiffre $1$, puis $m_2$ fois le chiffre $2$, et ainsi de suite.

Par exemple $1\,225\,899$ correspond à $m_1 = 1$, $m_2 = 2$, $m_5 = 1$, $m_8 = 1$, $m_9 = 2$, les autres étant nuls.

**Compter : les étoiles et les barres.**

Il reste à compter les solutions en entiers positifs ou nuls de

$$m_1 + m_2 + \cdots + m_9 = 7 .$$

Représentons une solution par une ligne de symboles : $7$ étoiles $\star$ pour les sept chiffres à placer, et $8$ barres $\mid$ pour séparer les neuf catégories. Par exemple

$$\star \mid \star\star \mid \ \mid \ \mid \star \mid \ \mid \ \mid \star \mid \star\star$$

se lit : un $1$, deux $2$, aucun $3$, aucun $4$, un $5$, aucun $6$, aucun $7$, un $8$, deux $9$. C'est exactement le nombre $1\,225\,899$.

Chaque solution correspond à une telle ligne, et réciproquement. Une ligne comporte $7 + 8 = 15$ symboles, et elle est déterminée par le choix des $7$ positions occupées par les étoiles parmi les $15$. Il y a donc

$$\binom{15}{7}$$

solutions.

**Le calcul.**

$$\binom{15}{7} = \frac{15 \times 14 \times 13 \times 12 \times 11 \times 10 \times 9}{7 \times 6 \times 5 \times 4 \times 3 \times 2 \times 1} .$$

Simplifions par étapes : $\dfrac{14}{7 \times 2} = 1$, $\dfrac{12}{6} = 2$, $\dfrac{10}{5} = 2$, $\dfrac{9}{3} = 3$, et il reste $\dfrac{15 \times 13 \times 11 \times 2 \times 2 \times 3}{4}$.

$$= \frac{15 \times 13 \times 11 \times 12}{4} = 15 \times 13 \times 11 \times 3 = 15 \times 429 = 6435 .$$

**Conclusion.** Il y a exactement

$$\binom{15}{7} = 6435$$

entiers à sept chiffres dont les chiffres ne diminuent jamais.

## Going further

1. Combien y a-t-il d'entiers à sept chiffres dont les chiffres sont **strictement** croissants ?
2. Combien y a-t-il d'entiers à trois chiffres dont les chiffres ne diminuent jamais ? Vérifier la formule en les comptant autrement.
3. Combien y a-t-il d'entiers à sept chiffres dont les chiffres n'**augmentent** jamais ? Attention : cette fois le chiffre $0$ est autorisé, mais seulement après les autres.
