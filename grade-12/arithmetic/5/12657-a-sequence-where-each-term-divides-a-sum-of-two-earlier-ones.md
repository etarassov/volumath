---
id: "12657"
title: "Une suite où chaque terme divise une somme de deux termes précédents"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 90
tags: [divisibilite, suites, periodicite, suite-bornee, maximum]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test du 23 mars 2022"
  reference: "2022-07_Enonce-Web-Test-4.pdf, exercice 7 (senior) ; corrigé 2022-04_Corrige-Web-Test-4.pdf. La dernière étape du corrigé est fausse telle qu'elle est écrite : elle affirme que λ = a(m+n) divise a(n) + a(m), ce que l'hypothèse ne donne pas, puisque les trois indices doivent être régulièrement espacés. On l'a remplacée par un argument qui utilise deux éléments N et N + 2d de l'ensemble E."
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/07/Énoncé-Web-Test-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2022-07_Enonce-Web-Test-4.pdf"
---

## Statement

Soit $(a_n)_{n \geqslant 1}$ une suite d'entiers naturels non nuls telle que
$$a_{n+2m} \text{ divise } a_n + a_{n+m} \qquad \text{pour tous les entiers } m \geqslant 1 \text{ et } n \geqslant 1.$$

Démontrer que cette suite est ultimement périodique, c'est-à-dire qu'il existe deux entiers $N \geqslant 1$ et $d \geqslant 1$ tels que $a_n = a_{n+d}$ pour tout $n \geqslant N$.

## Hints

1. Teste l'hypothèse sur des exemples. Une suite constante convient. Vérifie que la suite $1, 2, 3, 1, 2, 3, \ldots$ convient aussi, mais pas la suite $1, 2, 1, 2, \ldots$
2. Commence par montrer que la suite est bornée. Pour cela, regarde un terme $a_k$ plus grand que tous les termes précédents. Que vaut alors la somme $a_{k-2i} + a_{k-i}$ ?
3. Avec $i = 1$, $2$ et $4$, obtiens $a_{k-4} = a_{k-1}$ et $a_{k-8} = a_{k-2}$. Montre ensuite que $a_{k-1}$ divise $a_{k-4}$, $a_{k-7}$, $a_{k-10}$, et ainsi de suite jusqu'à l'un des trois premiers termes.
4. Une fois la suite bornée, regarde la plus grande valeur $\lambda$ prise une infinité de fois. À partir d'un certain rang, tous les termes sont au plus $\lambda$. Regarde l'ensemble $E$ des indices où la valeur $\lambda$ est prise : montre que deux éléments consécutifs de $E$ n'ont pas la même parité, puis que les éléments de $E$ sont régulièrement espacés.
5. Pour finir, si $N$ et $N + 2d$ sont deux éléments de $E$ et si $n + 2m = N$, applique l'hypothèse aux deux couples $(n, m)$ et $(n, m + d)$.

## Solution

On note **(H)** l'hypothèse : pour tous $m \geqslant 1$ et $n \geqslant 1$, le nombre $a_{n+2m}$ divise $a_n + a_{n+m}$. Les trois indices $n$, $n + m$ et $n + 2m$ sont régulièrement espacés, et c'est le terme de plus grand indice qui divise la somme des deux autres.

On utilisera souvent deux faits simples sur les entiers $x \geqslant 1$ et $y$ :

- *(D1)* si $x$ divise $y$ et si $y \geqslant 1$, alors $x \leqslant y$ ;
- *(D2)* si $x$ divise $y + z$ et divise $z$, alors $x$ divise $y$.

**Partie A : la suite est bornée.**

*Étape A1 : ce qui se passe à un record.* On dit que $k$ est un **record** si $a_k$ est strictement plus grand que $a_1, a_2, \ldots, a_{k-1}$. Soit $k \geqslant 9$ un record, et soit $i$ un entier tel que $1 \leqslant i < k/2$, de sorte que $k - 2i \geqslant 1$. D'après (H), avec $n = k - 2i$ et $m = i$, le nombre $a_k$ divise $a_{k-2i} + a_{k-i}$. Cette somme est un multiple de $a_k$, elle est strictement positive, et elle est strictement plus petite que $2a_k$, puisque ses deux termes sont plus petits que $a_k$. C'est donc exactement $a_k$ :
$$a_{k-2i} + a_{k-i} = a_k.$$
Comme $k \geqslant 9$, on peut prendre $i = 1$, $i = 2$ et $i = 4$ :
$$a_{k-2} + a_{k-1} = a_k, \qquad a_{k-4} + a_{k-2} = a_k, \qquad a_{k-8} + a_{k-4} = a_k.$$
En comparant les deux premières égalités, $a_{k-4} = a_{k-1}$. En comparant les deux dernières, $a_{k-8} = a_{k-2}$.

