---
id: "2804"
title: "Quatre jetons tirés d'un chapeau"
grade: 11
theme: probability-statistics
difficulty: 3
duration_min: 30
tags: [probabilite, combinaisons, denombrement, tirage-sans-remise]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School I, Relays"
  reference: "Handout-1301-1322.pdf, problème 17 (réponse dans Handout-1302-1322.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1301-1322.pdf"
---

## Statement

On place $40$ jetons dans un chapeau. Chaque jeton porte un nombre entre $1$ et $10$, et chaque nombre figure sur exactement quatre jetons.

On tire au hasard quatre jetons, tous en même temps (donc sans remise).

- Soit $p$ la probabilité que les quatre jetons portent **le même** nombre.
- Soit $q$ la probabilité que deux jetons portent un nombre $a$ et les deux autres un nombre $b$ différent de $a$.

Calculer $\dfrac{q}{p}$.

## Hints

1. Tirer quatre jetons en même temps parmi $40$ : combien y a-t-il de résultats possibles ? Ils sont tous également probables.
2. Ce nombre de résultats possibles est le même dénominateur pour $p$ et pour $q$. Dans le quotient $q/p$ il va disparaître : il suffit donc de compter des tirages, pas de calculer les probabilités.
3. Combien de tirages donnent quatre jetons portant le même nombre ? Attention, ce nombre est très petit.
4. Pour $q$ : choisis d'abord la **paire** de nombres $\{a, b\}$, puis les deux jetons portant $a$, puis les deux jetons portant $b$.
5. L'ordre dans lequel on nomme $a$ et $b$ ne compte pas : « deux $3$ et deux $7$ » et « deux $7$ et deux $3$ » décrivent le même tirage.

## Solution

**Le cadre.**

Un tirage est un ensemble de quatre jetons choisis parmi les $40$, sans tenir compte de l'ordre. Il y a donc

$$N = \binom{40}{4}$$

tirages possibles, tous également probables. Chacune des deux probabilités $p$ et $q$ s'écrit donc « nombre de tirages favorables divisé par $N$ ». Dans le quotient $q/p$, le nombre $N$ se simplifie :

$$\frac{q}{p} = \frac{\text{nombre de tirages favorables à } q}{\text{nombre de tirages favorables à } p}.$$

Il n'y a donc que deux dénombrements à faire, et $\binom{40}{4}$ n'a jamais besoin d'être calculé.

**Les tirages « quatre fois le même nombre ».**

Si les quatre jetons portent le même nombre, ce nombre détermine entièrement le tirage : les quatre jetons portant ce nombre sont pris, et il n'y en a pas d'autres. Comme le nombre commun peut valoir $1, 2, \ldots, 10$, il y a exactement

$$10 \text{ tirages favorables.}$$

**Les tirages « deux fois $a$, deux fois $b$ ».**

On construit un tel tirage en trois choix successifs.

1. *Choisir les deux nombres.* Il faut une paire $\{a, b\}$ de nombres distincts parmi les $10$. L'ordre ne compte pas, donc il y a $\binom{10}{2} = 45$ choix.
2. *Choisir les deux jetons portant $a$.* Il y a quatre jetons portant $a$, on en prend deux : $\binom{4}{2} = 6$ choix.
3. *Choisir les deux jetons portant $b$.* De même, $\binom{4}{2} = 6$ choix.

D'après le principe multiplicatif, le nombre de tirages favorables est

$$45 \times 6 \times 6 = 1620 .$$

**Le quotient.**

$$\frac{q}{p} = \frac{1620}{10} = 162 .$$

**Conclusion.**

$$\frac{q}{p} = 162 .$$

Autrement dit, obtenir deux paires est $162$ fois plus probable qu'obtenir un carré. C'est la même hiérarchie qu'au poker, et pour la même raison : il y a beaucoup plus de façons de fabriquer deux paires que de fabriquer un carré.

## Going further

1. Calculer $\binom{40}{4}$, puis les valeurs exactes de $p$ et de $q$.
2. Quelle est la probabilité que les quatre jetons portent quatre nombres tous différents ?
3. Quelle est la probabilité d'obtenir exactement trois jetons portant le même nombre, le quatrième portant un autre nombre ? Vérifier que la somme de toutes les probabilités obtenues vaut $1$.
