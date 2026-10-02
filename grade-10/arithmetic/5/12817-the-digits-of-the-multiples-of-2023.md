---
id: "12817"
title: "Les chiffres des multiples de 2023"
grade: 10
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [chiffres, ecriture-decimale, tiroirs, restes, bijection, denombrement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de février 2023"
  reference: "2023-09_Enonce-Test-3.pdf, test senior, exercice 7 ; corrigé 2023-09_Corrige-Test-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/09/Enonce-Test-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2023-09_Enonce-Test-3.pdf"
---

## Statement

Soit $n \geq 1$ un entier. Morgane écrit au tableau, en base $10$, les nombres

$$2023, \quad 2023 \times 2, \quad \ldots, \quad 2023 \times n.$$

Pour chaque chiffre $c$ compris entre $1$ et $9$, elle note $d_c(n)$ le nombre de fois que le chiffre $c$ apparaît au tableau.

Par exemple, pour $n = 3$, elle écrit $2023$, $4046$ et $6069$. Alors $d_1(3) = d_5(3) = d_7(3) = d_8(3) = 0$, $d_3(3) = d_9(3) = 1$, $d_2(3) = d_4(3) = 2$ et $d_6(3) = 3$ : ces neuf nombres prennent exactement quatre valeurs différentes.

Démontrer qu'il existe une infinité d'entiers $n \geq 1$ pour lesquels les neuf nombres $d_1(n), d_2(n), \ldots, d_9(n)$ prennent exactement deux valeurs différentes.

## Hints

1. Ce serait plus simple si le tableau contenait **tous** les multiples de $2023$ qui ont au plus $k$ chiffres. Cela arrive quand $2023 \times n = 99\ldots9$. Montrez qu'il existe des entiers $k$ tels que $2023$ divise $10^k - 1$ : regardez les restes de $10, 10^2, \ldots, 10^{2024}$ dans la division par $2023$.
2. Écrivez tous ces multiples avec exactement $k$ chiffres, en ajoutant des zéros à gauche. Que se passe-t-il si l'on fait « tourner » les chiffres d'un tel nombre, en envoyant le premier chiffre à la fin ? Le résultat est-il encore un multiple de $2023$ ?
3. Déduisez-en que chaque chiffre apparaît autant de fois en position des unités qu'en n'importe quelle autre position.
4. Il ne reste qu'à compter les chiffres des unités. Le chiffre des unités de $2023 \times m$ est celui de $3 \times m$.

## Solution

### Étape 1 : des nombres 99…9 multiples de 2023

Les $2024$ nombres $10^1, 10^2, \ldots, 10^{2024}$ n'ont que $2023$ restes possibles dans la division par $2023$. D'après le principe des tiroirs, deux d'entre eux, $10^i$ et $10^j$ avec $i < j$, ont le même reste. Leur différence

$$10^j - 10^i = 10^i \times \left(10^{t} - 1\right), \qquad \text{avec } t = j - i \geq 1,$$

est donc un multiple de $2023 = 7 \times 17^2$. Comme $10^i = 2^i \times 5^i$ ne contient pas les facteurs premiers $7$ et $17$, ceux-ci viennent de $10^t - 1$ dans la décomposition en facteurs premiers : **$2023$ divise $10^t - 1$**.

Ensuite, pour tout entier $s \geq 1$, posons $k = st$. On a

$$10^{k} - 1 = \left(10^t - 1\right)\left(10^{t(s-1)} + 10^{t(s-2)} + \cdots + 10^t + 1\right),$$

donc $2023$ divise aussi $10^k - 1$. On obtient ainsi une infinité d'entiers $k$ tels que $2023$ divise $10^k - 1$.

Fixons un tel $k$ et posons $n = \frac{10^k - 1}{2023}$. On va montrer que ce $n$ convient. Comme des valeurs différentes de $k$ donnent des valeurs différentes de $n$, cela donnera une infinité d'entiers $n$.

### Étape 2 : faire tourner les chiffres

Avec ce choix de $n$, le tableau contient exactement les multiples de $2023$ compris entre $1$ et $2023 \times n = 10^k - 1 = \underbrace{99\ldots9}_{k}$. Ajoutons-y le nombre $0$ (cela n'ajoute que des zéros, qu'on ne compte pas), et écrivons chacun de ces nombres avec exactement $k$ chiffres, en complétant à gauche par des zéros. Notons $E$ cet ensemble de $n + 1$ nombres.

Soit $x$ un entier entre $0$ et $10^k - 1$, de chiffres $a_{k-1} a_{k-2} \ldots a_1 a_0$. On note $\rho(x)$ le nombre obtenu en envoyant le premier chiffre à la fin : $\rho(x)$ s'écrit $a_{k-2} \ldots a_1 a_0 a_{k-1}$. Alors

$$\rho(x) = 10\,x - a_{k-1} \times 10^k + a_{k-1} = 10\,x - a_{k-1}\left(10^k - 1\right).$$

Si $x$ est un multiple de $2023$, alors $\rho(x)$ aussi, car $2023$ divise $10^k - 1$. Ainsi $\rho$ envoie $E$ dans $E$. De plus, deux nombres différents donnent deux résultats différents (on retrouve $x$ en remettant le dernier chiffre de $\rho(x)$ au début). Comme $E$ est fini, $\rho$ fait correspondre les éléments de $E$ deux à deux : chaque élément de $E$ est le $\rho(x)$ d'exactement un $x$ de $E$.

### Étape 3 : toutes les positions se valent

Numérotons les positions de $0$ (les unités) à $k - 1$. Pour un chiffre $c$, notons $N_j(c)$ le nombre d'éléments de $E$ dont le chiffre en position $j$ est $c$.

Le chiffre de $x$ en position $j$ devient le chiffre de $\rho(x)$ en position $j + 1$ (et celui en position $k - 1$ passe en position $0$). Comme $\rho$ fait correspondre les éléments de $E$ deux à deux, on a $N_{j+1}(c) = N_j(c)$ pour $0 \leq j \leq k - 2$, et $N_0(c) = N_{k-1}(c)$. Toutes les positions ont donc le même nombre de chiffres $c$, et

$$d_c(n) = k \times N_0(c).$$

### Étape 4 : compter les chiffres des unités

Les éléments de $E$ sont les nombres $2023 \times m$ pour $m = 0, 1, \ldots, n$. Le chiffre des unités de $2023 \times m$ est celui de $3 \times m$, qui ne dépend que du chiffre des unités de $m$ :

| chiffre des unités de $m$ | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 |
|---|---|---|---|---|---|---|---|---|---|---|
| chiffre des unités de $3m$ | 0 | 3 | 6 | 9 | 2 | 5 | 8 | 1 | 4 | 7 |

Chaque chiffre apparaît exactement une fois sur la deuxième ligne.

Le nombre $2023 \times n = 10^k - 1$ se termine par $9$, donc $3n$ aussi, donc $n$ se termine par $3$ d'après le tableau. Écrivons $n = 10q + 3$. Parmi les entiers $m = 0, 1, \ldots, 10q + 3$, ceux qui se terminent par $0$, $1$, $2$ ou $3$ sont au nombre de $q + 1$ chacun, et ceux qui se terminent par $4, 5, \ldots, 9$ sont au nombre de $q$ chacun. D'après le tableau, les fins $1$, $2$, $3$ donnent les chiffres $3$, $6$, $9$. Donc

- $N_0(c) = q + 1$ pour $c = 3, 6, 9$ ;
- $N_0(c) = q$ pour $c = 1, 2, 4, 5, 7, 8$.

### Conclusion

Pour $n = \frac{10^k - 1}{2023}$, on a $d_c(n) = k(q + 1)$ pour $c \in \{3, 6, 9\}$ et $d_c(n) = kq$ pour les six autres chiffres. **Les neuf nombres prennent exactement deux valeurs**, et cela pour une infinité d'entiers $n$.

## Going further

1. Refaites la preuve avec $7$ à la place de $2023$ : vérifiez que $7$ divise $10^6 - 1$, et calculez les deux valeurs prises par les $d_c$ quand on écrit $7, 14, \ldots, 7 \times 142857$. Quels chiffres apparaissent le moins souvent ?
2. Pour $2023$, le plus petit $k$ qui convient est $k = 816$. Le premier $n$ obtenu par cette méthode a donc $813$ chiffres.
