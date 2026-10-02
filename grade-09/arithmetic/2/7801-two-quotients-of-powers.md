---
id: "7801"
title: "Deux quotients de puissances"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [puissances, racine-carree, regles-de-calcul]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, « Coupe Animath et évaluation initiale », éliminatoires collégiens, exercices 2 et 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Les deux calculs suivants ont l'air effrayants. Ils ne le sont pas : tout se simplifie.

**a)** Calculer
$$\frac{\sqrt{2^{999} + 2^{998} + 2^{998}}}{2^{498}}.$$

**b)** Calculer
$$\frac{8^{1345}}{4^{2015}}.$$

## Hints

1. Interdiction d'écrire ces nombres en entier : $2^{999}$ a trois cents chiffres. Tout doit
   se faire avec les règles sur les puissances.
2. Pour a) : $2^{998} + 2^{998}$, c'est deux fois $2^{998}$. Et deux fois $2^{998}$, quelle
   puissance de $2$ est-ce ?
3. Pour a) encore : une fois la somme sous la racine réduite à une seule puissance de $2$,
   souviens-toi que $\sqrt{2^{2k}} = 2^k$.
4. Pour b) : $8$ et $4$ sont tous les deux des puissances de $2$. Écris tout en base $2$ avant
   de simplifier.

## Solution

**a)** On s'occupe d'abord de ce qu'il y a sous la racine.

Additionner un nombre avec lui-même, c'est le multiplier par $2$ :
$$2^{998} + 2^{998} = 2 \times 2^{998} = 2^{999}.$$

La somme sous la racine devient donc
$$2^{999} + 2^{998} + 2^{998} = 2^{999} + 2^{999} = 2 \times 2^{999} = 2^{1000}.$$

L'exposant $1000$ est pair, donc la racine se calcule exactement :
$$\sqrt{2^{1000}} = \sqrt{(2^{500})^2} = 2^{500}.$$

Il reste la division :
$$\frac{2^{500}}{2^{498}} = 2^{500-498} = 2^2 = 4.$$

**La réponse de a) est $\boxed{4}$.**

**b)** On écrit $8$ et $4$ comme des puissances de $2$ :
$$8^{1345} = (2^3)^{1345} = 2^{3 \times 1345} = 2^{4035},$$
$$4^{2015} = (2^2)^{2015} = 2^{2 \times 2015} = 2^{4030}.$$

Donc
$$\frac{8^{1345}}{4^{2015}} = \frac{2^{4035}}{2^{4030}} = 2^{4035-4030} = 2^5 = 32.$$

**La réponse de b) est $\boxed{32}$.**

## Going further

Même exercice avec $\dfrac{9^{1001}}{3^{2000}}$, puis avec
$\dfrac{\sqrt{3^{101} + 3^{101} + 3^{101}}}{3^{50}}$.
