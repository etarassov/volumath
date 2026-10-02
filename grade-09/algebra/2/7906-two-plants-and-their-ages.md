---
id: "7906"
title: "Deux plantes et leur âge"
grade: 9
theme: algebra
difficulty: 2
duration_min: 20
tags: [mise-en-equation, equation-du-premier-degre, probleme-concret]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, Coupe Animath"
  reference: "stage_ete_2016.pdf, « Éliminatoires collégiens », exercice 9 et « Éliminatoires lycéens », exercice 1 (énoncé p. 22, solution p. 26)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Une plante $A$ grandit de $2$ cm par jour et une plante $B$ grandit de $3$ cm par jour. Chacune est sortie de terre à une hauteur nulle, et n'a jamais cessé de grandir depuis.

Aujourd'hui, la plante $B$ est $6$ fois plus haute que la plante $A$. Dans $20$ jours, elle ne sera plus que $4$ fois plus haute.

Quel âge, en jours, a chacune des deux plantes ? Quelle est la somme de ces deux âges ?

## Hints

1. Appelle $c$ la hauteur de la plante $A$ aujourd'hui. Que vaut alors la hauteur de $B$ aujourd'hui ?
2. Dans $20$ jours, la plante $A$ aura grandi de $2 \times 20$ cm et la plante $B$ de $3 \times 20$ cm. Écris les deux nouvelles hauteurs.
3. Traduis « $B$ sera $4$ fois plus haute que $A$ » par une équation, et résous-la.
4. Une plante qui grandit de $2$ cm par jour et qui mesure $h$ cm est sortie de terre il y a $h/2$ jours.

## Solution

**La réponse : la plante $A$ a $25$ jours, la plante $B$ en a $100$, et la somme vaut $125$ jours.**

**Étape 1 : on pose l'inconnue.**

Notons $c$ la hauteur de la plante $A$ aujourd'hui, en centimètres. Comme $B$ est aujourd'hui $6$ fois plus haute, la hauteur de $B$ est $6c$.

**Étape 2 : dans $20$ jours.**

En $20$ jours, la plante $A$ gagne $2 \times 20 = 40$ cm et la plante $B$ gagne $3 \times 20 = 60$ cm. Leurs hauteurs seront donc

$$A : \ c + 40 \qquad \text{et} \qquad B : \ 6c + 60 .$$

**Étape 3 : l'équation.**

On veut que $B$ soit alors $4$ fois plus haute que $A$ :

$$6c + 60 = 4 \times (c + 40) .$$

On développe : $6c + 60 = 4c + 160$, puis $2c = 100$, donc

$$c = 50 .$$

**Étape 4 : des hauteurs aux âges.**

Aujourd'hui, la plante $A$ mesure $50$ cm. Comme elle est partie de $0$ et gagne $2$ cm par jour, elle est sortie de terre il y a

$$\frac{50}{2} = 25 \ \text{jours} .$$

La plante $B$ mesure $6 \times 50 = 300$ cm et gagne $3$ cm par jour, donc elle a

$$\frac{300}{3} = 100 \ \text{jours} .$$

*Vérification :* aujourd'hui $300 = 6 \times 50$. Dans $20$ jours : $A$ mesurera $90$ cm, $B$ mesurera $360$ cm, et $360 = 4 \times 90$. Tout colle.

**Conclusion.** La plante $A$ a $25$ jours, la plante $B$ a $100$ jours, et la somme des deux âges vaut $\boxed{125}$ jours.
