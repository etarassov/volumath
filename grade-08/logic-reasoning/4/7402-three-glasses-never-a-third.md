---
id: "7402"
title: "Trois verres, jamais un tiers"
grade: 8
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [invariant, fractions, puissances-de-deux, impossibilite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2010, exercices supplémentaires du premier jour"
  reference: "stage_ete_2010.pdf, « Premier jour », exercices supplémentaires, exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2010.pdf"
---

## Statement

On pose sur une table trois verres identiques. Le premier est plein d'eau, les deux autres sont
vides.

Un coup consiste à choisir deux verres et à répartir équitablement entre eux l'eau qu'ils
contiennent : après le coup, ces deux verres contiennent exactement la même quantité.

Peut-on, en un nombre fini de coups, arriver à ce que les trois verres contiennent la même
quantité d'eau ?

## Hints

1. Prends le verre plein pour unité. La situation de départ s'écrit $(1 \,;\, 0 \,;\, 0)$. Joue
   quelques coups et note à chaque fois les trois quantités.
2. Écris toujours ces quantités sous forme de fractions irréductibles. Regarde les dénominateurs
   qui apparaissent. Qu'ont-ils tous en commun ?
3. La quantité qu'on veut atteindre est $\tfrac{1}{3}$. Son dénominateur est-il du même type ?

## Solution

**La réponse est non : c'est impossible.**

**On commence par jouer.**

Prenons la quantité d'eau du verre plein comme unité. Au départ, la situation est
$$(1 \,;\, 0 \,;\, 0).$$

Si on répartit le verre plein avec un verre vide, on obtient
$$\left(\tfrac{1}{2} \,;\, \tfrac{1}{2} \,;\, 0\right).$$

Puis, en répartissant le deuxième et le troisième :
$$\left(\tfrac{1}{2} \,;\, \tfrac{1}{4} \,;\, \tfrac{1}{4}\right).$$

Les dénominateurs qui apparaissent sont $1$, $2$, $4$ : ce sont des puissances de $2$. C'est là
l'invariant.

**L'invariant.**

*Affirmation.* À chaque instant, chacune des trois quantités, écrite sous forme de fraction
irréductible, a pour dénominateur une puissance de $2$ (on compte $1 = 2^0$ comme une puissance
de $2$).

*Démonstration par récurrence sur le nombre de coups joués.*

Au départ, les trois quantités sont $1 = \tfrac{1}{1}$, $0 = \tfrac{0}{1}$ et $0 = \tfrac{0}{1}$ :
les dénominateurs valent $1 = 2^0$, l'affirmation est vraie.

Supposons-la vraie après un certain nombre de coups, et jouons un coup de plus. Ce coup ne touche
que deux verres, disons ceux qui contiennent $\dfrac{p}{2^m}$ et $\dfrac{q}{2^n}$. Le troisième
verre ne change pas, donc il vérifie toujours l'affirmation.

Après le coup, les deux verres choisis contiennent chacun la moitié de la somme :
$$\frac{1}{2}\left(\frac{p}{2^m} + \frac{q}{2^n}\right)
= \frac{1}{2} \cdot \frac{p \cdot 2^n + q \cdot 2^m}{2^{m+n}}
= \frac{p \cdot 2^n + q \cdot 2^m}{2^{m+n+1}}.$$

Le numérateur est un entier et le dénominateur est une puissance de $2$. En simplifiant cette
fraction pour la rendre irréductible, on ne peut que supprimer des facteurs du dénominateur : le
dénominateur obtenu divise $2^{m+n+1}$, c'est donc encore une puissance de $2$.

L'affirmation reste vraie après le coup, ce qui achève la récurrence.

**Conclusion.**

Pour que les trois verres contiennent la même quantité, il faudrait que chacun contienne
$\dfrac{1}{3}$ de l'eau, puisque le total ne change jamais et vaut $1$.

Or $\dfrac{1}{3}$ est déjà irréductible, et son dénominateur $3$ n'est pas une puissance de $2$.
D'après l'invariant, cette quantité ne peut jamais apparaître dans un verre.

**On ne peut donc jamais répartir l'eau équitablement entre les trois verres.**

## Going further

Et si l'on part de **quatre** verres, un plein et trois vides, avec la même opération ? Peut-on
arriver à quatre quarts ?
