---
id: "8473"
title: "Une équation fonctionnelle réglée par deux substitutions"
grade: 12
theme: algebra
difficulty: 5
duration_min: 40
tags: [equation fonctionnelle, substitution, analyse synthese, parite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, entraînement de Groupe C"
  reference: "Poly-2021-Valbonne.pdf, Groupe C, entraînement de fin de parcours, exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Déterminer toutes les fonctions $f$ définies sur $\mathbb{R}$ et à valeurs dans $\mathbb{R}$ telles que, pour tous nombres réels $x$ et $y$,

$$f\left(x^2 + xy + f\left(y^2\right)\right) = x\,f(y) + x^2 + f\left(y^2\right).$$

## Hints

1. Commence par la substitution la plus simple : $x = 0$. Qu'obtiens-tu ?
2. Cherche maintenant une valeur de $x$ qui fasse disparaître les deux premiers termes de l'argument de gauche, c'est-à-dire qui annule $x^2 + xy$. Il y en a une autre que $0$.
3. Avec $x = -y$, le membre de gauche redevient $f\left(f\left(y^2\right)\right)$, que tu connais déjà. Compare les deux expressions.
4. Tu obtiens $f(y) = y$ pour tout $y \neq 0$. Il reste $f(0)$ : prends $y = 0$, puis remplace $x$ par $-x$ et soustrais.
5. N'oublie pas la synthèse : vérifier que la fonction trouvée est bien solution.

## Solution

La seule solution est la fonction identité, $f(x) = x$.

### Analyse

Supposons que $f$ soit une solution, et notons $(E)$ l'équation

$$f\left(x^2 + xy + f\left(y^2\right)\right) = x\,f(y) + x^2 + f\left(y^2\right).$$

**Étape 1. La substitution $x = 0$**

En posant $x = 0$ dans $(E)$, tous les termes contenant $x$ disparaissent :

$$f\left(f\left(y^2\right)\right) = f\left(y^2\right) \qquad \text{pour tout réel } y. \qquad (1)$$

**Étape 2. La substitution $x = -y$**

L'argument du membre de gauche est $x^2 + xy + f\left(y^2\right)$. Avec $x = -y$ :

$$x^2 + xy = y^2 - y^2 = 0,$$

donc l'argument vaut simplement $f\left(y^2\right)$, et $(E)$ devient

$$f\left(f\left(y^2\right)\right) = -y\,f(y) + y^2 + f\left(y^2\right). \qquad (2)$$

**Étape 3. Comparer**

Les membres de gauche de $(1)$ et de $(2)$ sont identiques. Donc leurs membres de droite le sont aussi :

$$f\left(y^2\right) = -y\,f(y) + y^2 + f\left(y^2\right).$$

En simplifiant par $f\left(y^2\right)$ :

$$0 = -y\,f(y) + y^2, \qquad \text{c'est-à-dire} \qquad y\,f(y) = y^2.$$

Pour $y \neq 0$, on divise par $y$ :

$$f(y) = y \qquad \text{pour tout } y \neq 0.$$

**Étape 4. La valeur en 0**

Il reste à déterminer $f(0)$, que l'étape précédente laisse libre. Posons $y = 0$ dans $(E)$ :

$$f\left(x^2 + f(0)\right) = x\,f(0) + x^2 + f(0). \qquad (3)$$

Remplaçons maintenant $x$ par $-x$ dans $(3)$. Le membre de gauche ne change pas, puisque $(-x)^2 = x^2$ :

$$f\left(x^2 + f(0)\right) = -x\,f(0) + x^2 + f(0). \qquad (4)$$

En soustrayant $(4)$ de $(3)$, les membres de gauche s'annulent, et il reste

$$0 = 2x\,f(0) \qquad \text{pour tout réel } x.$$

En prenant par exemple $x = 1$, on obtient $f(0) = 0$.

**Bilan de l'analyse**

$$f(x) = x \qquad \text{pour tout réel } x.$$

### Synthèse

Vérifions que la fonction identité est bien solution. Avec $f(t) = t$ pour tout $t$, le membre de gauche de $(E)$ vaut

$$f\left(x^2 + xy + y^2\right) = x^2 + xy + y^2,$$

et le membre de droite vaut

$$x\,y + x^2 + y^2.$$

Les deux coïncident. La fonction identité est donc bien solution.

$$\boxed{f(x) = x \text{ est la seule solution.}}$$

## Going further

Une équation fonctionnelle se résout presque toujours en deux temps, et il faut faire les deux :

- l'**analyse**, où l'on suppose qu'une solution existe et où l'on en déduit sa forme ; ce que l'on obtient là n'est qu'une liste de candidats ;
- la **synthèse**, où l'on vérifie lesquels de ces candidats marchent vraiment.

Sauter la synthèse est une erreur classique, car l'analyse ne prouve que « si $f$ est solution, alors $f$ est de telle forme », et jamais l'inverse.

Le cœur de la solution est le choix de $x = -y$. Pourquoi celui-là ? Parce qu'il annule l'expression $x^2 + xy = x(x+y)$, ce qui fait tomber l'argument de gauche sur une valeur déjà rencontrée à l'étape 1. Devant une équation fonctionnelle, il est payant de repérer les substitutions qui simplifient les **arguments** plutôt que les membres, car ce sont elles qui font se recouper deux informations.

L'astuce de l'étape 4 est également à retenir. Quand un membre ne dépend de $x$ que par $x^2$, remplacer $x$ par $-x$ le laisse intact, et la soustraction isole exactement la partie impaire de l'autre membre.
