---
id: "11255"
title: "Un tournoi où chaque match compte une petite équipe"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [tournoi, double comptage, majoration, construction]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 4 (combinatoire)"
  reference: "2019-01_envoi-4.pdf, Exercices du groupe Junior, exercice 3 ; corrigé 2019-02_envoi-4-corr-def.pdf (le corrigé termine le cas d'au plus 42 grandes équipes en comparant à (2019 − |A|) × 42, qui dépasse 42 × 1977 quand |A| < 42 : ce cas n'est pas démontré ; il est traité ici)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/01/envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2019-01_envoi-4.pdf"
---

## Statement

Lors d'un tournoi, $2019$ équipes ont joué des matchs. Deux équipes se sont affrontées au plus une
fois. De plus, à chaque match, au moins une des deux équipes qui se sont affrontées a joué **en
tout**, sur l'ensemble du tournoi, au plus $42$ matchs.

Quel est le plus grand nombre de matchs qui ont pu être joués pendant ce tournoi ?

## Hints

1. Cherche d'abord un exemple avec beaucoup de matchs : par exemple, quelques équipes qui jouent
   contre toutes les autres.
2. Appelle **petite** une équipe qui a joué au plus $42$ matchs, et **grande** une équipe qui en a
   joué au moins $43$. Deux grandes équipes ont-elles pu s'affronter ?
3. Note $g$ le nombre de grandes équipes. Chaque match fait jouer au moins une petite équipe :
   déduis-en une majoration du nombre de matchs. Elle suffit quand $g \geqslant 42$.
4. Quand $g \leqslant 41$, compte à part les matchs entre une petite et une grande équipe, et les
   matchs entre deux petites équipes.

## Solution

**Réponse : $42 \times 1977 = 83\,034$ matchs.**

### Un tournoi avec $83\,034$ matchs

Choisissons $42$ équipes. Chacune d'elles joue une fois contre chacune des $1977$ autres équipes, et
il n'y a pas d'autre match. Cela fait $42 \times 1977 = 83\,034$ matchs, et deux équipes ne se
rencontrent jamais deux fois.

Chacune des $1977$ autres équipes a joué exactement $42$ matchs, un contre chacune des $42$ équipes
choisies. Or chaque match fait jouer une de ces $1977$ équipes. La condition de l'énoncé est donc
vérifiée.

### Pas plus de $83\,034$ matchs

Prenons un tournoi qui vérifie la condition. Appelons **petite** une équipe qui a joué au plus $42$
matchs, et **grande** une équipe qui en a joué au moins $43$. Deux grandes équipes ne se sont jamais
affrontées : ce match ne ferait jouer aucune petite équipe.

Notons $g$ le nombre de grandes équipes et $p = 2019 - g$ le nombre de petites. Notons aussi $M$ le
nombre total de matchs, $m_1$ le nombre de matchs entre une petite et une grande équipe, et $m_2$
le nombre de matchs entre deux petites équipes. Comme il n'y a pas de match entre deux grandes
équipes, $M = m_1 + m_2$.

**Une première majoration.** Additionnons les nombres de matchs joués par les $p$ petites équipes.
Un match entre une petite et une grande équipe est compté une fois, un match entre deux petites
équipes est compté deux fois. Comme chaque petite équipe a joué au plus $42$ matchs :
$$m_1 + 2m_2 \leqslant 42p . \qquad (1)$$

**Premier cas : $g \geqslant 42$.** Alors, d'après $(1)$,
$$M = m_1 + m_2 \leqslant m_1 + 2m_2 \leqslant 42p = 42(2019 - g) \leqslant 42 (2019 - 42) = 42 \times 1977 .$$

**Second cas : $g \leqslant 41$.** Cette fois, la majoration $(1)$ ne suffit plus, car $p$ est trop
grand. Mais il y a peu de grandes équipes : une petite et une grande équipe se sont affrontées au
plus une fois, donc
$$m_1 \leqslant g\,p . \qquad (2)$$
En ajoutant $(1)$ et $(2)$ :
$$2M = 2m_1 + 2m_2 = m_1 + (m_1 + 2m_2) \leqslant g\,p + 42p = p\,(g + 42) .$$
Posons $q = g + 42$. Alors $q \leqslant 83$ et $p = 2019 - g = 2061 - q$, donc
$2M \leqslant q\,(2061 - q)$. Or, en développant, on vérifie que
$$q\,(2061 - q) - 83 \times 1978 = (q - 83)(1978 - q) .$$
Comme $q \leqslant 83$, le premier facteur est négatif ou nul, et le second est positif. Le produit
est donc négatif ou nul, et
$$2M \leqslant 83 \times 1978 = 164\,174 , \qquad \text{donc} \qquad M \leqslant 82\,087 < 83\,034 .$$

Dans les deux cas, il y a eu au plus $83\,034$ matchs.

**Conclusion : le plus grand nombre de matchs possible est $42 \times 1977 = 83\,034$.**

## Going further

- Et si l'on demande que, à chaque match, **les deux** équipes aient joué en tout au plus $42$
  matchs ? (Pour l'exemple, place les équipes en cercle, et fais jouer chacune contre ses $21$
  voisines de chaque côté.)
- Avec seulement $50$ équipes, et toujours la même règle, montre que le tournoi peut compter bien
  plus que $42 \times (50 - 42)$ matchs. Où le raisonnement ci-dessus ne marche-t-il plus ?
