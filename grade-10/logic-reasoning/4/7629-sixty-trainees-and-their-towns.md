---
id: "7629"
title: "Soixante stagiaires et leurs villes"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 45
tags: [principe-des-tiroirs, disjonction-de-cas, comptage, optimisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, La Muraille"
  reference: "stage_ete_2013.pdf, chapitre X « La Muraille », exercice 45 (solution chapitre XI, résolue par Louis Charnavel ; la rédaction ci-dessous est différente)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Un stage rassemble $60$ stagiaires. Chacun habite dans une ville, et plusieurs stagiaires peuvent habiter la même ville.

On sait que, **quels que soient les $10$ stagiaires que l'on choisit**, il s'en trouve toujours au moins $3$ qui habitent la même ville.

Démontrer qu'au moins $15$ des $60$ stagiaires habitent la même ville.

## Hints

1. Traduisez l'hypothèse par la négative : il est **impossible** de trouver $10$ stagiaires comportant au plus $2$ habitants de chaque ville.
2. Pour fabriquer un tel groupe de $10$, on prendrait $2$ stagiaires dans chaque ville qui en compte au moins $2$, et $1$ dans chaque ville qui n'en compte qu'un. Combien de stagiaires peut-on rassembler ainsi ?
3. Notez $a$ le nombre de villes comptant au moins $2$ stagiaires et $b$ le nombre de villes n'en comptant qu'un. Écrivez l'inégalité que l'hypothèse impose à $2a + b$.
4. Les $60 - b$ stagiaires qui restent se répartissent dans $a$ villes. Appliquez le principe des tiroirs, en utilisant la majoration de $a$.

## Solution

Classons les villes en deux familles :

- les villes qui comptent **au moins $2$** stagiaires ; notons $a$ leur nombre ;
- les villes qui comptent **exactement $1$** stagiaire ; notons $b$ leur nombre.

(Les villes sans stagiaire ne nous intéressent pas.)

**Étape 1 : ce que dit l'hypothèse.**

Essayons de former un groupe de stagiaires contenant **au plus $2$ habitants de chaque ville**. Le plus grand groupe de ce type s'obtient en prenant $2$ stagiaires dans chacune des $a$ villes de la première famille, et le stagiaire unique de chacune des $b$ villes de la seconde. Il compte

$$2a + b$$

personnes.

Si l'on avait $2a + b \geqslant 10$, on pourrait en extraire $10$ stagiaires ne comportant jamais $3$ habitants d'une même ville, ce qui contredirait l'hypothèse. Donc

$$2a + b \leqslant 9 .$$

En particulier $2a \leqslant 9$, donc

$$a \leqslant 4 .$$

Notons aussi que $a \geqslant 1$ : sinon toutes les villes n'auraient qu'un stagiaire, donc $b = 60$ et $2a + b = 60 > 9$.

**Étape 2 : le principe des tiroirs.**

Les $b$ stagiaires seuls dans leur ville mis à part, il reste

$$60 - b$$

stagiaires, répartis dans les $a$ villes de la première famille. Par le principe des tiroirs, l'une de ces villes en compte au moins

$$\frac{60 - b}{a} .$$

Il faut donc minorer ce quotient. Comme $2a + b \leqslant 9$, on a $b \leqslant 9 - 2a$, donc

$$60 - b \geqslant 60 - (9 - 2a) = 51 + 2a .$$

D'où

$$\frac{60 - b}{a} \geqslant \frac{51 + 2a}{a} = \frac{51}{a} + 2 .$$

Comme $1 \leqslant a \leqslant 4$, on a $\dfrac{51}{a} \geqslant \dfrac{51}{4} = \text{12,75}$, et donc

$$\frac{60 - b}{a} \geqslant \text{12,75} + 2 = \text{14,75} .$$

Le nombre de stagiaires d'une ville étant un entier, l'une des villes en compte au moins $15$.

**Conclusion.** Au moins $15$ des $60$ stagiaires habitent la même ville.

## Going further

**Le résultat est optimal : on ne peut pas remplacer $15$ par $16$.** Voici une répartition qui vérifie l'hypothèse et où aucune ville ne dépasse $15$ stagiaires :

| Ville | $V_1$ | $V_2$ | $V_3$ | $V_4$ | $V_5$ |
|---|---|---|---|---|---|
| Stagiaires | $15$ | $15$ | $15$ | $14$ | $1$ |

Ici $a = 4$ et $b = 1$, donc $2a + b = 9 \leqslant 9$ : on ne peut pas former de groupe de $10$ comportant au plus $2$ habitants par ville, et l'hypothèse est bien respectée. Le total vaut $15 + 15 + 15 + 14 + 1 = 60$. ✔

On voit au passage que la démonstration est serrée : c'est bien le cas $a = 4$ qui est le plus défavorable, et c'est lui qui impose la valeur $15$.

Une question pour continuer : que devient le résultat si l'on remplace $60$ stagiaires par $100$, l'hypothèse restant la même ?
