---
id: "8945"
title: "Une formule d'addition pour Fibonacci"
grade: 11
theme: algebra
difficulty: 4
duration_min: 40
tags: [suite-de-fibonacci, recurrence, identite, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2026, Groupe C"
  reference: "Poly-Valbonne-2026.pdf, chapitre V « Groupe C », « Combinatoire : Récurrence » (Félix), exercice 3 et son bonus"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

La suite de Fibonacci $(F_n)_{n \geqslant 0}$ est définie par

$$F_0 = 0, \qquad F_1 = 1, \qquad F_{n+2} = F_n + F_{n+1} \ \text{ pour tout } n \geqslant 0.$$

Ses premiers termes sont donc $0$, $1$, $1$, $2$, $3$, $5$, $8$, $13$, $21$, ...

Démontrer que pour tous entiers naturels $a$ et $b$,

$$F_{a+b+1} = F_a F_b + F_{a+1} F_{b+1}.$$

## Hints

1. Testez la formule sur des petits cas, par exemple $a = 2$ et $b = 3$, pour vous convaincre qu'elle est vraie.
2. Fixez $a$ une fois pour toutes et raisonnez par récurrence sur $b$.
3. La relation de Fibonacci relie **trois** termes consécutifs. Une récurrence qui ne suppose la propriété que pour $b$ ne suffira donc pas : il faut la supposer pour $b$ **et** pour $b+1$, et il faut deux cas de départ.
4. Vérifiez donc séparément $b = 0$ et $b = 1$. Le cas $b = 0$ utilise $F_0 = 0$.
5. Pour l'hérédité, partez de $F_{a+b+3} = F_{a+b+1} + F_{a+b+2}$ et appliquez l'hypothèse aux deux morceaux.

## Solution

Fixons un entier naturel $a$ et démontrons par récurrence sur $b$ la propriété

$$P(b) : \quad F_{a+b+1} = F_a F_b + F_{a+1} F_{b+1}.$$

Comme la relation de Fibonacci fait intervenir deux termes précédents, nous utilisons une récurrence à deux crans : deux initialisations, et une hérédité qui va de $b$ et $b+1$ à $b+2$.

### Initialisation : $b = 0$ et $b = 1$

Pour $b = 0$, le membre de droite vaut

$$F_a F_0 + F_{a+1} F_1 = F_a \times 0 + F_{a+1} \times 1 = F_{a+1},$$

et le membre de gauche vaut $F_{a+0+1} = F_{a+1}$. Donc $P(0)$ est vraie.

Pour $b = 1$, le membre de droite vaut

$$F_a F_1 + F_{a+1} F_2 = F_a \times 1 + F_{a+1} \times 1 = F_a + F_{a+1} = F_{a+2},$$

par la relation de Fibonacci, et le membre de gauche vaut $F_{a+1+1} = F_{a+2}$. Donc $P(1)$ est vraie.

### Hérédité

Soit $b$ un entier naturel tel que $P(b)$ et $P(b+1)$ soient vraies. Montrons $P(b+2)$.

Le membre de gauche de $P(b+2)$ est $F_{a+b+3}$. La relation de Fibonacci donne

$$F_{a+b+3} = F_{a+b+1} + F_{a+b+2}.$$

Appliquons $P(b)$ au premier terme et $P(b+1)$ au second :

$$F_{a+b+1} = F_a F_b + F_{a+1} F_{b+1}, \qquad F_{a+b+2} = F_a F_{b+1} + F_{a+1} F_{b+2}.$$

En ajoutant et en regroupant selon $F_a$ et $F_{a+1}$ :

$$F_{a+b+3} = F_a \left(F_b + F_{b+1}\right) + F_{a+1}\left(F_{b+1} + F_{b+2}\right) = F_a F_{b+2} + F_{a+1} F_{b+3},$$

où l'on a utilisé deux fois la relation de Fibonacci. C'est exactement $P(b+2)$.

### Conclusion

Par récurrence, $P(b)$ est vraie pour tout entier naturel $b$, et ce pour tout $a$ fixé :

$$\boxed{F_{a+b+1} = F_a F_b + F_{a+1} F_{b+1} \quad \text{pour tous entiers naturels } a, b.}$$

### Une seconde démonstration, par dénombrement

Voici pourquoi la formule est vraie, et pas seulement qu'elle est vraie.

Vincent monte un escalier de $n$ marches, en franchissant une ou deux marches à chaque pas. Notons $c_n$ le nombre de façons de faire. On a $c_0 = 1$ (ne rien faire), $c_1 = 1$, et pour $n \geqslant 2$, en regardant le dernier pas, $c_n = c_{n-1} + c_{n-2}$. La suite $(c_n)$ vérifie donc la même relation que Fibonacci, avec $c_0 = 1 = F_1$ et $c_1 = 1 = F_2$ : on en déduit

$$c_n = F_{n+1} \quad \text{pour tout } n \geqslant 0.$$

Prenons maintenant $a \geqslant 1$ et $b \geqslant 1$, et comptons de deux façons les montées d'un escalier de $a + b$ marches.

- D'une part, il y en a $c_{a+b} = F_{a+b+1}$.
- D'autre part, séparons selon que Vincent **pose le pied sur la marche $a$** ou non.
  - **S'il la pose**, sa montée se coupe en deux morceaux indépendants : une montée de $a$ marches, puis une montée de $b$ marches. Cela fait $c_a \times c_b = F_{a+1} F_{b+1}$ possibilités.
  - **S'il ne la pose pas**, c'est qu'un pas double l'a enjambée, donc il est allé de la marche $a-1$ à la marche $a+1$. Sa montée se décompose alors en : une montée de $a-1$ marches, ce pas double, puis une montée des $b-1$ marches restantes. Cela fait $c_{a-1} \times c_{b-1} = F_a F_b$ possibilités.

Les deux comptes portent sur le même ensemble, donc

$$F_{a+b+1} = F_{a+1}F_{b+1} + F_a F_b.$$

(Les cas $a = 0$ ou $b = 0$ se vérifient directement, comme dans l'initialisation ci-dessus.)

## Going further

1. Prenez $b = a$ dans la formule : vous obtenez $F_{2a+1} = F_a^2 + F_{a+1}^2$. Vérifiez-la sur $a = 4$, puis servez-vous en pour calculer $F_{21}$ à partir de $F_{10}$ et $F_{11}$.
2. Démontrez, par la même méthode, que $F_n$ est pair si et seulement si $3$ divise $n$. (Regardez la suite des restes de $F_n$ modulo $2$ : elle est périodique.)
