---
id: "3023"
title: "Le tour du magicien"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [chiffres, numeration, encadrement, divisibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Olympiads training, Modular Arithmetic I and Divisibility Rules"
  reference: "Handout-3277-2873.pdf, exercice 8 (AIME 1986 ; réponse dans Handout-3324-2873.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3277-2873.pdf"
---

## Statement

Dans un numéro de magie, le magicien demande à une spectatrice de penser à un nombre de
trois chiffres $\overline{abc}$. Il lui demande ensuite de former les cinq nombres

$$\overline{acb}, \quad \overline{bca}, \quad \overline{bac}, \quad \overline{cab}, \quad \overline{cba},$$

de les additionner, et d'annoncer à voix haute cette somme $N$. Le magicien retrouve alors
aussitôt le nombre de départ.

Joue le rôle du magicien : quel était le nombre $\overline{abc}$ si $N = 3194$ ?

## Hints

1. Il y a six façons d'ordonner trois chiffres. La spectatrice en a formé cinq, plus son nombre de départ : cela fait les six.
2. Calcule la somme des **six** nombres. Dans combien d'entre eux le chiffre $a$ occupe-t-il la place des centaines ? celle des dizaines ? celle des unités ?
3. Tu devrais trouver que cette somme vaut $222(a+b+c)$. Écris alors une égalité reliant $\overline{abc}$, $N$ et $a+b+c$.
4. $\overline{abc}$ est compris entre $100$ et $999$. Cela ne laisse que quelques valeurs possibles pour $a+b+c$. Teste-les toutes.

## Solution

**La somme des six nombres.**

Les six nombres $\overline{abc}$, $\overline{acb}$, $\overline{bca}$, $\overline{bac}$,
$\overline{cab}$, $\overline{cba}$ sont les six façons d'ordonner les trois chiffres.

Dans ces six nombres, chaque chiffre occupe la place des centaines exactement deux fois,
celle des dizaines deux fois, et celle des unités deux fois. Leur somme vaut donc

$$2 \times 100 \times (a+b+c) + 2 \times 10 \times (a+b+c) + 2 \times (a+b+c) = 222(a+b+c).$$

**L'équation du magicien.**

La spectatrice a annoncé la somme des cinq **autres** nombres, donc

$$\overline{abc} + N = 222(a+b+c),$$

c'est-à-dire ici

$$\overline{abc} + 3194 = 222 \times s, \qquad \text{où } s = a+b+c.$$

**Encadrer s.**

Comme $\overline{abc}$ est un nombre de trois chiffres, $100 \leq \overline{abc} \leq 999$,
donc

$$3294 \leq 222 s \leq 4193.$$

En divisant par $222$ : $\text{14,8} \leq s \leq \text{18,9}$ environ. Donc $s \in \{15, 16, 17, 18\}$.

**Tester les quatre cas.**

| $s$ | $222s$ | $\overline{abc} = 222s - 3194$ | somme des chiffres | accord ? |
|---|---|---|---|---|
| $15$ | $3330$ | $136$ | $1+3+6 = 10$ | non |
| $16$ | $3552$ | $358$ | $3+5+8 = 16$ | **oui** |
| $17$ | $3774$ | $580$ | $5+8+0 = 13$ | non |
| $18$ | $3996$ | $802$ | $8+0+2 = 10$ | non |

Un seul cas est cohérent : le nombre de départ vaut $358$, dont la somme des chiffres est
bien $16$.

**Vérification.**

Les cinq autres nombres sont $385$, $583$, $538$, $835$, $853$, et

$$385 + 583 + 538 + 835 + 853 = 3194.$$

**Conclusion.**

Le nombre pensé était $358$.
