---
id: "7533"
title: "Une équation fonctionnelle sur les rationnels"
grade: 11
theme: functions-analysis
difficulty: 4
duration_min: 40
tags: [equation-fonctionnelle, rationnels, recurrence, substitution]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 47 (une étoile ; solution p. 245, résolue par Yassir Akram)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

Trouver toutes les fonctions $f$ définies sur $\mathbb{Q}$ et à valeurs dans $\mathbb{Q}$ telles que $f(1) = 2$ et que, pour tous rationnels $x$ et $y$,

$$f(xy) \;=\; f(x)\,f(y) \;-\; f(x+y) \;+\; 1.$$

## Hints

1. Dans une équation fonctionnelle, on commence toujours par essayer des valeurs particulières. Prends $y = 1$ : que devient l'équation ?
2. Tu devrais obtenir $f(x+1) = f(x) + 1$. Que vaut alors $f(n)$ pour $n$ entier ? Et $f(x+n)$ ?
3. Pour atteindre une fraction $\dfrac{a}{b}$, il faut la transformer en entier. Quelle multiplication fait cela ?
4. Prends $x = \dfrac{a}{b}$ et $y = b$ dans l'équation de départ, puis remplace tout ce que tu connais déjà.
5. N'oublie pas de vérifier à la fin que la fonction trouvée convient vraiment.

## Solution

**Réponse : la seule solution est $f(x) = x + 1$.**

Il est commode de réécrire l'équation sous la forme

$$(\star) \qquad f(x+y) \;=\; f(x)\,f(y) \;-\; f(xy) \;+\; 1.$$

**Étape 1. On décale de 1.**

Posons $y = 1$ dans $(\star)$. Comme $f(1) = 2$ et $x \times 1 = x$ :

$$f(x+1) = f(x) \times 2 - f(x) + 1 = f(x) + 1.$$

Donc, pour tout rationnel $x$ :

$$f(x+1) = f(x) + 1.$$

**Étape 2. Conséquences immédiates.**

En répétant l'étape 1, on obtient par récurrence, pour tout rationnel $x$ et tout entier naturel $n$ :

$$f(x + n) = f(x) + n.$$

La même relation vaut pour les entiers négatifs : en appliquant l'étape 1 à $x - 1$, on trouve $f(x) = f(x-1) + 1$, donc $f(x-1) = f(x) - 1$. Ainsi, pour tout rationnel $x$ et tout entier relatif $n$ :

$$f(x+n) = f(x) + n.$$

En particulier, avec $x = 1$ : $f(1+n) = 2 + n$, donc pour tout entier $m$,

$$f(m) = m + 1.$$

**Étape 3. On passe aux fractions.**

Soit $x = \dfrac{a}{b}$ un rationnel, avec $a$ entier et $b$ entier non nul. Appliquons $(\star)$ avec ce $x$ et avec $y = b$. Alors $xy = a$ et $x + y = \dfrac{a}{b} + b$.

$$f\!\left(\frac{a}{b} + b\right) \;=\; f\!\left(\frac{a}{b}\right) f(b) \;-\; f(a) \;+\; 1.$$

Traitons les trois morceaux connus.

- À gauche, $b$ est un entier, donc d'après l'étape 2 : $f\!\left(\frac{a}{b} + b\right) = f\!\left(\frac{a}{b}\right) + b$.
- $f(b) = b+1$ d'après l'étape 2.
- $f(a) = a+1$ d'après l'étape 2.

En notant $F = f\!\left(\dfrac{a}{b}\right)$ pour alléger, l'équation devient

$$F + b \;=\; F\,(b+1) \;-\; (a+1) \;+\; 1 \;=\; F\,b + F - a.$$

On simplifie $F$ des deux côtés :

$$b = F\,b - a, \qquad \text{donc} \qquad F\,b = a + b, \qquad \text{donc} \qquad F = \frac{a+b}{b} = \frac{a}{b} + 1.$$

Ainsi $f(x) = x+1$ pour tout rationnel $x$.

**Étape 4. On vérifie.**

Il faut s'assurer que la fonction trouvée convient. Avec $f(x) = x+1$ :

$$f(x)f(y) - f(x+y) + 1 = (x+1)(y+1) - (x+y+1) + 1 = xy + x + y + 1 - x - y - 1 + 1 = xy + 1 = f(xy).$$

L'équation est vérifiée, et $f(1) = 2$ également.

**Conclusion.** L'unique solution est $f(x) = x+1$.

## Going further

La marche à suivre est celle de presque toutes les équations fonctionnelles sur $\mathbb{Q}$ : on obtient d'abord une relation de décalage, qui donne la fonction sur $\mathbb{Z}$, puis on atteint les fractions en multipliant par le dénominateur.

L'étape de vérification n'est pas une formalité. Tout le raisonnement des étapes 1 à 3 consiste à dire « si une solution existe, alors elle vaut $x+1$ » ; il reste à s'assurer qu'une telle fonction existe bel et bien.

Que se passe-t-il si on remplace $\mathbb{Q}$ par $\mathbb{R}$ ? L'étape 3 tombe en panne, car un réel n'est pas de la forme $\frac{a}{b}$. On peut montrer que $f(x) = x+1$ reste la seule solution continue, mais si on n'impose aucune régularité, des solutions pathologiques apparaissent, construites à partir d'une base de $\mathbb{R}$ vu comme espace vectoriel sur $\mathbb{Q}$. C'est pour cela que beaucoup d'énoncés d'olympiades se placent sur $\mathbb{Q}$ : la question y est complètement élémentaire.
