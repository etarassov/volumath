---
id: "7920"
title: "Le compteur kilométrique lu à l'envers"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [numeration decimale, divisibilite, equation, chiffres]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, Coupe Animath"
  reference: "stage_ete_2016.pdf, épreuve de la Coupe Animath du 31 mai 2016, exercice 2 (énoncé p. 28, solution p. 30)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Anne a conduit sa voiture pendant un nombre entier non nul d'heures, à la vitesse constante de $55$ km/h, et a parcouru un nombre entier de kilomètres.

Au début du trajet, le compteur indiquait $\overline{abc}$ kilomètres, où $\overline{abc}$ est un nombre de trois chiffres tel que $a \ge 1$ et $a + b + c \le 7$. À la fin du trajet, le compteur indiquait $\overline{cba}$ kilomètres.

Déterminer toutes les valeurs possibles du nombre $\overline{abc}$.

## Hints

1. Écris $\overline{abc}$ et $\overline{cba}$ en fonction de $a$, $b$, $c$ : combien font-ils exactement ?
2. Calcule la distance parcourue, $\overline{cba} - \overline{abc}$. Le chiffre $b$ disparaît : qu'obtiens-tu ?
3. Si le trajet a duré $d$ heures, la distance vaut $55d$. Écris l'égalité et simplifie-la.
4. Que peux-tu alors dire de $c - a$ ? Sachant que $c$ est un chiffre, combien de valeurs sont possibles ?

## Solution

**La réponse : $\overline{abc} = 106$, et c'est la seule possibilité.**

**Étape 1 : la distance parcourue.**

En base dix,

$$\overline{abc} = 100a + 10b + c \qquad \text{et} \qquad \overline{cba} = 100c + 10b + a .$$

La distance parcourue est donc

$$\overline{cba} - \overline{abc} = 100c + 10b + a - 100a - 10b - c = 99(c - a) .$$

Le chiffre du milieu disparaît : il ne jouera aucun rôle.

**Étape 2 : l'équation.**

Notons $d$ le nombre d'heures de trajet, un entier avec $d \ge 1$. À $55$ km/h, la distance vaut $55d$. Donc

$$55d = 99(c - a) .$$

Divisons les deux membres par $11$ :

$$5d = 9(c - a) .$$

**Étape 3 : on trouve $c - a$.**

L'égalité $5d = 9(c-a)$ montre que $9(c-a)$ est un multiple de $5$. Comme $9$ et $5$ n'ont pas de facteur commun, c'est $c - a$ qui est un multiple de $5$.

De plus $c - a = \dfrac{5d}{9} > 0$ puisque $d \ge 1$, et $c - a \le c \le 9$.

Le seul multiple de $5$ strictement compris entre $0$ et $9$ est $5$. Donc

$$c - a = 5 ,$$

et au passage $d = 9$ : le trajet a duré neuf heures, pour $99 \times 5 = 495$ km.

**Étape 4 : les chiffres.**

On a $c = a + 5$, avec $a \ge 1$. La condition $a + b + c \le 7$ devient

$$a + b + (a + 5) \le 7 , \qquad \text{c'est-à-dire} \qquad 2a + b \le 2 .$$

Comme $a \ge 1$, on a $2a \ge 2$, donc nécessairement $a = 1$ et $b = 0$. Alors $c = 6$.

**Étape 5 : vérification.**

Le compteur passe de $106$ à $601$. La distance vaut $601 - 106 = 495$ km, soit $9$ heures à $55$ km/h. Et $1 + 0 + 6 = 7 \le 7$. ✓

**Conclusion.** La seule valeur possible est $\overline{abc} = \boxed{106}$.
