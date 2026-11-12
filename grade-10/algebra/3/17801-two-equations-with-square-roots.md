---
id: "17801"
title: "Deux équations avec des racines carrées"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [racine-carree, equation, factorisation, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, exercices d'échauffement"
  reference: "stage_junior_2014.pdf, chapitre « Exercices d'échauffement », exercice 6, p.13 ; solution p.16-17. La solution imprimée de b) oublie une solution négative (environ −1,739) : elle remplace √(x²(x² − 1)) par x√(x² − 1), ce qui est faux quand x < 0. Ici b) demande les solutions positives, et la solution négative est discutée à la fin."
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

a) Résoudre l'équation

$$x + \sqrt{(x+1)(x+2)} = 3 .$$

b) Trouver tous les nombres réels positifs $x$ tels que

$$x + \sqrt{(x-1)x} + \sqrt{x(x+1)} + \sqrt{(x+1)(x-1)} = 3 .$$

## Hints

1. Pour a), laissez la racine carrée seule d'un côté et élevez les deux membres au carré. Vérifiez ensuite que le nombre trouvé convient vraiment.
2. Pour b), cherchez d'abord pour quels $x$ positifs les trois racines carrées existent.
3. Posez $a = \sqrt{x}$, $b = \sqrt{x+1}$ et $c = \sqrt{x-1}$, et écrivez chaque terme du membre de gauche avec $a$, $b$ et $c$.
4. Le membre de gauche devient $a^2 + ac + ab + bc$. Factorisez-le. Que valent aussi $(a+b)(b-a)$ et $(a+c)(a-c)$ ?

## Solution

**a)** Supposons que $x$ soit une solution. Alors $\sqrt{(x+1)(x+2)} = 3 - x$. Une racine carrée est positive, donc $3 - x \geq 0$. En élevant au carré :

$$(x+1)(x+2) = (3-x)^2, \quad \text{soit} \quad x^2 + 3x + 2 = 9 - 6x + x^2 .$$

Les $x^2$ s'en vont et il reste $9x = 7$, donc $x = \frac{7}{9}$.

Élever au carré peut faire apparaître de fausses solutions, alors on vérifie. Pour $x = \frac{7}{9}$ :

$$(x+1)(x+2) = \frac{16}{9} \times \frac{25}{9} = \frac{400}{81}, \qquad \sqrt{\frac{400}{81}} = \frac{20}{9}, \qquad \frac{7}{9} + \frac{20}{9} = \frac{27}{9} = 3 .$$

L'équation a donc **une seule solution, $x = \frac{7}{9}$**.

**b)** *Où les racines existent.* Pour $x \geq 0$, la racine $\sqrt{(x+1)(x-1)} = \sqrt{x^2 - 1}$ n'existe que si $x^2 \geq 1$, c'est-à-dire $x \geq 1$. Pour $x \geq 1$, les trois nombres sous les racines sont bien positifs. On cherche donc les solutions $x \geq 1$.

*Trois nouvelles lettres.* Pour $x \geq 1$, posons

$$a = \sqrt{x}, \qquad b = \sqrt{x+1}, \qquad c = \sqrt{x-1} .$$

Ce sont des nombres positifs. Pour deux nombres positifs $p$ et $q$, on a $\sqrt{pq} = \sqrt{p}\,\sqrt{q}$ : le produit $\sqrt{p}\,\sqrt{q}$ est positif et son carré vaut $pq$. Ainsi

$$x = a^2, \qquad \sqrt{(x-1)x} = ac, \qquad \sqrt{x(x+1)} = ab, \qquad \sqrt{(x+1)(x-1)} = bc ,$$

et l'équation devient

$$a^2 + ac + ab + bc = 3, \quad \text{c'est-à-dire} \quad (a+b)(a+c) = 3 .$$

*Deux autres produits connus.* Avec l'identité $(p+q)(p-q) = p^2 - q^2$ :

$$(a+b)(b-a) = b^2 - a^2 = (x+1) - x = 1, \qquad (a+c)(a-c) = a^2 - c^2 = x - (x-1) = 1 .$$

Posons $u = a + b$ et $v = a + c$. Ils sont strictement positifs (car $b \geq 1$ et $a \geq 1$), donc on peut diviser :

$$b - a = \frac{1}{u}, \qquad a - c = \frac{1}{v} .$$

*Deux façons d'écrire $a$.* De $a + b = u$ et $b - a = \frac{1}{u}$, en retranchant, on tire $2a = u - \frac{1}{u}$. De $a + c = v$ et $a - c = \frac{1}{v}$, en ajoutant, on tire $2a = v + \frac{1}{v}$. Donc

$$u - \frac{1}{u} = v + \frac{1}{v} .$$

*On utilise l'équation.* Elle dit que $uv = 3$, donc $v = \frac{3}{u}$ et $\frac{1}{v} = \frac{u}{3}$. En remplaçant :

$$u - \frac{1}{u} = \frac{3}{u} + \frac{u}{3}, \quad \text{donc} \quad \frac{2u}{3} = \frac{4}{u}, \quad \text{donc} \quad u^2 = 6 .$$

Comme $u > 0$, on a $u = \sqrt{6}$, puis

$$2a = \sqrt{6} - \frac{1}{\sqrt{6}} = \frac{6 - 1}{\sqrt{6}} = \frac{5}{\sqrt{6}}, \qquad x = a^2 = \frac{25}{4 \times 6} = \frac{25}{24} .$$

*Vérification.* Pour $x = \frac{25}{24}$, on a $x - 1 = \frac{1}{24}$ et $x + 1 = \frac{49}{24}$, donc

$$\sqrt{(x-1)x} = \sqrt{\frac{25}{576}} = \frac{5}{24}, \qquad \sqrt{x(x+1)} = \sqrt{\frac{1225}{576}} = \frac{35}{24}, \qquad \sqrt{(x+1)(x-1)} = \sqrt{\frac{49}{576}} = \frac{7}{24} .$$

La somme vaut $\frac{25 + 5 + 35 + 7}{24} = \frac{72}{24} = 3$. Le nombre convient.

**Conclusion : la seule solution positive de b) est $x = \frac{25}{24}$.**

## Going further

Pour $x \leq -1$, les trois racines carrées existent aussi, et l'équation b) a une solution négative, environ −1,739. On peut montrer qu'il n'y en a qu'une, mais elle n'a pas d'écriture simple : avec $t = -x$, elle est solution de l'équation $4t^4 + 12t^3 - 4t^2 - 36t - 25 = 0$.

Attention au piège : pour $x$ négatif, $\sqrt{x^2(x^2 - 1)}$ vaut $-x\sqrt{x^2 - 1}$ et non $x\sqrt{x^2 - 1}$, car une racine carrée est toujours positive. Le calcul fait pour $x \geq 1$ ne s'applique donc pas aux $x$ négatifs.
