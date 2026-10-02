---
id: "11057"
title: "On remplace n par n + n/p : le 3 revient toujours"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [decomposition-en-facteurs-premiers, monovariant, absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 3 (arithmétique)"
  reference: "2024-01_Sujet-envoi-3-2023-2024.pdf, Exercices Juniors, exercice 6, repris tel quel en Exercices Seniors, exercice 13 ; corrigé 2024-02_Corrige-envoi-arithmetique-2023-2024.pdf. Coquille du corrigé : « Comme p est premier et différent de 2, il est pair » au lieu de « p + 1 est pair »."
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/01/Sujet-envoi-3-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-01_Sujet-envoi-3-2023-2024.pdf"
---

## Statement

Un entier $n \geqslant 2$ est écrit au tableau. Chaque jour, quelqu'un choisit un nombre premier $p$ qui divise le nombre $n$ écrit au tableau, efface $n$ et écrit à sa place le nombre
$$n + \frac{n}{p} .$$

Par exemple, à partir de $10$, on peut choisir $p = 5$ et écrire $10 + 2 = 12$, puis choisir $p = 2$ et écrire $12 + 6 = 18$.

Montrer que, quels que soient les choix faits chaque jour, le nombre premier $p = 3$ est choisi une infinité de fois.

## Hints

1. Fais quelques essais en partant de $10$, de $35$ ou de $8$. Essaie d'éviter le $3$ le plus longtemps possible.
2. Écris le nombre du tableau sous la forme $2^x \times 3^y \times c$, où $c$ n'est divisible ni par $2$ ni par $3$. Que deviennent $x$, $y$ et $c$ quand on choisit $p = 2$ ? Et $p = 3$ ?
3. Si on choisit un premier $p \geqslant 5$, le nombre $p + 1$ est pair. Montre que $c$ diminue strictement.
4. Que se passerait-il si, à partir d'un certain jour, on ne choisissait plus que $p = 2$ ?

## Solution

**Étape 1 : une écriture du nombre.**

Le nombre écrit au tableau augmente chaque jour, donc il reste au moins égal à $2$ et possède toujours au moins un diviseur premier.

Grâce à sa décomposition en facteurs premiers, on l'écrit
$$N = 2^x \times 3^y \times c ,$$
où $x$ et $y$ sont des entiers positifs ou nuls et où $c \geqslant 1$ n'est divisible ni par $2$ ni par $3$ (le nombre $c$ regroupe les facteurs premiers supérieurs ou égaux à $5$).

Choisir $p$ revient à remplacer $N$ par $N + \dfrac{N}{p} = \dfrac{N}{p} \times (p + 1)$. Regardons ce que deviennent $x$, $y$ et $c$.

**Étape 2 : l'effet de chaque choix.**

- **Si $p = 2$**, le nombre devient $\dfrac{N}{2} \times 3 = 2^{x-1} \times 3^{y+1} \times c$ : le nombre $x$ diminue de $1$, le nombre $y$ augmente de $1$, et $c$ ne change pas.
- **Si $p = 3$**, le nombre devient $\dfrac{N}{3} \times 4 = 2^{x+2} \times 3^{y-1} \times c$ : le nombre $c$ ne change pas.
- **Si $p \geqslant 5$**, alors $p$ divise $c$. Écrivons $p + 1 = 2^{\alpha} \times 3^{\beta} \times e$, où $e$ n'est divisible ni par $2$ ni par $3$. Comme $p$ est impair, $p + 1$ est pair, donc $\alpha \geqslant 1$ et
$$e \leqslant \frac{p + 1}{2} < p .$$
Le nouveau nombre est $2^{x + \alpha} \times 3^{y + \beta} \times \dfrac{c}{p} \times e$, et sa partie sans $2$ ni $3$ vaut
$$c' = \frac{c}{p} \times e = c \times \frac{e}{p} < c .$$
Le nombre $c$ **diminue strictement**.

**Étape 3 : les premiers $p \geqslant 5$ ne sont choisis qu'un nombre fini de fois.**

D'après l'étape 2, le nombre $c$ n'augmente jamais, et il diminue strictement chaque fois qu'on choisit un premier $p \geqslant 5$. Or $c$ est un entier au moins égal à $1$. Si sa valeur de départ est $c_0$, il ne peut diminuer strictement qu'au plus $c_0 - 1$ fois. Donc on ne choisit un premier $p \geqslant 5$ qu'un nombre fini de fois.

**Étape 4 : raisonnement par l'absurde.**

Supposons que $p = 3$ ne soit choisi qu'un nombre fini de fois. D'après l'étape 3, il existe alors un jour à partir duquel on ne choisit plus jamais $3$, ni aucun premier $p \geqslant 5$ : chaque jour, on choisit $p = 2$.

À partir de ce jour, l'exposant $x$ diminue de $1$ chaque jour, et rien d'autre ne le modifie. Mais $x$ est un entier positif ou nul : il ne peut pas diminuer de $1$ indéfiniment. C'est une contradiction.

**Conclusion.** Quels que soient les choix, le nombre premier $3$ est choisi une infinité de fois.

**Une erreur à éviter.** On pourrait croire qu'« au bout d'un moment, il ne reste plus que des $2$ et des $3$ dans le nombre ». C'est faux : en partant de $30 = 2 \times 3 \times 5$ et en choisissant toujours $2$ ou $3$, le facteur $5$ reste là pour toujours. Ce qui est vrai, c'est que le nombre $c$ finit par ne plus bouger, et c'est tout ce dont on a besoin.

## Going further

Le nombre premier $2$ est-il lui aussi forcément choisi une infinité de fois ? Et le nombre premier $5$ ?

*Réponse :* oui pour $2$. Si on ne choisissait plus jamais $2$ à partir d'un certain jour, on finirait (d'après l'étape 3) par ne choisir que $3$, et alors l'exposant $y$ diminuerait de $1$ chaque jour, ce qui est impossible. Non pour $5$ : en partant de $6$, le nombre ne contient jamais que des $2$ et des $3$ (car $2 + 1 = 3$ et $3 + 1 = 4$), donc on ne peut jamais choisir $5$.
