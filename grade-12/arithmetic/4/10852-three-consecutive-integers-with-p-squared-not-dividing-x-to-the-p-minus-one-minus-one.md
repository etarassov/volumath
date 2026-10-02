---
id: "10852"
title: "Trois entiers consécutifs x pour lesquels p² ne divise pas xᵖ⁻¹ − 1"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [congruences, nombres-premiers, puissances, factorisation, tiroirs, existence]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 2 (arithmétique)"
  reference: "2018-11_envoi-2.pdf, Exercices Seniors, exercice 7 ; corrigé 2018-12_corrige-envoi-2.pdf (le corrigé utilise l'existence d'une racine primitive modulo p², remplacée ici par une factorisation de u^(p−1) − v^(p−1))"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/11/envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-11_envoi-2.pdf"
---

## Statement

Soit $p \geqslant 5$ un nombre premier.

Montrer qu'il existe un entier $n$ tel que, pour chacun des trois nombres $x = n - 1$, $x = n$ et $x = n + 1$ :

- $p$ ne divise pas $x$ ;
- $p^2$ ne divise pas $x^{p-1} - 1$.

## Hints

1. Pour $p = 5$, essaie $n = 3$. Puis regarde, parmi les nombres de $1$ à $24$ qui ne sont pas multiples de $5$, lesquels vérifient « $25$ divise $x^4 - 1$ ».
2. Tu dois en trouver un seul dans chaque famille $1, 6, 11, 16, 21$, puis $2, 7, 12, 17, 22$, et ainsi de suite. Essaie de montrer que c'est toujours le cas.
3. Soient $u$ et $v$ deux entiers qui ont le même reste $a \neq 0$ dans la division par $p$. Factorise $u^{p-1} - v^{p-1}$ par $u - v$, et montre que l'autre facteur n'est pas divisible par $p$.
4. Cherche $n$ de la forme $n = kp + 2$, avec $k$ entre $0$ et $p - 1$. Combien de valeurs de $k$ peuvent être mauvaises ?

## Solution

### Un rappel sur les restes

On écrit $u \equiv v \pmod k$, et on lit « $u$ est congru à $v$ modulo $k$ », quand $u - v$ est un multiple de $k$. On peut ajouter et multiplier ces relations comme des égalités. En particulier, $u \equiv v$ donne $u^j \equiv v^j \pmod k$ pour tout $j \geqslant 1$.

Disons qu'un entier $x$ est **mauvais** si $p^2$ divise $x^{p-1} - 1$.

### Étape 1 : une factorisation

Pour tous entiers $u$ et $v$,
$$u^{p-1} - v^{p-1} = (u - v) \times S, \qquad \text{avec } S = u^{p-2} + u^{p-3}\,v + u^{p-4}\,v^2 + \cdots + v^{p-2} .$$
On le vérifie en développant : dans $(u - v) \times S$, tous les termes se simplifient deux à deux, sauf $u^{p-1}$ et $-v^{p-1}$. Le nombre $S$ est une somme de $p - 1$ termes de la forme $u^{i}\,v^{j}$ avec $i + j = p - 2$.

### Étape 2 : un seul mauvais nombre par famille

Fixons un entier $a$ entre $1$ et $p - 1$, et regardons la famille des $p$ nombres
$$a, \quad a + p, \quad a + 2p, \quad \ldots, \quad a + (p-1)\,p .$$
**Montrons qu'elle contient au plus un mauvais nombre.**

Soient $u = a + kp$ et $v = a + k'p$ deux nombres mauvais de cette famille, avec $0 \leqslant k' \leqslant k \leqslant p - 1$. Alors $p^2$ divise $\left(u^{p-1} - 1\right) - \left(v^{p-1} - 1\right) = u^{p-1} - v^{p-1} = (u - v) \times S$.

*Le nombre $S$ n'est pas divisible par $p$.* On a $u \equiv a$ et $v \equiv a \pmod p$, donc chacun des $p - 1$ termes $u^i\,v^j$ de $S$ est congru à $a^i\,a^j = a^{p-2}$. Ainsi
$$S \equiv (p - 1)\,a^{p-2} \pmod p .$$
Or $p$ est premier et ne divise ni $p - 1$ ni $a$ (ils sont entre $1$ et $p - 1$). Il ne divise donc pas le produit $(p-1)\,a^{p-2}$, et il ne divise pas $S$.

*Conclusion de l'étape.* Puisque $p^2$ divise $(u - v) \times S$ et que $S$ n'apporte aucun facteur $p$, les deux facteurs $p$ viennent de $u - v$ : $p^2$ divise $u - v = (k - k')\,p$. Donc $p$ divise $k - k'$. Comme $0 \leqslant k - k' \leqslant p - 1$, cela force $k = k'$, c'est-à-dire $u = v$.

### Étape 3 : on choisit $n$

Cherchons $n$ sous la forme $n = kp + 2$, avec $k \in \{0, 1, \ldots, p - 1\}$. Alors
$$n - 1 = 1 + kp, \qquad n = 2 + kp, \qquad n + 1 = 3 + kp .$$

*Aucun des trois n'est multiple de $p$*, car leurs restes dans la division par $p$ sont $1$, $2$ et $3$, qui ne sont pas nuls puisque $p \geqslant 5$.

*Le nombre de valeurs de $k$ à éviter.* D'après l'étape 2 :

- au plus une valeur de $k$ rend $1 + kp$ mauvais (dans la famille de $a = 1$) ;
- au plus une valeur de $k$ rend $2 + kp$ mauvais (famille de $a = 2$) ;
- au plus une valeur de $k$ rend $3 + kp$ mauvais (famille de $a = 3$).

Cela fait au plus $3$ valeurs de $k$ à éviter. Or $k$ peut prendre $p \geqslant 5$ valeurs. Il reste donc au moins $2$ valeurs de $k$ pour lesquelles aucun des trois nombres $n - 1$, $n$, $n + 1$ n'est mauvais.

### Conclusion

**Pour une telle valeur de $k$, l'entier $n = kp + 2$ convient** : ni $p$ ne divise $x$, ni $p^2$ ne divise $x^{p-1} - 1$, pour $x = n - 1$, $n$ et $n + 1$.

*Exemple avec $p = 5$.* Les mauvais nombres des trois familles sont $1$ (car $1^4 - 1 = 0$), $7$ (car $7^4 - 1 = 2400 = 25 \times 96$) et $18$. Ils correspondent à $k = 0$, $k = 1$ et $k = 3$. Avec $k = 2$, on obtient $n = 12$ : on vérifie que $11^4 - 1 = 14\,640$, $12^4 - 1 = 20\,735$ et $13^4 - 1 = 28\,560$ ne sont pas multiples de $25$.

## Going further

1. Pourquoi l'énoncé demande-t-il $p \geqslant 5$ ? Que se passe-t-il pour $p = 2$ et pour $p = 3$ ?
2. Montre que chaque famille de l'étape 2 contient **exactement** un mauvais nombre. *Indication : on admet le petit théorème de Fermat, qui dit que $p$ divise $a^{p-1} - 1$. Écris $a^{p-1} = 1 + tp$, développe $(a + kp)^{p-1}$ et garde seulement les termes qui ne sont pas multiples de $p^2$.*
3. Peut-on trouver, de la même façon, quatre entiers consécutifs qui conviennent ? Combien au plus ?
