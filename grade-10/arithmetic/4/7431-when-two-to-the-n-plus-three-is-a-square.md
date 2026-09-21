---
id: "7431"
title: "Quand 2ⁿ + 3 et 2ⁿ + 1 sont des carrés parfaits"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [carres, puissances-de-deux, congruences, factorisation]
adapted_from: null
see_also: ["8432"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2010, groupe des débutants"
  reference: "stage_ete_2010.pdf, « Groupe des Débutants », TD d'arithmétique, exercice 9, repris au test d'arithmétique, exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2010.pdf"
---

## Statement

1. Trouver tous les entiers naturels $n$ tels que $2^n + 3$ soit le carré d'un entier.
2. Même question pour $2^n + 1$.

## Hints

1. Commence par calculer $2^n + 3$ et $2^n + 1$ pour $n = 0, 1, 2, 3, 4, 5$, et repère les carrés.
2. Pour la première question : un carré parfait ne peut laisser que certains restes dans la
   division par $4$. Lesquels ? Et que vaut $2^n + 3$ modulo $4$ quand $n \geq 2$ ?
3. Pour la seconde question, la méthode des congruences échoue. Écris plutôt $2^n = x^2 - 1$ et
   factorise le membre de droite. Que peut-on dire de deux nombres dont le produit est une
   puissance de $2$ ?

## Solution

### 1. Les entiers $n$ tels que $2^n + 3$ soit un carré

**Les petits cas.**

| $n$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ |
|---|---|---|---|---|---|---|
| $2^n+3$ | $4$ | $5$ | $7$ | $11$ | $19$ | $35$ |

Seul $n = 0$ donne un carré : $2^0 + 3 = 4 = 2^2$.

**On élimine les $n \geq 2$ par les restes modulo 4.**

*Les restes possibles d'un carré modulo $4$.* Soit $x$ un entier. Si $x = 2k$ est pair, alors
$x^2 = 4k^2$ laisse le reste $0$. Si $x = 2k+1$ est impair, alors
$$x^2 = 4k^2 + 4k + 1 = 4(k^2+k) + 1$$
laisse le reste $1$. **Un carré parfait laisse donc toujours le reste $0$ ou $1$ dans la division
par $4$.**

*Le reste de $2^n + 3$.* Si $n \geq 2$, alors $2^n$ est un multiple de $4$, donc $2^n + 3$ laisse
le reste $3$ dans la division par $4$.

Comme $3$ n'est ni $0$ ni $1$, le nombre $2^n + 3$ n'est pas un carré dès que $n \geq 2$.

**Il reste $n = 0$ et $n = 1$**, déjà traités : $2^0 + 3 = 4$ est un carré, $2^1 + 3 = 5$ n'en est
pas un.

**Conclusion de la question 1 : la seule solution est $n = 0$.**

### 2. Les entiers $n$ tels que $2^n + 1$ soit un carré

**Les petits cas.**

| $n$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ |
|---|---|---|---|---|---|---|
| $2^n+1$ | $2$ | $3$ | $5$ | $9$ | $17$ | $33$ |

Seul $n = 3$ donne un carré : $2^3 + 1 = 9 = 3^2$.

**Pourquoi les congruences ne suffisent plus.** Pour $n \geq 2$, le nombre $2^n + 1$ laisse le
reste $1$ modulo $4$, ce qui est autorisé pour un carré. Il faut donc une autre idée.

**On factorise.**

Supposons $2^n + 1 = x^2$, avec $x$ entier positif. Alors
$$2^n = x^2 - 1 = (x-1)(x+1).$$

Le nombre $x$ est forcément impair (sinon $x^2$ serait pair, alors que $2^n + 1$ est impair dès
que $n \geq 1$ ; le cas $n = 0$ donne $2$, qui n'est pas un carré). Donc $x - 1$ et $x+1$ sont
pairs, et en particulier $n \geq 1$.

**Deux facteurs d'un produit de puissances de 2.**

Le produit $(x-1)(x+1)$ vaut $2^n$. Chacun des deux facteurs divise $2^n$, donc chacun est
lui-même une puissance de $2$ :
$$x - 1 = 2^a, \qquad x + 1 = 2^b, \qquad \text{avec } a + b = n \text{ et } a \leq b.$$

**On exploite la différence.**

$$(x+1) - (x-1) = 2, \qquad \text{donc} \qquad 2^b - 2^a = 2.$$

Mettons $2^a$ en facteur : $2^a\,(2^{b-a} - 1) = 2$. Le facteur $2^{b-a} - 1$ est impair, et $2$
n'a qu'une seule écriture comme (puissance de $2$) $\times$ (nombre impair), à savoir
$2 \times 1$. Donc
$$2^a = 2 \quad \text{et} \quad 2^{b-a} - 1 = 1,$$
c'est-à-dire $a = 1$ et $b - a = 1$, donc $b = 2$.

**Conclusion du calcul.**

On obtient $x - 1 = 2$ et $x + 1 = 4$, donc $x = 3$, et $n = a + b = 1 + 2 = 3$.

**Vérification.** $2^3 + 1 = 9 = 3^2$, c'est bien un carré.

**Conclusion de la question 2 : la seule solution est $n = 3$.**

## Going further

Trouver tous les entiers naturels $n$ tels que $2^n - 1$ soit un carré parfait. Puis : tels que
$3^n + 1$ en soit un.
