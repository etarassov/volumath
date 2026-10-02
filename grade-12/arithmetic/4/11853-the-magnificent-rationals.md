---
id: "11853"
title: "Les rationnels magnifiques"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [rationnels, puissances, bezout, nombres-premiers-entre-eux, construction, maths-expertes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 5 (pot-pourri)"
  reference: "2023-03_Sujet-envoi-5.pdf, Exercices Seniors, exercice 15 ; corrigé 2023-07_corrige-envoi-5.pdf. La construction ci-dessous est celle du corrigé, écrite avec deux paramètres u et v au lieu de huit exposants."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/03/Sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-03_Sujet-envoi-5.pdf"
---

## Statement

On dit qu'un nombre rationnel $q > 0$ est **magnifique** s'il existe quatre entiers strictement positifs $a$, $b$, $c$, $d$ tels que

$$q = \frac{a^{2021} + b^{2023}}{c^{2022} + d^{2024}}.$$

Existe-t-il un rationnel strictement positif qui n'est pas magnifique ?

## Hints

1. Il est difficile de contrôler une somme. Essayer de rendre égaux les deux termes du numérateur, et aussi les deux termes du dénominateur.
2. Avec $a = u^{2023}$ et $b = u^{2021}$, le numérateur vaut $2u^{2021 \times 2023}$. Faire de même au dénominateur avec un entier $v$.
3. Écrire $q = \frac{r}{s}$, et chercher $u$ et $v$ de la forme $r^{\alpha} s^{\beta}$. Quelles équations les exposants doivent-ils vérifier ?
4. Les nombres $2021 \times 2023$ et $2022 \times 2024$ sont-ils premiers entre eux ? Penser au théorème de Bézout.

## Solution

**Rappel : le théorème de Bézout** (option mathématiques expertes). Si deux entiers $K, L \geqslant 1$ sont premiers entre eux, il existe des entiers $e$ et $f$ tels que $Ke - Lf = 1$. On peut de plus les choisir strictement positifs : pour tout entier $t$, on a encore $K(e + Lt) - L(f + Kt) = Ke - Lf = 1$, et pour $t$ assez grand, $e + Lt$ et $f + Kt$ sont strictement positifs.

La réponse est **non** : tout rationnel strictement positif est magnifique. Notons $K = 2021 \times 2023$ et $L = 2022 \times 2024$.

**Étape 1 : rendre les termes égaux.** Soient $u$ et $v$ deux entiers strictement positifs, et posons

$$a = u^{2023}, \qquad b = u^{2021}, \qquad c = v^{2024}, \qquad d = v^{2022}.$$

Alors $a^{2021} = u^{2023 \times 2021} = u^K$ et $b^{2023} = u^{2021 \times 2023} = u^K$. De même $c^{2022} = d^{2024} = v^{L}$. Donc

$$\frac{a^{2021} + b^{2023}}{c^{2022} + d^{2024}} = \frac{2u^K}{2v^L} = \frac{u^K}{v^L}.$$

Il suffit donc de montrer que tout rationnel $q > 0$ s'écrit $\frac{u^K}{v^L}$ avec $u$, $v$ entiers strictement positifs.

**Étape 2 : choisir $u$ et $v$.** Écrivons $q = \frac{r}{s}$ avec $r$, $s$ entiers strictement positifs, et cherchons $u = r^{e} s^{g}$ et $v = r^{f} s^{h}$, avec $e$, $f$, $g$, $h$ entiers strictement positifs. Alors

$$\frac{u^K}{v^L} = \frac{r^{Ke} s^{Kg}}{r^{Lf} s^{Lh}} = r^{Ke - Lf} \, s^{Kg - Lh}.$$

Pour obtenir $\frac{r}{s} = r^1 s^{-1}$, il suffit d'avoir

$$Ke - Lf = 1 \qquad \text{et} \qquad Lh - Kg = 1.$$

**Étape 3 : $K$ et $L$ sont premiers entre eux.** Supposons qu'un nombre premier $p$ divise $K$ et $L$. Comme $p$ est premier, il divise l'un des nombres $2021$, $2023$ et l'un des nombres $2022$, $2024$, donc il divise leur différence. Les différences possibles sont $2022 - 2021 = 1$, $2024 - 2021 = 3$, $2023 - 2022 = 1$ et $2024 - 2023 = 1$. Donc $p = 3$, et $p$ divise $2021$ et $2024$. Mais $2021 = 3 \times 673 + 2$ n'est pas un multiple de $3$. C'est une contradiction : $K$ et $L$ sont premiers entre eux.

**Étape 4 : Bézout.** D'après le rappel, il existe des entiers strictement positifs $e$, $f$ tels que $Ke - Lf = 1$, et (en échangant les rôles de $K$ et $L$) des entiers strictement positifs $h$, $g$ tels que $Lh - Kg = 1$.

**Conclusion.** Avec ces exposants, $u = r^e s^g$ et $v = r^f s^h$ sont des entiers strictement positifs, et les entiers $a = u^{2023}$, $b = u^{2021}$, $c = v^{2024}$, $d = v^{2022}$ donnent

$$\frac{a^{2021} + b^{2023}}{c^{2022} + d^{2024}} = \frac{u^K}{v^L} = \frac{r}{s} = q.$$

Tout rationnel strictement positif est donc magnifique, et la réponse à la question est **non**.

## Going further

Le même argument marche pour $\frac{a^{m} + b^{n}}{c^{k} + d^{l}}$ dès que $\mathrm{PPCM}(m, n)$ et $\mathrm{PPCM}(k, l)$ sont premiers entre eux. Que se passe-t-il pour $\frac{a^2 + b^2}{c^2 + d^2}$ ? (Indication : peut-on obtenir $q = 1$ avec $a = b = c = d$, et $q = 2$ ? On pourra montrer que $3$ n'est pas de cette forme en regardant les restes modulo $3$ des carrés.)
