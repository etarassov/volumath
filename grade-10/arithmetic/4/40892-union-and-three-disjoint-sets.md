---
id: "40892"
title: "Couvrir les entiers avec deux ensembles, et en séparer trois"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [partie-entiere, irrationnel, rationnels, partition, ensembles, raisonnement-par-l-absurde]
adapted_from: null
see_also: ["40887", "40888", "40889", "40890", "40891"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2024, mathématiques"
  reference: "cg-2024-s-sujet.pdf, problème 3 « Intersections et réunions », partie 4 « Réunion et intersections multiples », questions 20 et 21"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2024-s-sujet.pdf"
---

## Statement

On note $\mathbb{N}^*$ l'ensemble des entiers naturels non nuls, et $\mathrm{ent}(x)$ la partie entière d'un réel $x$, c'est-à-dire l'unique entier $n$ tel que $n \leqslant x < n + 1$. Pour tout réel $x > 0$, on note $\mathcal{E}(x)$ l'ensemble des entiers $\mathrm{ent}\left(\frac{n}{x}\right)$ pour $n = 1, 2, 3, \ldots$

Pour deux réels $\alpha > 0$ et $\beta > 0$, on considère les propriétés :

- **$\mathbf{P}_\cap$** : $\mathcal{E}(\alpha)$ et $\mathcal{E}(\beta)$ n'ont aucun élément commun ;
- **$\mathbf{P}_\cup$** : la réunion de $\mathcal{E}(\alpha)$ et $\mathcal{E}(\beta)$ est exactement $\mathbb{N}^*$.

On admet les résultats suivants, démontrés dans des parties précédentes. On note $\max\{\alpha ; \beta\}$ le plus grand des deux nombres.

- Si $\max\{\alpha ; \beta\} = 1$, la propriété $\mathbf{P}_\cup$ est vraie. Si $\max\{\alpha ; \beta\} > 1$, elle est fausse.
- Si $\max\{\alpha ; \beta\} < 1$ et que l'un des deux nombres est rationnel, $\mathbf{P}_\cup$ est fausse.
- **Théorème A.** Si $\alpha$ et $\beta$ sont irrationnels et $\alpha + \beta = 1$, alors chaque entier de $\mathbb{N}^*$ appartient à exactement un des deux ensembles $\mathcal{E}(\alpha)$ et $\mathcal{E}(\beta)$.
- **Théorème B.** La propriété $\mathbf{P}_\cap$ est vraie si et seulement si $\alpha$ et $\beta$ sont irrationnels et qu'il existe deux entiers $u \geqslant 1$ et $v \geqslant 1$ tels que $u\alpha + v\beta = 1$.

1. Démontrer que la propriété $\mathbf{P}_\cup$ est vraie si et seulement si l'on est dans l'un des deux cas suivants :
   - $\max\{\alpha ; \beta\} = 1$ ;
   - $\alpha$ et $\beta$ sont deux irrationnels strictement inférieurs à $1$, et il existe deux entiers $u \geqslant 1$ et $v \geqslant 1$ tels que $u(1 - \alpha) + v(1 - \beta) = 1$.
2. Existe-t-il trois réels $\alpha$, $\beta$ et $\gamma$, strictement positifs, tels que les ensembles $\mathcal{E}(\alpha)$, $\mathcal{E}(\beta)$ et $\mathcal{E}(\gamma)$ soient deux à deux disjoints ?

## Hints

1. **Question 1.** Les résultats admis règlent déjà tous les cas sauf un : celui où $\alpha$ et $\beta$ sont irrationnels et strictement inférieurs à $1$.
2. **Question 1.** Dans ce cas, d'après le théorème A, quels sont les entiers de $\mathbb{N}^*$ qui ne sont **pas** dans $\mathcal{E}(\alpha)$ ?
3. **Question 1.** Dire que la réunion de deux ensembles est $\mathbb{N}^*$, c'est dire que leurs « compléments » dans $\mathbb{N}^*$ n'ont aucun élément commun.
4. **Question 2.** Appliquez le théorème B à chacune des trois paires. Vous obtenez trois égalités ; tirez $\beta$ et $\gamma$ en fonction de $\alpha$ et reportez dans l'égalité restante.

## Solution

**1.** Distinguons les cas.

- Si $\max\{\alpha ; \beta\} = 1$, la propriété $\mathbf{P}_\cup$ est vraie (résultat admis), et l'on est dans le premier cas annoncé.
- Si $\max\{\alpha ; \beta\} > 1$, la propriété $\mathbf{P}_\cup$ est fausse, et l'on n'est dans aucun des deux cas annoncés.
- Si $\max\{\alpha ; \beta\} < 1$ et que l'un des deux est rationnel, $\mathbf{P}_\cup$ est fausse, et l'on n'est dans aucun des deux cas.

Reste le cas où $\alpha$ et $\beta$ sont irrationnels et strictement inférieurs à $1$. Alors $1 - \alpha$ est irrationnel (sinon $\alpha = 1 - (1-\alpha)$ serait rationnel), strictement positif, et $\alpha + (1 - \alpha) = 1$. D'après le théorème A, chaque entier de $\mathbb{N}^*$ est dans exactement un des deux ensembles $\mathcal{E}(\alpha)$ et $\mathcal{E}(1 - \alpha)$ : les entiers de $\mathbb{N}^*$ qui ne sont pas dans $\mathcal{E}(\alpha)$ sont exactement ceux de $\mathcal{E}(1 - \alpha)$. De même pour $\beta$ et $\mathcal{E}(1 - \beta)$.

Par conséquent, comme $\mathcal{E}(\alpha)$ et $\mathcal{E}(\beta)$ sont inclus dans $\mathbb{N}^*$ (car $\alpha < 1$ et $\beta < 1$), la propriété $\mathbf{P}_\cup$ est vraie si et seulement si aucun entier de $\mathbb{N}^*$ n'est à la fois hors de $\mathcal{E}(\alpha)$ et hors de $\mathcal{E}(\beta)$, c'est-à-dire si et seulement si les ensembles $\mathcal{E}(1-\alpha)$ et $\mathcal{E}(1-\beta)$ n'ont aucun élément commun.

D'après le théorème B appliqué aux irrationnels positifs $1 - \alpha$ et $1 - \beta$, cela équivaut à l'existence de deux entiers $u \geqslant 1$ et $v \geqslant 1$ tels que $u(1 - \alpha) + v(1 - \beta) = 1$. C'est le second cas annoncé.

En rassemblant tous les cas, $\mathbf{P}_\cup$ est vraie exactement dans les deux cas de l'énoncé.

**2. Non.** Supposons que les trois ensembles soient deux à deux disjoints. D'après le théorème B, appliqué à chacune des trois paires, $\alpha$, $\beta$ et $\gamma$ sont irrationnels et il existe des entiers $a, b, c, d, e, f$, tous au moins égaux à $1$, tels que

$$a\alpha + b\beta = 1, \qquad c\beta + d\gamma = 1, \qquad e\alpha + f\gamma = 1.$$

La première égalité donne $\beta = \frac{1 - a\alpha}{b}$, la troisième $\gamma = \frac{1 - e\alpha}{f}$. En reportant dans la deuxième :

$$\frac{c(1 - a\alpha)}{b} + \frac{d(1 - e\alpha)}{f} = 1, \quad \text{soit} \quad \left(\frac{ca}{b} + \frac{de}{f}\right)\alpha = \frac{c}{b} + \frac{d}{f} - 1.$$

Le nombre $\frac{ca}{b} + \frac{de}{f}$ est un rationnel strictement positif, donc non nul. On peut diviser :

$$\alpha = \frac{\frac{c}{b} + \frac{d}{f} - 1}{\frac{ca}{b} + \frac{de}{f}},$$

qui est un quotient de deux rationnels, donc un rationnel. Cela contredit l'irrationalité de $\alpha$.

Il n'existe donc pas trois réels strictement positifs dont les ensembles $\mathcal{E}$ soient deux à deux disjoints.

**Bilan.** Grâce au théorème A, le « complément » de $\mathcal{E}(\alpha)$ dans $\mathbb{N}^*$ est $\mathcal{E}(1 - \alpha)$ ; la question de la réunion se ramène ainsi à celle de l'intersection, déjà résolue par le théorème B. Et le théorème B impose à trois ensembles deux à deux disjoints trois relations linéaires à coefficients entiers positifs, qui sont incompatibles avec l'irrationalité.

## Going further

- Vérifiez à la calculatrice la question 1 sur un exemple : avec $\alpha = 1 - \frac{\sqrt{2}-1}{2}$ et $\beta = \sqrt{2} - 1$, on a $2(1 - \alpha) + (1 - \beta) = 1$. Écrivez les éléments de $\mathcal{E}(\alpha)$ et de $\mathcal{E}(\beta)$ jusqu'à $20$ : ils doivent recouvrir tous les entiers de $1$ à $20$, certains deux fois.
- Les ensembles $\mathcal{E}(x)$ sont des « suites de Beatty ». Si l'on autorise des ensembles décalés, de la forme $\{\mathrm{ent}(na + b) : n \geqslant 1\}$, on peut en trouver trois, ou plus, qui se partagent les entiers. Savoir exactement lesquels, lorsque les nombres $a$ sont tous différents, est la conjecture de Fraenkel, encore ouverte en général.
