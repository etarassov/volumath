---
id: "7012"
title: "Une cellule se divise en 42 ou en 44"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [equation diophantienne, encadrement, parite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2011, groupe des débutants"
  reference: "stage_junior_2011.pdf, « Arithmétique », TD (Antoine Taveneaux), exercice 15 (le corrigé imprimé écrit 45,8 au lieu de 48,5 pour 1992/41, sans conséquence sur la réponse)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2011.pdf"
---

## Statement

Une cellule peut se diviser de deux façons : soit elle se transforme en $42$ petites cellules,
soit elle se transforme en $44$ petites cellules. Dans les deux cas, la cellule de départ
disparaît.

On part d'une seule cellule. Après un certain nombre de divisions, on compte exactement
$1993$ cellules.

Combien de divisions ont eu lieu ?

## Hints

1. Chaque division fait disparaître une cellule et en fait apparaître $42$ ou $44$. De combien
   la population augmente-t-elle à chaque division ?
2. Note $a$ le nombre de divisions du premier type et $b$ celui du second. Écris l'équation
   que vérifient $a$ et $b$.
3. Tu cherches $a + b$, pas $a$ et $b$ séparément. Encadre $a+b$ en remarquant que
   $41(a+b) \leq 41a + 43b \leq 43(a+b)$.
4. L'encadrement laisse deux valeurs possibles. Un argument de parité élimine l'une des deux.

## Solution

**L'équation.**

Une division du premier type remplace $1$ cellule par $42$ : la population augmente de $41$.
Une division du second type remplace $1$ cellule par $44$ : la population augmente de $43$.

Notons $a$ le nombre de divisions en $42$ et $b$ le nombre de divisions en $44$. On part de
$1$ cellule et on arrive à $1993$, donc la population a augmenté de $1992$ :
$$41a + 43b = 1992 .$$

La question posée est : que vaut $a + b$ ?

**L'encadrement.**

Comme $41 \leq 41$ et $41 \leq 43$, on a
$$41(a+b) = 41a + 41b \leq 41a + 43b = 1992,$$
d'où
$$a + b \leq \frac{1992}{41} = \text{48,58}\ldots \qquad \text{donc} \qquad a + b \leq 48 .$$

De même, $43a + 43b \geq 41a + 43b = 1992$, d'où
$$a + b \geq \frac{1992}{43} = \text{46,32}\ldots \qquad \text{donc} \qquad a + b \geq 47 .$$

Il reste donc deux possibilités : $a + b = 47$ ou $a + b = 48$.

**La parité tranche.**

Réécrivons l'équation :
$$41a + 43b = 41(a+b) + 2b = 1992 .$$
Donc
$$41(a+b) = 1992 - 2b .$$
Le membre de droite est pair. Comme $41$ est impair, $a+b$ doit être **pair**.

Entre $47$ et $48$, seul $48$ est pair.

**Vérification.**

Si $a + b = 48$, alors $41 \times 48 = 1968$ et $2b = 1992 - 1968 = 24$, donc $b = 12$ et
$a = 36$. Vérifions :
$$41 \times 36 + 43 \times 12 = 1476 + 516 = 1992 . \checkmark$$
Et la population finale vaut bien $1 + 1992 = 1993$.

**Conclusion.** Il y a eu exactement $\boxed{48}$ divisions : $36$ du premier type et $12$ du
second.

## Going further

L'exercice illustre une idée utile : quand une équation $\alpha a + \beta b = N$ a plusieurs
solutions, la **somme** $a+b$ peut être beaucoup plus contrainte que $a$ et $b$ pris
séparément, parce qu'elle est coincée entre $N/\beta$ et $N/\alpha$.

Ici cet encadrement laissait deux valeurs, et la parité a suffi. Que se passe-t-il si l'on
vise $1994$ cellules au lieu de $1993$ ?
