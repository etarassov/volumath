---
id: "11822"
title: "Seize nombres jusqu'à 100 et deux sommes égales"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [principe-des-tiroirs, differences, paires, suite-arithmetique]
adapted_from: null
see_also: ["8543"]
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 5 (pot-pourri)"
  reference: "2021-02_sujet-envoi-5.pdf, Exercices Juniors, exercice 9 ; corrigé 2021-04_corrige-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/02/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-02_sujet-envoi-5.pdf"
---

## Statement

On choisit $16$ entiers distincts entre $1$ et $100$.

Montrer qu'on peut toujours trouver parmi eux quatre nombres **deux à deux distincts** $a$, $b$, $c$, $d$ tels que

$$a + b = c + d.$$

## Hints

1. Combien de paires peut-on former avec $16$ nombres ? Combien de sommes différentes sont possibles ? Le principe des tiroirs ne suffit pas directement.
2. Regarder plutôt les **différences** : $a + b = c + d$ revient à $a - c = d - b$. Combien de valeurs peut prendre la différence de deux des nombres ?
3. Deux paires de même différence peuvent avoir un nombre en commun : on a alors trois nombres $x$, $x + e$, $x + 2e$. Que se passe-t-il si un même nombre est au milieu de deux tels triplets ? Sinon, retirer quelques paires bien choisies et recommencer.

## Solution

Notons $S$ l'ensemble des $16$ nombres choisis. Une **paire** est un ensemble $\{x, y\}$ de deux éléments de $S$ avec $x < y$ ; sa **différence** est $y - x$. Il y a

$$\frac{16 \times 15}{2} = 120$$

paires, et leur différence est un entier entre $1$ et $99$ : il n'y a que $99$ valeurs possibles.

**Étape 1 : deux paires de même différence.** Si deux paires différentes $\{x, x + e\}$ et $\{y, y + e\}$ ont la même différence $e$ (avec $x \neq y$), alors

$$(x + e) + y = x + (y + e).$$

Si les quatre nombres $x$, $x + e$, $y$, $y + e$ sont distincts, c'est gagné. Sinon les paires ont un nombre commun : comme $x \neq y$, c'est que $y = x + e$ ou $x = y + e$. Dans le premier cas, on a trois éléments $x$, $x + e$, $x + 2e$ de $S$ régulièrement espacés ; dans le second aussi, en échangeant les rôles. On dira qu'un tel triplet a pour **milieu** son nombre central.

**Étape 2 : un nombre au milieu de deux triplets.** Supposons qu'un nombre $s$ soit le milieu de deux triplets différents, $(s - e, s, s + e)$ et $(s - f, s, s + f)$ avec $e \neq f$. Alors

$$(s - e) + (s + e) = 2s = (s - f) + (s + f),$$

et les quatre nombres $s - e$, $s + e$, $s - f$, $s + f$ sont distincts : c'est gagné.

**Étape 3 : retirer des paires.** On peut donc supposer que chaque élément de $S$ est le milieu d'au plus un triplet. Pour chaque élément $s$ qui est le milieu d'un triplet $(s - e, s, s + e)$, on retire la paire $\{s, s + e\}$. On retire ainsi au plus $16$ paires, et il en reste au moins

$$120 - 16 = 104 > 99.$$

D'après le principe des tiroirs, deux des paires restantes ont la même différence $e$. Si elles avaient un nombre commun, ce serait, d'après l'étape 1, les paires $\{x, x + e\}$ et $\{x + e, x + 2e\}$ d'un triplet de milieu $x + e$. Mais ce triplet est le seul de milieu $x + e$, et on a retiré la paire $\{x + e, x + 2e\}$ : contradiction. Les deux paires n'ont donc aucun nombre commun, et l'étape 1 donne quatre nombres distincts.

**Conclusion.** Dans tous les cas, on trouve quatre éléments deux à deux distincts $a$, $b$, $c$, $d$ de $S$ tels que $a + b = c + d$.

## Going further

- Le résultat reste-t-il vrai avec $15$ nombres entre $1$ et $100$ ? Le raisonnement ci-dessus ne suffit plus : il ne resterait que $105 - 15 = 90$ paires, moins que les $99$ différences possibles.
- Une version plus facile : avec $12$ nombres entre $1$ et $30$, le principe des tiroirs appliqué directement aux sommes suffit.
