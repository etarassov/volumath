---
id: "12886"
title: "Anna, Baptiste et deux polynômes du second degré"
grade: 11
theme: logic-reasoning
difficulty: 5
duration_min: 60
tags: [jeu, strategie-gagnante, second-degre, polynome, racines, viete]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 19 et 20 février 2025"
  reference: "2025-10_Sujet-Test-3-2024-2025.pdf, test EGMO, exercice 10 ; corrigé 2025-10_Corrige-Test-3-2024-2025.pdf (même stratégie que le corrigé ; le théorème des valeurs intermédiaires est remplacé par le signe du trinôme)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-3-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-3-2024-2025.pdf"
---

## Statement

Anna et Baptiste jouent au jeu suivant. Anna construit un polynôme $P_A(X) = a_0 + a_1 X + a_2 X^2$, et Baptiste construit un polynôme $P_B(X) = b_0 + b_1 X + b_2 X^2$.

Ils jouent chacun à leur tour, en commençant par Anna, et chacun joue trois coups. À chaque coup, le joueur choisit l'un de ses trois coefficients qu'il n'a pas encore fixé, et lui donne une valeur réelle **strictement positive** de son choix. Chaque joueur voit les coups de l'autre.

À la fin de la partie, Baptiste gagne dans chacun des deux cas suivants :

- le polynôme $P_A$ a au plus une racine réelle ;
- il existe quatre réels $c_1 < c_2 < c_3 < c_4$ tels que $P_A(c_1) = P_A(c_2) = P_B(c_3) = P_B(c_4) = 0$, autrement dit $P_A$ et $P_B$ ont chacun deux racines réelles distinctes, et les deux racines de $P_A$ sont plus petites que les deux racines de $P_B$.

Dans tous les autres cas, Anna gagne.

Lequel des deux joueurs peut gagner à coup sûr, quels que soient les coups de l'autre ?

## Hints

1. Montrez qu'une racine réelle d'un polynôme dont tous les coefficients sont strictement positifs est strictement négative.
2. Supposez qu'Anna garde $a_1$ pour son dernier coup. Si $r < 0$ est un réel donné, comment peut-elle choisir $a_1$ pour que $P_A(r) < 0$ ? Que peut-on dire alors des racines de $P_A$ ?
3. Après les deux premiers coups de Baptiste, cherchez un réel $r < 0$ tel que la plus petite racine de $P_B$ soit toujours inférieure ou égale à $r$, quel que soit son dernier coup. Distinguez trois cas selon les deux coefficients qu'il a déjà choisis, et utilisez la somme et le produit des racines.

## Solution

La réponse : **Anna peut gagner à coup sûr.**

### Deux remarques sur le second degré

**Les racines sont négatives.** Si les coefficients $p_0$, $p_1$, $p_2$ sont strictement positifs et si $x \geq 0$, alors $p_0 + p_1 x + p_2 x^2 \geq p_0 > 0$. Une racine réelle d'un tel polynôme est donc strictement négative.

**Deux rappels de première.** Soit $P(X) = pX^2 + qX + s$ avec $p > 0$.

- Si $P$ a deux racines réelles $x$ et $y$, alors $x + y = -q/p$ et $xy = s/p$.
- S'il existe un réel $r$ tel que $P(r) < 0$, alors $P$ a deux racines réelles distinctes et $r$ est strictement entre elles. En effet, un trinôme dont le coefficient de $X^2$ est positif est positif ou nul partout s'il a au plus une racine, et il n'est strictement négatif qu'entre ses deux racines s'il en a deux.

### La stratégie d'Anna

Anna utilise ses deux premiers coups pour fixer $a_2$ et $a_0$, avec des valeurs quelconques (par exemple $a_2 = a_0 = 1$). Elle garde $a_1$ pour son troisième coup. À ce moment, Baptiste a joué deux coups, et il lui reste un coup à jouer.

### Étape 1 : un seuil pour la plus petite racine du polynôme de Baptiste

Après les deux premiers coups de Baptiste, Anna calcule un réel $r < 0$ qui ne dépend que des deux coefficients déjà choisis par Baptiste, et qui a la propriété suivante : **quel que soit le dernier coup de Baptiste, si $P_B$ a deux racines réelles $x \leq y$, alors $x \leq r$.** D'après la première remarque, on a $x \leq y < 0$. Il y a trois cas.

**Baptiste a fixé $b_1$ et $b_2$.** On prend $r = -b_1/(2b_2)$. On a $x + y = -b_1/b_2$, et la plus petite des deux racines est inférieure ou égale à leur moyenne : $x \leq (x + y)/2 = r$.

**Baptiste a fixé $b_0$ et $b_2$.** On prend $r = -\sqrt{b_0/b_2}$. On a $xy = b_0/b_2$. Comme $x \leq y < 0$, on a $|x| \geq |y|$, donc

$$x^2 = |x| \times |x| \geq |x| \times |y| = xy = \frac{b_0}{b_2}.$$

Donc $|x| \geq \sqrt{b_0/b_2}$, c'est-à-dire $x \leq r$, puisque $x$ est négatif.

**Baptiste a fixé $b_0$ et $b_1$.** On prend $r = -2b_0/b_1$. On a

$$\frac{1}{x} + \frac{1}{y} = \frac{x + y}{xy} = \frac{-b_1/b_2}{b_0/b_2} = -\frac{b_1}{b_0}.$$

D'autre part, $1/x - 1/y = (y - x)/(xy) \geq 0$, car $xy > 0$. Donc

$$\frac{2}{x} \geq \frac{1}{x} + \frac{1}{y} = -\frac{b_1}{b_0}, \qquad \text{c'est-à-dire} \qquad \frac{1}{x} \geq -\frac{b_1}{2b_0} = \frac{1}{r}.$$

En multipliant par le nombre positif $xr$, on obtient $r \geq x$.

### Étape 2 : le dernier coup d'Anna

Anna choisit maintenant

$$a_1 = \frac{a_2 r^2 + a_0}{-r} + 1,$$

qui est strictement positif puisque $r < 0$. Alors $a_1 \times (-r) > a_2 r^2 + a_0$, c'est-à-dire

$$P_A(r) = a_2 r^2 + a_1 r + a_0 < 0.$$

D'après le deuxième rappel, $P_A$ a deux racines réelles distinctes $c_1 < c_2$, et $c_1 < r < c_2$. La première façon de gagner de Baptiste est donc exclue.

### Étape 3 : Baptiste ne peut plus gagner

Baptiste joue son dernier coup. Si $P_B$ n'a pas deux racines réelles distinctes, sa deuxième façon de gagner est exclue. Sinon, notons $x < y$ ses racines. D'après l'étape 1, $x \leq r < c_2$. La racine $x$ de $P_B$ n'est donc pas plus grande que la racine $c_2$ de $P_A$, et la deuxième façon de gagner est aussi exclue.

### Conclusion

**Avec cette stratégie, Anna gagne quels que soient les coups de Baptiste.**

## Going further

1. Montrez qu'Anna peut aussi gagner à coup sûr, et plus facilement, si c'est Baptiste qui commence.
2. Dans le troisième cas, le nombre $r$ vaut $2/(1/x + 1/y)$ : c'est la moyenne harmonique des racines. Vérifiez la propriété de l'étape 1 sur l'exemple $b_0 = 1$, $b_1 = 4$, puis $b_2 = 3$ : quelles sont les racines de $P_B$, et que vaut $r$ ?
