---
id: "8946"
title: "Une suite prise entre deux racines carrées"
grade: 12
theme: functions-analysis
difficulty: 4
duration_min: 40
tags: [suites, recurrence, encadrement, racine-carree, inegalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2026, Groupe C"
  reference: "Poly-Valbonne-2026.pdf, chapitre V « Groupe C », « Combinatoire : Récurrence » (Félix), exercice 5"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

On définit la suite $(v_n)_{n \geqslant 1}$ par

$$v_1 = 1 \qquad \text{et} \qquad v_{n+1} = 1 + \dfrac{n}{v_n} \ \text{ pour tout entier } n \geqslant 1.$$

Démontrer que pour tout entier $n \geqslant 1$,

$$\sqrt{n} \leqslant v_n \leqslant 1 + \sqrt{n}.$$

## Hints

1. Calculez $v_1$, $v_2$, $v_3$, $v_4$, $v_5$ et comparez à $\sqrt{n}$ et $1+\sqrt{n}$. Cela vous dira dans quel sens l'encadrement est serré.
2. Récurrence : supposez $\sqrt{n} \leqslant v_n \leqslant 1 + \sqrt{n}$ et cherchez à encadrer $v_{n+1} = 1 + \frac{n}{v_n}$.
3. Attention au sens des inégalités : la fonction $t \mapsto \frac{n}{t}$ est **décroissante** sur les réels strictement positifs. Une borne supérieure sur $v_n$ donne donc une borne **inférieure** sur $\frac{n}{v_n}$.
4. La majoration est facile : $v_n \geqslant \sqrt{n}$ donne $\frac{n}{v_n} \leqslant \sqrt{n}$, et il reste à comparer $1+\sqrt{n}$ à $1+\sqrt{n+1}$.
5. Pour la minoration, posez $s = \sqrt{n}$ et ramenez tout à l'inégalité $\left(s^2+s+1\right)^2 \geqslant (1+s)^2\left(1+s^2\right)$. Développez les deux membres : la différence est très simple.

## Solution

### Préliminaire : la suite est bien définie et strictement positive

Montrons d'abord, par récurrence, que $v_n > 0$ pour tout $n \geqslant 1$, ce qui garantit au passage que la division dans la formule a un sens.

C'est vrai pour $n = 1$ puisque $v_1 = 1 > 0$. Et si $v_n > 0$, alors $\frac{n}{v_n} > 0$, donc $v_{n+1} = 1 + \frac{n}{v_n} > 1 > 0$.

### Les premiers termes

$$v_1 = 1, \qquad v_2 = 1 + \dfrac{1}{1} = 2, \qquad v_3 = 1 + \dfrac{2}{2} = 2, \qquad v_4 = 1 + \dfrac{3}{2} = \text{2,5}, \qquad v_5 = 1 + \dfrac{4}{\text{2,5}} = \text{2,6}.$$

On vérifie par exemple pour $n = 5$ : $\sqrt{5} \approx \text{2,236}$ et $1 + \sqrt{5} \approx \text{3,236}$, et $v_5 = \text{2,6}$ est bien entre les deux.

### La récurrence

Notons $Q(n)$ la propriété $\sqrt{n} \leqslant v_n \leqslant 1 + \sqrt{n}$.

**Initialisation.** Pour $n = 1$ : $\sqrt{1} = 1 \leqslant v_1 = 1 \leqslant 1 + \sqrt{1} = 2$. Donc $Q(1)$ est vraie.

**Hérédité.** Soit $n \geqslant 1$ tel que $Q(n)$ soit vraie. Montrons $Q(n+1)$.

*La majoration.* De $v_n \geqslant \sqrt{n}$ et de la décroissance de $t \mapsto \frac{n}{t}$ sur les réels strictement positifs, on tire

$$\dfrac{n}{v_n} \leqslant \dfrac{n}{\sqrt{n}} = \sqrt{n}, \qquad \text{donc} \qquad v_{n+1} = 1 + \dfrac{n}{v_n} \leqslant 1 + \sqrt{n} \leqslant 1 + \sqrt{n+1}.$$

*La minoration.* De $v_n \leqslant 1 + \sqrt{n}$, on tire de même

$$\dfrac{n}{v_n} \geqslant \dfrac{n}{1+\sqrt{n}}, \qquad \text{donc} \qquad v_{n+1} \geqslant 1 + \dfrac{n}{1+\sqrt{n}} = \dfrac{1 + \sqrt{n} + n}{1 + \sqrt{n}}.$$

Il reste à montrer que ce nombre est au moins $\sqrt{n+1}$. Posons $s = \sqrt{n}$, de sorte que $n = s^2$ et $s > 0$. L'inégalité à démontrer s'écrit

$$\dfrac{s^2 + s + 1}{1+s} \geqslant \sqrt{1+s^2}.$$

Les deux membres sont strictement positifs, donc on peut élever au carré et chasser le dénominateur : il suffit de montrer

$$\left(s^2+s+1\right)^2 \geqslant (1+s)^2\left(1+s^2\right).$$

Développons chaque membre :

$$\left(s^2+s+1\right)^2 = s^4 + 2s^3 + 3s^2 + 2s + 1,$$
$$(1+s)^2\left(1+s^2\right) = \left(1 + 2s + s^2\right)\left(1+s^2\right) = s^4 + 2s^3 + 2s^2 + 2s + 1.$$

La différence vaut donc

$$\left(s^2+s+1\right)^2 - (1+s)^2\left(1+s^2\right) = s^2 \geqslant 0.$$

L'inégalité est vraie, et par conséquent $v_{n+1} \geqslant \sqrt{n+1}$.

Les deux bornes sont établies, donc $Q(n+1)$ est vraie.

### Conclusion

$$\boxed{\sqrt{n} \leqslant v_n \leqslant 1 + \sqrt{n} \quad \text{pour tout entier } n \geqslant 1.}$$

*Le point de méthode.* Pour démontrer un encadrement par récurrence, il faut souvent transporter **les deux** bornes en même temps : ici la borne inférieure sur $v_n$ sert à obtenir la borne supérieure sur $v_{n+1}$, et réciproquement, parce que $v_n$ apparaît au dénominateur. Une récurrence qui n'aurait porté que sur la minoration n'aurait pas abouti.

## Going further

1. L'encadrement montre que $v_n$ est très proche de $\sqrt{n}$ quand $n$ est grand, puisque l'écart entre les deux bornes vaut $1$ alors que $\sqrt{n}$ devient énorme. Précisez : montrez que $\dfrac{v_n}{\sqrt{n}}$ tend vers $1$.
2. Calculez $v_n - \sqrt{n}$ pour $n = 10$, $100$ et $1000$ à la calculatrice. Vers quoi cet écart semble-t-il tendre ?
