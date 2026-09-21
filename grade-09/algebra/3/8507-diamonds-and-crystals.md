---
id: "8507"
title: "Diamants et cristaux coupés en deux"
grade: 9
theme: algebra
difficulty: 3
duration_min: 30
tags: [mise-en-equation, carre, proportionnalite, partage]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, Coupe Animath de printemps 2022"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre II, exercice 8 (sujet lycéens)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Dans un certain pays, le prix d'un diamant, en euros, s'obtient en élevant sa masse (en
grammes) au carré, puis en multipliant par $100$. Le prix d'un cristal, en euros, vaut trois
fois sa masse en grammes.

Martin et Théodore déterrent un trésor fait de pierres précieuses : chacune est soit un
diamant, soit un cristal. Le trésor entier vaut $5\,000\,000$ €.

Ils coupent chaque pierre en deux moitiés de même masse, et chacun prend une moitié de chaque
pierre. La part de Martin vaut alors $2\,000\,000$ €.

Quelle était la valeur totale des diamants du trésor ?

## Hints

1. Un cristal coupé en deux donne deux moitiés qui valent chacune la moitié du prix : le prix du cristal est proportionnel à la masse. Est-ce aussi le cas pour un diamant ?
2. Si un diamant de masse $m$ vaut $100 m^2$, combien vaut une moitié, de masse $m/2$ ?
3. Appelle $D$ la valeur totale des diamants du trésor et $C$ la valeur totale des cristaux. Écris deux équations : une pour le trésor entier, une pour la part de Martin.
4. Tu obtiens un système de deux équations à deux inconnues. Pas besoin de connaître le nombre de pierres ni leurs masses.

## Solution

**Ce qui arrive à une pierre coupée en deux.**

Un cristal de masse $m$ vaut $3m$. Chaque moitié a une masse $m/2$ et vaut donc
$3 \times \tfrac{m}{2} = \tfrac{3m}{2}$ : c'est bien la moitié du prix du cristal entier.

Un diamant de masse $m$ vaut $100 m^2$. Chaque moitié a une masse $m/2$ et vaut donc

$$100 \left(\frac{m}{2}\right)^2 = 100 \times \frac{m^2}{4} = \frac{100 m^2}{4} ,$$

c'est-à-dire **le quart** du prix du diamant entier. Couper un diamant lui fait donc perdre de
la valeur : les deux moitiés réunies ne valent que la moitié du diamant de départ.

**Mise en équation.**

Notons $D$ la valeur totale des diamants du trésor et $C$ la valeur totale des cristaux, en
euros. La première information donne

$$D + C = 5\,000\,000 . \qquad (1)$$

La part de Martin contient une moitié de chaque pierre. Pour les cristaux, ces moitiés valent
en tout $\tfrac{C}{2}$. Pour les diamants, chaque moitié vaut le quart du diamant entier, donc
ces moitiés valent en tout $\tfrac{D}{4}$. D'où

$$\frac{D}{4} + \frac{C}{2} = 2\,000\,000 . \qquad (2)$$

**Résolution.**

Multiplions $(2)$ par $2$ :

$$\frac{D}{2} + C = 4\,000\,000 .$$

Soustrayons cette égalité de $(1)$ :

$$D - \frac{D}{2} = 5\,000\,000 - 4\,000\,000 , \qquad \text{c'est-à-dire} \qquad
\frac{D}{2} = 1\,000\,000 .$$

Donc $D = 2\,000\,000$.

**Conclusion.** Les diamants du trésor valaient $2\,000\,000$ € au total.

*(Au passage, les cristaux valaient donc $3\,000\,000$ €, et la part de Théodore vaut elle
aussi $2\,000\,000$ € : le million manquant a été perdu en sciant les diamants.)*
