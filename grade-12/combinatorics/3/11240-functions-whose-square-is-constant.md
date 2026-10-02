---
id: "11240"
title: "Les fonctions dont la composée avec elle-même est constante"
grade: 12
theme: combinatorics
difficulty: 3
duration_min: 40
tags: [denombrement, fonctions, composition, coefficients-binomiaux]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 4 (combinatoire)"
  reference: "2017-10_ofm-2016-2017-envoi-4.pdf, Exercices communs, exercice 6 ; corrigé 2017-10_ofm-2016-2017-envoi-4-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-4.pdf"
---

## Statement

Soit $n \geqslant 2$ un entier et soit $X$ un ensemble à $n$ éléments. Montrer que le nombre de
fonctions $f : X \to X$ telles que $f \circ f$ soit une fonction constante est égal à
$$n \sum_{i=1}^{n-1} \binom{n-1}{i}\, i^{\,n-i-1} .$$

## Hints

1. Vérifie la formule pour $n = 2$ en écrivant les quatre fonctions de $\{a, b\}$ dans lui-même.
2. Supposons que $f(f(x)) = c$ pour tout $x$. Calcule $f(f(f(c)))$ de deux façons différentes. Que
   vaut $f(c)$ ?
3. Note $A$ l'ensemble des éléments $x$ tels que $f(x) = c$. Montre que $f$ prend toutes ses valeurs
   dans $A$. Où $f$ envoie-t-elle les éléments qui ne sont pas dans $A$ ?
4. Inversement, si on choisit $c$, puis l'ensemble $A$, puis les images des éléments hors de $A$,
   obtient-on toujours une fonction qui convient ?

## Solution

Rappelons deux résultats de dénombrement :

- le nombre de parties à $i$ éléments d'un ensemble à $m$ éléments est $\binom{m}{i}$ ;
- le nombre de fonctions d'un ensemble à $p$ éléments dans un ensemble à $q$ éléments est $q^p$ (on
  choisit l'image de chaque élément, avec $q$ choix à chaque fois). Si $p = 0$, il y a une seule
  fonction, celle qui ne fait rien ; si $p \geqslant 1$ et $q = 0$, il n'y en a aucune.

Disons qu'une fonction $f : X \to X$ est **bonne** si $f \circ f$ est constante.

### Étape 1. Ce que l'on sait d'une bonne fonction

Soit $f$ une bonne fonction, et soit $c$ l'élément de $X$ tel que $f(f(x)) = c$ pour tout $x$
de $X$.

**On a $f(c) = c$.** Calculons $f(f(f(c)))$ de deux façons.

- En appliquant la propriété à $x = f(c)$ : $f(f(f(c)))$, c'est $(f \circ f)(f(c))$, qui
  vaut $c$.
- En appliquant $f$ à l'égalité $f(f(c)) = c$ : on obtient $f(f(f(c))) = f(c)$.

Donc $f(c) = c$.

Notons maintenant $A$ l'ensemble des éléments $x$ de $X$ tels que $f(x) = c$. D'après ce qui
précède, $c$ appartient à $A$.

**Toutes les valeurs de $f$ sont dans $A$.** Pour tout $x$, on a $f(f(x)) = c$, ce qui veut dire
exactement que $f(x)$ appartient à $A$.

**Les éléments hors de $A$ sont envoyés dans $A$, mais pas sur $c$.** Soit $x$ un élément qui n'est
pas dans $A$. Alors $f(x)$ est dans $A$, et $f(x) \neq c$ puisque $x$ n'est pas dans $A$. Donc
$f(x)$ appartient à l'ensemble $A$ privé de $c$, que l'on note $A \setminus \{c\}$.

En résumé, une bonne fonction $f$ est décrite par trois choses :

1. l'élément $c$ ;
2. l'ensemble $A$, qui contient $c$ ;
3. la façon dont $f$ envoie chaque élément de $X$ qui n'est pas dans $A$ sur un élément de
   $A \setminus \{c\}$.

Et ces trois choses suffisent à retrouver $f$ : sur $A$, la fonction $f$ vaut $c$, et hors de $A$,
elle est donnée par le point 3.

### Étape 2. La réciproque

Choisissons maintenant n'importe quel élément $c$ de $X$, n'importe quel ensemble $A$ contenant $c$,
et, pour chaque $x$ hors de $A$, n'importe quel élément $g(x)$ de $A \setminus \{c\}$. Définissons
$f$ par $f(x) = c$ si $x$ est dans $A$, et $f(x) = g(x)$ sinon. Alors $f$ est bonne :

- si $x$ est dans $A$, alors $f(x) = c$, et comme $c$ est dans $A$, $f(f(x)) = f(c) = c$ ;
- si $x$ n'est pas dans $A$, alors $f(x) = g(x)$ est dans $A$, donc $f(f(x)) = c$.

De plus, l'ensemble des $x$ tels que $f(x) = c$ est exactement $A$ (hors de $A$, les valeurs $g(x)$
sont différentes de $c$), et la valeur constante de $f \circ f$ est $c$. Deux choix différents de
$(c, A, g)$ donnent donc deux fonctions différentes.

On a ainsi une correspondance exacte entre les bonnes fonctions et les choix de $(c, A, g)$.

### Étape 3. Le dénombrement

- **Le choix de $c$** : $n$ possibilités.
- **Le choix de $A$** : l'ensemble $A$ est formé de $c$ et d'une partie de $X \setminus \{c\}$, qui
  a $n - 1$ éléments. Si cette partie a $i$ éléments, avec $0 \leqslant i \leqslant n - 1$, il y a
  $\binom{n-1}{i}$ choix.
- **Le choix de $g$** : il reste $n - 1 - i$ éléments hors de $A$, et chacun doit être envoyé dans
  $A \setminus \{c\}$, qui a $i$ éléments. Cela fait $i^{\,n-1-i}$ fonctions $g$.

Le nombre de bonnes fonctions est donc
$$n \sum_{i=0}^{n-1} \binom{n-1}{i}\, i^{\,n-1-i} .$$

Le terme $i = 0$ est nul : si $A = \{c\}$, il reste $n - 1 \geqslant 1$ éléments hors de $A$ à
envoyer dans un ensemble vide, ce qui est impossible ; on a bien $0^{\,n-1} = 0$ puisque
$n - 1 \geqslant 1$. On peut donc commencer la somme à $i = 1$.

Pour $i = n - 1$, l'ensemble $A$ est tout $X$, il n'y a aucun élément hors de $A$, et la seule
fonction possible est la fonction constante égale à $c$ ; c'est bien le terme
$\binom{n-1}{n-1} (n-1)^0 = 1$.

**Conclusion : le nombre de fonctions $f : X \to X$ telles que $f \circ f$ soit constante est
$n \sum_{i=1}^{n-1} \binom{n-1}{i}\, i^{\,n-i-1}$.**

## Going further

- Pour $n = 2$, la formule donne $2$ : seules les deux fonctions constantes conviennent. Pour
  $n = 3$, elle donne $3 \times (2 + 1) = 9$ : les $3$ fonctions constantes, et les $6$ fonctions qui
  fixent un élément $c$, envoient un deuxième élément sur $c$ et le troisième sur le deuxième.
- Combien y a-t-il de fonctions $f : X \to X$ telles que $f \circ f = f$ ? La même méthode, avec
  l'ensemble $A$ des valeurs de $f$, donne $\sum_{i=1}^{n} \binom{n}{i}\, i^{\,n-i}$.
