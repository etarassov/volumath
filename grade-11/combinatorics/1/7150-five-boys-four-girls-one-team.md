---
id: "7150"
title: "Cinq garçons, quatre filles, une équipe de trois"
grade: 11
theme: combinatorics
difficulty: 1
duration_min: 15
tags: [denombrement, combinaisons, pourcentages]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2014"
  reference: "stage_junior_2014.pdf, « Lundi : test initial », exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Un groupe d'élèves est composé de $5$ garçons et $4$ filles. On veut former une équipe de
trois élèves choisis dans ce groupe.

1. Combien d'équipes différentes peut-on former ?
2. Est-il vrai que moins de $5\,\%$ des équipes possibles sont composées uniquement de
   filles ?

## Hints

1. Pour la question 1 : choisis le premier membre, puis le deuxième, puis le troisième.
   Combien de fois as-tu compté chaque équipe ?
2. Une même équipe de trois personnes peut être énumérée dans combien d'ordres différents ?
3. Pour la question 2 : une équipe de trois filles se choisit parmi les quatre filles.
   Plutôt que de choisir les trois qui y sont, choisis celle qui n'y est pas.

## Solution

**Question 1.** Il y a $5 + 4 = 9$ élèves.

Pour former une liste ordonnée de trois élèves, il y a $9$ choix pour le premier, $8$ pour le
deuxième et $7$ pour le troisième, soit $9 \times 8 \times 7 = 504$ listes.

Mais une équipe n'est pas ordonnée : les trois élèves $A$, $B$, $C$ donnent la même équipe
qu'on les énumère dans l'ordre $ABC$, $ACB$, $BAC$, $BCA$, $CAB$ ou $CBA$. Chaque équipe a
donc été comptée $6$ fois. Le nombre d'équipes vaut

$$\frac{9 \times 8 \times 7}{6} = \frac{504}{6} = 84 .$$

**Il y a $84$ équipes possibles.**

**Question 2.** Une équipe entièrement féminine est un choix de $3$ filles parmi $4$. Or
choisir $3$ filles parmi $4$, c'est exactement choisir la **quatrième**, celle qui reste
dehors : il y a donc $4$ équipes entièrement féminines.

Comparons $\dfrac{4}{84}$ à $5\,\%$. Le plus simple est de calculer $5\,\%$ de $84$ :

$$\frac{5}{100} \times 84 = 4{,}2 .$$

Comme $4 < 4{,}2$, on a bien

$$\frac{4}{84} < \frac{5}{100} .$$

**Oui, c'est vrai : moins de $5\,\%$ des équipes sont composées uniquement de filles.**
(Le pourcentage exact vaut $\frac{4}{84} \approx 4{,}76\,\%$.)

## Going further

Le nombre d'équipes de $3$ élèves parmi $9$ se note $\binom{9}{3}$ et se lit « $3$ parmi
$9$ ». La formule générale est

$$\binom{n}{k} = \frac{n \times (n-1) \times \cdots \times (n-k+1)}{k!} = \frac{n!}{k!\,(n-k)!} .$$

L'astuce de la question 2 s'écrit alors $\binom{4}{3} = \binom{4}{1} = 4$, et plus
généralement $\binom{n}{k} = \binom{n}{n-k}$ : choisir ceux qui entrent revient à choisir
ceux qui restent dehors.

Une question pour continuer : combien d'équipes comportent au moins un garçon et au moins une
fille ?
