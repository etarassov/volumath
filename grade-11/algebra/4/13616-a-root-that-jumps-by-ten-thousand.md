---
id: "13616"
title: "Une racine qui saute de plus de 10 000"
grade: 11
theme: algebra
difficulty: 4
duration_min: 35
tags: [second-degre, discriminant, racines, contre-intuitif, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2011 (test de sélection du stage olympique de Grésillon, 7 juin 2011)"
  reference: "2017-09_coupe_printemps_2011_1.pdf, épreuve de première, exercice 6 ; corrigé 2017-09_coupe_printemps_2011_corrige.pdf, exercice 6 (dans la solution 2, le corrigé écrit « q = 100020010001 » là où il faut lire N = 100020010001) ; l'exemple numérique de la solution ci-dessous est plus simple que ceux du corrigé"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_printemps_2011_1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_printemps_2011_1.pdf"
---

## Statement

Soient $p$ et $q$ deux nombres réels tels que l'équation

$$x^2 + px + q = 0$$

a deux solutions réelles distinctes $u$ et $v$, avec $u > v$.

On modifie légèrement les coefficients : on remplace $p$ et $q$ par deux nombres $p'$ et $q'$ tels que $|p' - p| < \text{0,01}$ et $|q' - q| < \text{0,01}$. On suppose que la nouvelle équation $x^2 + p'x + q' = 0$ a, elle aussi, deux solutions réelles distinctes $u'$ et $v'$, avec $u' > v'$.

Peut-on choisir $p$, $q$, $p'$, $q'$ de sorte que $|u' - u| > 10\,000$ ?

## Hints

1. Écris $u$ à l'aide de $p$ et du discriminant $\Delta = p^2 - 4q$.
2. Si $p$ augmente de $h$, de combien $p^2$ augmente-t-il ? Que se passe-t-il quand $p$ est énorme ?
3. Essaie une équation simple dont les solutions sont $N + 1$ et $N - 1$, avec $N$ très grand, puis ne change que $p$, et seulement de $\text{0,001}$.

## Solution

La réponse est **oui**, aussi surprenant que cela paraisse.

**L'idée.** La plus grande solution de $x^2 + px + q = 0$ est

$$u = \frac{-p + \sqrt{\Delta}}{2}, \qquad \text{avec } \Delta = p^2 - 4q .$$

Si l'on change $p$ en $p + h$, le carré $p^2$ devient $(p + h)^2 = p^2 + 2ph + h^2$ : il change de $2ph + h^2$. Même si $h$ est minuscule, cette variation est énorme quand $p$ est énorme. Le discriminant peut donc changer beaucoup, et $\sqrt{\Delta}$ avec lui. Pour que cela compte, il faut que $\Delta$ soit petit au départ : on prend deux solutions proches l'une de l'autre, mais très grandes.

**Un exemple.** Posons $N = 10^{12}$ et choisissons

$$p = -2N, \qquad q = N^2 - 1 .$$

Alors $x^2 + px + q = x^2 - 2Nx + N^2 - 1 = (x - N)^2 - 1$. Les solutions sont $N + 1$ et $N - 1$, distinctes, donc $u = N + 1$.

Modifions seulement $p$, de $\text{0,001}$ :

$$p' = p - \text{0,001} = -(2N + \text{0,001}), \qquad q' = q .$$

On a bien $|p' - p| = \text{0,001} < \text{0,01}$ et $|q' - q| = 0 < \text{0,01}$.

**Le nouveau discriminant.**

$$\Delta' = p'^2 - 4q' = (2N + \text{0,001})^2 - 4(N^2 - 1) = 4N^2 + \text{0,004}\,N + \text{0,000001} - 4N^2 + 4 .$$

Donc $\Delta' = \text{0,004}\,N + \text{4,000001}$. Avec $N = 10^{12}$, on a $\text{0,004}\,N = 4 \times 10^9$, et donc

$$\Delta' > 4 \times 10^9 > \text{3,6} \times 10^9 = 60\,000^2 .$$

En particulier $\Delta' > 0$ : la nouvelle équation a deux solutions réelles distinctes, comme demandé. Et $\sqrt{\Delta'} > 60\,000$.

**L'écart entre $u$ et $u'$.** La plus grande solution de la nouvelle équation est

$$u' = \frac{-p' + \sqrt{\Delta'}}{2} = \frac{2N + \text{0,001} + \sqrt{\Delta'}}{2} .$$

Donc

$$u' - u = \frac{2N + \text{0,001} + \sqrt{\Delta'}}{2} - (N + 1) = \frac{\sqrt{\Delta'} + \text{0,001} - 2}{2} > \frac{60\,000 - 2}{2} = 29\,999 .$$

**Conclusion.** Avec $p = -2 \times 10^{12}$, $q = 10^{24} - 1$, $p' = p - \text{0,001}$ et $q' = q$, les coefficients changent de moins de $\text{0,01}$, mais la plus grande solution augmente de plus de $29\,999$, donc bien de plus de $10\,000$. En fait, elle passe d'environ $10^{12}$ à environ $10^{12} + 31\,622$.

**D'où vient le choix de $N$ ?** Le calcul montre que $u' - u$ vaut à peu près $\frac{1}{2}\sqrt{\text{0,004}\,N}$. Pour dépasser $10\,000$, il faut $\text{0,004}\,N$ plus grand qu'environ $20\,000^2 = 4 \times 10^8$, donc $N$ plus grand qu'environ $10^{11}$. On a pris $10^{12}$ pour avoir de la marge et des calculs simples.

## Going further

Voici une autre construction, où c'est le coefficient $q$ qui reste le même. Cherche $N$ pour que l'équation dont les solutions sont $N + 1$ et $N - 1$, et celle dont les solutions sont $N + \text{10001,001}$ et $N - 10\,001$, aient le même coefficient constant. De combien diffèrent alors leurs coefficients de $x$ ?

Pourquoi ce phénomène ne peut-il pas se produire si $p$ et $q$ restent compris entre $-100$ et $100$ ?
