---
id: "8479"
title: "Trois solutions, et non deux"
grade: 12
theme: algebra
difficulty: 4
duration_min: 35
tags: [equation-fonctionnelle, injectivite, substitution, analyse-synthese]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe B"
  reference: "Poly-2021-Valbonne.pdf, Groupe B, « Équations fonctionnelles » (Tristan Humbert), exercice 8, marqué (F-M). Le corrigé imprimé remarque au début que la fonction nulle est solution, puis conclut qu'il n'y a que deux solutions : il en oublie une, il y en a trois."
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Trouver toutes les fonctions $f$ définies sur $\mathbb{R}$ et à valeurs dans $\mathbb{R}$ telles que, pour tous nombres réels $x$ et $y$,

$$f\big(f(x)\,f(y)\big) = f(x)\,y.$$

## Hints

1. Y a-t-il une solution évidente, très simple ? Vérifie-la, puis mets-la de côté et suppose que $f$ n'est pas celle-là.
2. Si $f$ n'est pas la fonction nulle, il existe un réel $a$ tel que $f(a) \neq 0$. Que donne la substitution $x = a$ ?
3. Sers-t'en pour montrer que $f$ est **injective** : suppose $f(b) = f(c)$ et regarde ce que l'équation donne pour $y = b$ puis $y = c$.
4. Maintenant que $f$ est injective, substitue $y = 1$. Le membre de gauche et le membre de droite sont tous deux de la forme $f(\text{quelque chose})$ : que peux-tu en déduire ?
5. Tu obtiens $f(x)\,f(1) = x$. Fais $x = 1$ pour trouver les valeurs possibles de $f(1)$.

## Solution

Il y a exactement **trois** solutions :

$$f(x) = 0, \qquad f(x) = x, \qquad f(x) = -x.$$

### Analyse

**Étape 1. Écarter la fonction nulle.**

La fonction nulle est solution : les deux membres valent alors $0$. Nous y reviendrons dans la synthèse.

Supposons désormais que $f$ n'est **pas** la fonction nulle. Il existe donc un réel $a$ tel que $f(a) \neq 0$.

**Étape 2. $f$ est injective.**

Supposons $f(b) = f(c)$, et montrons que $b = c$. Appliquons l'équation avec $x = a$ :

- pour $y = b$ : $f\big(f(a)\,f(b)\big) = f(a)\,b$ ;
- pour $y = c$ : $f\big(f(a)\,f(c)\big) = f(a)\,c$.

Comme $f(b) = f(c)$, les deux membres de gauche sont le même nombre. Donc

$$f(a)\,b = f(a)\,c,$$

et comme $f(a) \neq 0$, on peut diviser : $b = c$. La fonction $f$ est donc injective.

**Étape 3. Substituer $y = 1$.**

L'équation donne

$$f\big(f(x)\,f(1)\big) = f(x) \times 1 = f(x).$$

Les deux membres sont de la forme $f(\ldots)$ : à gauche $f$ appliquée à $f(x)f(1)$, à droite $f$ appliquée à $x$. L'injectivité permet donc de supprimer le $f$ :

$$f(x)\,f(1) = x \qquad \text{pour tout réel } x. \qquad (\star)$$

**Étape 4. Trouver $f(1)$.**

Prenons $x = 1$ dans $(\star)$ :

$$f(1)^2 = 1, \qquad \text{donc} \qquad f(1) = 1 \quad \text{ou} \quad f(1) = -1.$$

**Étape 5. Les deux candidats.**

- Si $f(1) = 1$, la relation $(\star)$ donne $f(x) = x$.
- Si $f(1) = -1$, elle donne $-f(x) = x$, c'est-à-dire $f(x) = -x$.

### Synthèse

Il reste à vérifier les trois candidats.

**La fonction nulle.** $f\big(f(x)f(y)\big) = f(0) = 0$ et $f(x)\,y = 0 \times y = 0$. Les deux membres valent $0$ : c'est bien une solution.

**L'identité $f(x) = x$.** $f\big(f(x)f(y)\big) = f(xy) = xy$ et $f(x)\,y = x y$. Égalité : c'est une solution.

**L'opposé $f(x) = -x$.** $f\big(f(x)f(y)\big) = f\big((-x)(-y)\big) = f(xy) = -xy$ et $f(x)\,y = (-x)\,y = -xy$. Égalité : c'est aussi une solution.

### Conclusion

$$\boxed{f(x) = 0, \qquad f(x) = x, \qquad f(x) = -x.}$$

## Going further

Cet exercice illustre un enchaînement très courant dans les équations fonctionnelles :

1. **isoler les cas dégénérés** (ici la fonction nulle), qui échappent souvent au raisonnement général ;
2. **démontrer l'injectivité**, qui est l'outil qui permet ensuite de « simplifier par $f$ » ;
3. **substituer une valeur bien choisie** pour obtenir une relation sans $f$ imbriquée.

L'étape 2 mérite qu'on s'y attarde. On montre l'injectivité en remarquant que la variable $y$ apparaît **toute seule** dans le membre de droite, alors que $x$ n'apparaît que sous la forme $f(x)$. Ce déséquilibre est exactement ce qui permet de conclure : deux valeurs de $y$ donnant le même membre de gauche donnent le même membre de droite, donc sont égales.

Il faut enfin faire attention à ne perdre aucune solution en route. Le corrigé d'origine de cet exercice signale bien, dès sa première ligne, que la fonction nulle convient, puis annonce à la fin « les deux seules solutions sont $f(x) = x$ et $f(x) = -x$ ». Il en manque une. C'est le genre d'oubli qu'une synthèse écrite en entier, reprenant **tous** les candidats, permet d'éviter.