*Étape A2 : le terme $a_{k-1}$ est petit.* On pose $c = a_{k-1}$, et l'on montre que $c$ divise $a_{k-1-3\ell}$ pour tout entier $\ell \geqslant 0$ tel que $k - 1 - 3\ell \geqslant 1$.

- Pour $\ell = 0$, c'est évident, et pour $\ell = 1$, on a vu que $a_{k-4} = c$.
- Soit $\ell \geqslant 2$, et supposons le résultat vrai pour $\ell - 1$ et $\ell - 2$. On pose $j = k - 1 - 3\ell$. D'après (H), avec $n = j$ et $m = 3$, le nombre $a_{j+6}$ divise $a_j + a_{j+3}$. Or $j + 6 = k - 1 - 3(\ell - 2)$ et $j + 3 = k - 1 - 3(\ell - 1)$. Donc $c$ divise $a_{j+6}$, qui divise $a_j + a_{j+3}$, et $c$ divise $a_{j+3}$. D'après (D2), $c$ divise $a_j$.

On prend le plus grand $\ell$ tel que $k - 1 - 3\ell \geqslant 1$. L'indice $k - 1 - 3\ell$ vaut alors $1$, $2$ ou $3$, sinon on pourrait reculer encore de $3$. Le nombre $c$ divise donc l'un des termes $a_1$, $a_2$, $a_3$, et d'après (D1),
$$a_{k-1} \leqslant \max(a_1, a_2, a_3).$$

*Étape A3 : le terme $a_{k-2}$ est petit.* On fait la même chose avec $c' = a_{k-2}$ et des pas de $6$ au lieu de $3$. Le nombre $c'$ divise $a_{k-2-6\ell}$ pour tout $\ell \geqslant 0$ tel que cet indice soit au moins $1$ : pour $\ell = 1$, c'est $a_{k-8} = c'$, et pour $\ell \geqslant 2$, on applique (H) avec $n = k - 2 - 6\ell$ et $m = 6$. Le dernier indice atteint est entre $1$ et $6$, donc
$$a_{k-2} \leqslant \max(a_1, a_2, \ldots, a_6).$$

*Étape A4 : conclusion de la partie A.* On pose $M = \max(a_1, \ldots, a_6)$. Pour tout record $k \geqslant 9$, on a donc
$$a_k = a_{k-1} + a_{k-2} \leqslant M + M = 2M.$$
Soit $B$ le plus grand des nombres $a_1, a_2, \ldots, a_8$ et $2M$. Montrons que tous les termes sont au plus $B$. Sinon, soit $k$ le plus petit indice tel que $a_k > B$. Comme $a_1, \ldots, a_8 \leqslant B$, on a $k \geqslant 9$. Tous les termes avant $a_k$ sont au plus $B$, donc plus petits que $a_k$ : $k$ est un record. Alors $a_k \leqslant 2M \leqslant B$, ce qui est absurde. La suite est donc bornée par $B$.

**Partie B : la plus grande valeur prise une infinité de fois.**

*Étape B1 : on se débarrasse du début.* Les termes de la suite ne prennent que les valeurs $1, 2, \ldots, B$. L'une de ces valeurs est prise une infinité de fois : sinon, chacune ne serait prise qu'un nombre fini de fois, et la suite n'aurait qu'un nombre fini de termes. On note $\lambda$ la plus grande valeur prise une infinité de fois. Chacune des valeurs plus grandes que $\lambda$ n'est prise qu'un nombre fini de fois. Il existe donc un indice $\kappa$ après lequel elles n'apparaissent plus : $a_n \leqslant \lambda$ pour tout $n > \kappa$.

On oublie les $\kappa$ premiers termes, en posant $b_n = a_{n+\kappa}$. La suite $(b_n)$ vérifie encore (H), car
$$b_{n+2m} = a_{(n+\kappa)+2m} \text{ divise } a_{n+\kappa} + a_{(n+\kappa)+m} = b_n + b_{n+m}.$$
Si $(b_n)$ est ultimement périodique, alors $(a_n)$ l'est aussi, avec la même période, à partir d'un rang augmenté de $\kappa$. **On peut donc supposer que $a_n \leqslant \lambda$ pour tout $n \geqslant 1$**, la valeur $\lambda$ étant prise une infinité de fois.

On note $E$ l'ensemble des indices $k$ tels que $a_k = \lambda$. Il est infini. Retenons une conséquence simple de (H) : si $n + 2m$ est dans $E$, alors $\lambda$ divise $a_n + a_{n+m}$.

