---
id: "8441"
title: "Une équation fonctionnelle à trois étages"
grade: 12
theme: algebra
difficulty: 5
duration_min: 45
tags: [equation-fonctionnelle, surjectivite, substitution, analyse-synthese]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe B"
  reference: "Poly-2021-Valbonne.pdf, Groupe B, « Entraînement de mi-parcours », exercice 3 (la synthèse imprimée comporte une coquille : « f(y) + x = x + y = C » au lieu de « = x + y + C »)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Déterminer toutes les fonctions $f$ définies sur $\mathbb{R}$ et à valeurs dans $\mathbb{R}$ telles que, pour tous nombres réels $x$ et $y$,

$$f\big(f(f(x))\big) + f\big(f(y)\big) = f(y) + x.$$

## Hints

1. Un exercice de ce type se traite toujours en deux temps. **Analyse :** on suppose qu'une fonction convient et on en déduit sa forme. **Synthèse :** on vérifie lesquelles des fonctions trouvées conviennent vraiment. Sans la synthèse, la réponse n'est pas démontrée.
2. Premier réflexe : donner des valeurs particulières. Essaie $y = 0$ et regarde ce que devient l'équation.
3. Tu obtiens $f(f(f(x))) = x + c$, où $c$ est une constante. Le membre de droite prend toutes les valeurs réelles quand $x$ varie. Que peux-tu en déduire sur $f$ ?
4. Une fonction est dite **surjective** si tout réel est l'image d'au moins un réel. Si $f$ est surjective, alors quand $y$ parcourt $\mathbb{R}$, la quantité $f(y)$ parcourt elle aussi tout $\mathbb{R}$ : tu peux donc la remplacer par une nouvelle variable libre.
5. Une fois l'équation réécrite avec cette nouvelle variable, pose $x = 0$.

## Solution

### Analyse

Supposons que $f$ vérifie l'équation

$$f\big(f(f(x))\big) + f\big(f(y)\big) = f(y) + x \qquad (\star)$$

pour tous réels $x$ et $y$.

**Étape 1. Une première substitution.**

Posons $y = 0$ dans $(\star)$ :

$$f\big(f(f(x))\big) + f\big(f(0)\big) = f(0) + x,$$

c'est-à-dire, en posant $c = f(0) - f(f(0))$,

$$f\big(f(f(x))\big) = x + c \qquad \text{pour tout réel } x. \qquad (1)$$

**Étape 2. La fonction $f$ est surjective.**

Soit $b$ un réel quelconque. Posons $x = b - c$. D'après $(1)$,

$$f\Big(\underbrace{f\big(f(b-c)\big)}_{\text{un certain réel } z}\Big) = (b-c) + c = b.$$

Le réel $b$ a donc un antécédent par $f$, à savoir $z = f(f(b-c))$. Comme $b$ était quelconque, $f$ est surjective.

**Étape 3. Remplacer $f(y)$ par une variable libre.**

Comme $f$ est surjective, tout réel $u$ s'écrit $u = f(y)$ pour un certain réel $y$. En reportant dans $(\star)$, on obtient

$$f\big(f(f(x))\big) + f(u) = u + x \qquad \text{pour tous réels } x \text{ et } u. \qquad (2)$$

C'est un progrès décisif : la fonction $f$ n'apparaît plus qu'une seule fois avec une variable libre.

**Étape 4. Une seconde substitution.**

Posons $x = 0$ dans $(2)$ :

$$f\big(f(f(0))\big) + f(u) = u.$$

D'après $(1)$ appliqué à $x = 0$, le premier terme vaut $0 + c = c$. Donc

$$f(u) = u - c \qquad \text{pour tout réel } u.$$

**Conclusion de l'analyse.** S'il existe une solution, elle est de la forme $f(u) = u + C$ pour une certaine constante $C$ (ici $C = -c$).

### Synthèse

Soit $f$ définie par $f(u) = u + C$. Calculons les deux membres de $(\star)$.

$$f(x) = x + C, \qquad f(f(x)) = x + 2C, \qquad f(f(f(x))) = x + 3C.$$

- Membre de gauche : $\big(x + 3C\big) + \big(y + 2C\big) = x + y + 5C$.
- Membre de droite : $f(y) + x = (y + C) + x = x + y + C$.

L'égalité pour tous $x, y$ équivaut à

$$5C = C, \qquad \text{c'est-à-dire} \qquad 4C = 0, \qquad \text{donc} \qquad C = 0.$$

### Réponse

La seule solution est la fonction identité :

$$\boxed{f(x) = x \quad \text{pour tout réel } x.}$$

On vérifie qu'elle convient : le membre de gauche vaut $x + y$ et le membre de droite aussi.

## Going further

Deux réflexes à retenir.

**Le premier : chercher la surjectivité.** Dès qu'un membre de l'équation contient la variable $x$ **toute nue**, c'est-à-dire pas sous un $f$, la composée de $f$ avec elle-même est forcée de parcourir tout $\mathbb{R}$. C'est exactement ce qui se passe ici avec le « $+ x$ » du membre de droite, et c'est lui qui donne l'étape 2.

**Le second : la synthèse n'est pas une formalité.** L'analyse n'a produit que des candidats, une famille entière de fonctions $u \mapsto u + C$. C'est la vérification qui élimine toutes les valeurs de $C$ sauf une. Sans elle, on aurait annoncé une infinité de solutions là où il n'y en a qu'une.

On peut aussi remarquer que $f$ est **injective**, et le démontrer dès l'étape 1 : si $f(s) = f(t)$, alors $f(f(f(s))) = f(f(f(t)))$, donc $s + c = t + c$ d'après $(1)$, donc $s = t$. Cette information ne sert pas ici, mais l'établir est un bon réflexe.
