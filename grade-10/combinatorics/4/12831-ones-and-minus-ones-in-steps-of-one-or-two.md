---
id: "12831"
title: "Des 1 et des −1, en avançant d'un ou deux pas"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [suites, construction, majoration, principe-des-tiroirs, blocs]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de mai 2023"
  reference: "2023-09_Enonce-Test-5.pdf, test senior, exercice 5 ; corrigé 2023-09_Corrige-Test-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/09/Enonce-Test-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2023-09_Enonce-Test-5.pdf"
---

## Statement

Une **suite olympique** est une suite $s_1, s_2, \ldots, s_{2023}$ dont chacun des $2023$ termes vaut $1$ ou $-1$.

Une **suite peu croissante** est une suite d'entiers $t_1, t_2, \ldots, t_n$ (avec $n \geq 1$) telle que $1 \leq t_1 < t_2 < \cdots < t_n \leq 2023$, et dont chacun des écarts $t_{i+1} - t_i$ vaut $1$ ou $2$.

Trouver le plus grand entier $C$ ayant la propriété suivante : pour toute suite olympique $s_1, \ldots, s_{2023}$, il existe une suite peu croissante $t_1, \ldots, t_n$ telle que

$$\left| s_{t_1} + s_{t_2} + \cdots + s_{t_n} \right| \geq C.$$

Autrement dit, on parcourt la suite olympique en avançant à chaque fois d'une ou de deux places, on additionne les termes sur lesquels on s'arrête, et on veut une somme aussi grande que possible en valeur absolue.

## Hints

1. Essayez avec des suites plus courtes, de $7$ ou $11$ termes. Quelle suite semble la plus défavorable ?
2. Regardez la suite $1, 1, -1, -1, 1, 1, -1, -1, \ldots$ Découpez-la en blocs de deux termes égaux. En avançant d'un ou deux pas, peut-on sauter un bloc entier ?
3. Pour une suite olympique quelconque, l'un des deux nombres $1$ et $-1$ apparaît au moins $1012$ fois. Prenez tous ses termes, et le moins possible des autres pour passer de l'un au suivant.

## Solution

La réponse : **$C = 507$.**

Il faut montrer deux choses : que l'on peut toujours atteindre $507$, et qu'il existe une suite olympique pour laquelle on ne peut pas faire mieux.

### Partie 1 : on peut toujours atteindre 507

Soit $s_1, \ldots, s_{2023}$ une suite olympique. Comme $2023$ est impair, l'un des deux nombres $1$ et $-1$ apparaît au moins $1012$ fois. Quitte à changer tous les signes, ce qui ne change pas les valeurs absolues des sommes, on peut supposer que $1$ apparaît $m \geq 1012$ fois.

Notons $p_1 < p_2 < \cdots < p_m$ les places des termes égaux à $1$. Entre deux places consécutives $p$ et $p'$, il y a $g = p' - p - 1$ termes, tous égaux à $-1$ (éventuellement aucun). On construit une suite peu croissante ainsi :

- on prend toutes les places $p_1, \ldots, p_m$ ;
- entre deux places consécutives $p$ et $p'$, on prend en plus les places $p + 2$, $p + 4$, ..., $p + 2\lfloor g/2 \rfloor$, c'est-à-dire $\lfloor g/2 \rfloor$ places.

Vérifions les écarts. De $p$ à $p + 2$, et ainsi de suite, l'écart vaut $2$. Le dernier écart, de $p + 2\lfloor g/2 \rfloor$ à $p' = p + g + 1$, vaut $g + 1 - 2\lfloor g/2 \rfloor$, c'est-à-dire $1$ si $g$ est pair et $2$ si $g$ est impair. C'est donc bien une suite peu croissante.

Dans la somme, il y a $m$ termes égaux à $1$. Les termes égaux à $-1$ sont au nombre de $\sum \lfloor g/2 \rfloor \leq \frac{1}{2}\sum g$, où les sommes portent sur les intervalles entre deux $1$ consécutifs. Ces intervalles contiennent au plus $2023 - m$ termes en tout, donc on a pris au plus $\frac{2023 - m}{2}$ termes égaux à $-1$. Ainsi

$$s_{t_1} + \cdots + s_{t_n} \geq m - \frac{2023 - m}{2} = \frac{3m - 2023}{2} \geq \frac{3 \times 1012 - 2023}{2} = \frac{1013}{2} = \text{506,5}.$$

La somme est un entier, donc elle vaut au moins $507$. **Toute suite olympique permet d'atteindre $507$.**

### Partie 2 : une suite pour laquelle on ne dépasse jamais 507

Prenons la suite olympique

$$1, \ 1, \ -1, \ -1, \ 1, \ 1, \ -1, \ -1, \ \ldots$$

où $s_i = 1$ si $i$ a pour reste $1$ ou $2$ dans la division par $4$, et $s_i = -1$ sinon. On la découpe en **blocs** :

$$B_1 = \{1, 2\}, \quad B_2 = \{3, 4\}, \quad \ldots, \quad B_{1011} = \{2021, 2022\}, \quad B_{1012} = \{2023\}.$$

Sur chaque bloc, la suite est constante, et les signes des blocs alternent : $B_1$ est un bloc de $1$, $B_2$ un bloc de $-1$, $B_3$ un bloc de $1$, etc.

Soit $t_1, \ldots, t_n$ une suite peu croissante. Notons $B_u$ le bloc qui contient $t_1$, $B_w$ celui qui contient $t_n$, et $v = w - u + 1 \leq 1012$ le nombre de blocs de $B_u$ à $B_w$.

**Chacun des blocs $B_u, B_{u+1}, \ldots, B_w$ contient au moins un des $t_i$.** C'est vrai pour $B_u$ et $B_w$. Pour un bloc intermédiaire $\{2j - 1, 2j\}$, s'il ne contenait aucun $t_i$, il y aurait deux termes consécutifs $t_i \leq 2j - 2$ et $t_{i+1} \geq 2j + 1$, d'écart au moins $3$ : c'est impossible.

Parmi les $v$ blocs consécutifs $B_u, \ldots, B_w$, dont les signes alternent, notons $a$ le nombre de blocs de $1$ et $b = v - a$ le nombre de blocs de $-1$. Comme les signes alternent, $a \leq \frac{v+1}{2}$. Chaque bloc de $1$ apporte au plus deux termes égaux à $1$, chaque bloc de $-1$ apporte au moins un terme égal à $-1$. Donc

$$s_{t_1} + \cdots + s_{t_n} \leq 2a - b = 3a - v \leq \frac{3(v+1)}{2} - v = \frac{v + 3}{2} \leq \frac{1015}{2} = \text{507,5}.$$

La somme est un entier, donc elle vaut au plus $507$. De la même façon, en échangeant les rôles de $1$ et $-1$ (un bloc de $-1$ apporte au plus deux termes, un bloc de $1$ au moins un), la somme vaut au moins $-507$. **Pour cette suite olympique, toute somme vérifie $|s_{t_1} + \cdots + s_{t_n}| \leq 507$**, donc aucun entier $C \geq 508$ ne convient.

### Conclusion

D'après la partie 1, $C = 507$ convient ; d'après la partie 2, aucun entier plus grand ne convient. **Le plus grand entier cherché est $C = 507$.**

## Going further

1. Pour la suite $1, 1, -1, -1, \ldots$ de la partie 2, construisez une suite peu croissante dont la somme vaut exactement $507$.
2. Que devient la réponse pour des suites de $2022$ termes au lieu de $2023$ ?