*Étape B2 : le milieu de deux éléments de même parité.* Soient $k < \ell$ deux éléments de $E$ de même parité. Alors $m = (\ell - k)/2$ est un entier au moins égal à $1$, et $k + m$ est le milieu de $k$ et $\ell$. D'après (H), avec $n = k$, le nombre $a_\ell = \lambda$ divise $a_k + a_{k+m} = \lambda + a_{k+m}$. Donc $\lambda$ divise $a_{k+m}$, qui est compris entre $1$ et $\lambda$ : d'après (D1), $a_{k+m} = \lambda$. Le milieu $k + m$ est aussi dans $E$.

*Étape B3 : les éléments de $E$ sont régulièrement espacés.* Rangeons les éléments de $E$ dans l'ordre croissant. Deux éléments consécutifs n'ont pas la même parité : sinon, d'après l'étape B2, leur milieu serait un élément de $E$ situé entre eux.

Prenons trois éléments consécutifs $k < \ell < p$ de $E$. Les nombres $k$ et $\ell$ n'ont pas la même parité, ni $\ell$ et $p$ : donc $k$ et $p$ ont la même parité. D'après l'étape B2, leur milieu $(k + p)/2$ est dans $E$, strictement entre $k$ et $p$. Le seul élément de $E$ entre $k$ et $p$ est $\ell$, donc $(k + p)/2 = \ell$, c'est-à-dire $\ell - k = p - \ell$.

Ainsi deux écarts successifs entre éléments consécutifs de $E$ sont égaux, et tous les écarts sont égaux à un même entier $d \geqslant 1$. Si $e$ est le plus petit élément de $E$, alors
$$E = \{e, \; e + d, \; e + 2d, \; e + 3d, \; \ldots\}.$$

*Étape B4 : la suite est périodique à partir d'un certain rang.* Soit $j$ un entier tel que $j \geqslant e$ et $j \geqslant d + 1$. Soit $N$ le plus petit élément de $E$ strictement plus grand que $j$. Comme $j \geqslant e$ et que les éléments de $E$ sont espacés de $d$, on a $N \leqslant j + d$, et comme $j \geqslant d + 1$, on a $j + d \leqslant 2j - 1$. Donc
$$j + 1 \leqslant N \leqslant 2j - 1.$$
On pose $m = N - j$ et $n = j - m$. Alors $1 \leqslant m \leqslant j - 1$, donc $n \geqslant 1$, et l'on a $n + m = j$ et $n + 2m = N$.

- D'après (H) avec $(n, m)$ : comme $n + 2m = N$ est dans $E$, le nombre $\lambda$ divise $a_n + a_j$.
- D'après (H) avec $(n, m + d)$ : l'indice $n + 2(m + d) = N + 2d$ est aussi dans $E$, et $n + (m + d) = j + d$. Donc $\lambda$ divise $a_n + a_{j+d}$.

En faisant la différence, $\lambda$ divise $a_j - a_{j+d}$. Or $a_j$ et $a_{j+d}$ sont entre $1$ et $\lambda$, donc leur différence est comprise entre $-(\lambda - 1)$ et $\lambda - 1$. Le seul multiple de $\lambda$ dans cet intervalle est $0$ : on obtient $a_{j+d} = a_j$.

C'est vrai pour tout $j$ au moins égal au plus grand des deux nombres $e$ et $d + 1$.

**Conclusion.** Pour la suite de départ, il existe des entiers $N$ et $d \geqslant 1$ tels que $a_{n+d} = a_n$ pour tout $n \geqslant N$ : **la suite est ultimement périodique.**

## Going further

- La suite $1, 2, 3, 1, 2, 3, \ldots$ vérifie l'hypothèse. Si $m$ est un multiple de $3$, les trois termes sont égaux. Sinon, les trois termes sont $1$, $2$ et $3$ dans un certain ordre, et chacun divise la somme des deux autres : $1$ divise tout, $2$ divise $1 + 3$ et $3$ divise $1 + 2$. La suite $1, 1, 1, 1, 2, 1, 1, 1, 1, 2, \ldots$, de période $5$, convient aussi.
- La preuve montre que la période $d$ obtenue est toujours impaire, puisque deux éléments consécutifs de $E$ n'ont pas la même parité. Une suite de période $2$ qui n'est pas constante ne peut donc pas convenir. On le vérifie sur $1, 2, 1, 2, \ldots$ : le terme $a_4 = 2$ ne divise pas $a_2 + a_3 = 3$.
- Le corrigé officiel termine autrement l'étape B4, mais son argument utilise un nombre $a_{n+m}$ qui diviserait $a_n + a_m$, ce que l'hypothèse ne donne pas : les trois indices doivent être régulièrement espacés.
- Le commentaire des correcteurs note que le problème était extrêmement difficile, et qu'un seul élève a obtenu des points. Il met en garde contre deux erreurs : si $a$ divise $b + c$, cela n'entraîne pas que $a$ divise $\mathrm{PGCD}(b, c)$. Et si $a$ divise $b - c$, on a bien $a \leqslant |b - c|$, mais seulement quand $b \neq c$.
