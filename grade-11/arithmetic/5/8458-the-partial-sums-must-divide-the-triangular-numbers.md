---
id: "8458"
title: "Des sommes partielles qui divisent 1 + 2 + … + n"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 45
tags: [divisibilite, recurrence forte, somme des premiers entiers, encadrement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe B"
  reference: "Poly-2021-Valbonne.pdf, Groupe B, « Factorisation et divisibilité » (Antoine Derimay), exercice 10"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Trouver toutes les fonctions $f$ qui, à chaque entier $n \geqslant 1$, associent un entier $f(n) \geqslant 1$, et qui vérifient : pour tout entier $n \geqslant 1$,

$$f(1) + f(2) + \cdots + f(n) \quad \text{divise} \quad 1 + 2 + \cdots + n.$$

## Hints

1. Commence par $n = 1$. Que vaut forcément $f(1)$ ?
2. Passe ensuite à $n = 2$, puis $n = 3$. À chaque fois, tu connais déjà la somme des termes précédents, et il ne reste qu'une inconnue. N'oublie pas que $f(n) \geqslant 1$, ce qui interdit à la somme d'être trop petite.
3. Tu devrais deviner la réponse dès $n = 3$. Il faut maintenant la démontrer pour tout $n$ : une récurrence s'impose.
4. Note $S_n = f(1) + \cdots + f(n)$ et $T_n = 1 + 2 + \cdots + n = \dfrac{n(n+1)}{2}$. Si $S_n = T_n$, alors $S_{n+1} = T_n + f(n+1)$ divise $T_{n+1}$. Écris $T_{n+1} = k \times S_{n+1}$ et majore $k$.
5. Calcule $\dfrac{T_{n+1}}{T_n}$. Pour $n$ assez grand, ce quotient est inférieur à $2$ : que reste-t-il alors comme valeur possible pour $k$ ?

## Solution

La seule solution est la fonction identité : $f(n) = n$ pour tout $n$.

Introduisons les notations

$$S_n = f(1) + f(2) + \cdots + f(n), \qquad T_n = 1 + 2 + \cdots + n = \frac{n(n+1)}{2}.$$

L'hypothèse est : $S_n$ divise $T_n$ pour tout $n \geqslant 1$.

### Étape 1. Les trois premières valeurs

**$n = 1$.** On a $S_1 = f(1)$ et $T_1 = 1$. Donc $f(1)$ divise $1$, et comme $f(1) \geqslant 1$, on obtient $f(1) = 1$. Ainsi $S_1 = 1 = T_1$.

**$n = 2$.** On a $S_2 = 1 + f(2)$ et $T_2 = 3$. Donc $1 + f(2)$ divise $3$ : c'est $1$ ou $3$. Comme $f(2) \geqslant 1$, on a $1 + f(2) \geqslant 2$, donc $1 + f(2) = 3$ et $f(2) = 2$. Ainsi $S_2 = 3 = T_2$.

**$n = 3$.** On a $S_3 = 3 + f(3)$ et $T_3 = 6$. Donc $3 + f(3)$ divise $6$, et $3 + f(3) \geqslant 4$ : la seule possibilité est $3 + f(3) = 6$, donc $f(3) = 3$ et $S_3 = 6 = T_3$.

### Étape 2. La récurrence

Montrons par récurrence sur $n \geqslant 3$ la propriété

$$\mathcal{P}(n) : \quad S_n = T_n.$$

**Initialisation.** $\mathcal{P}(3)$ est vraie d'après l'étape 1.

**Hérédité.** Soit $n \geqslant 3$ tel que $S_n = T_n$. Alors

$$S_{n+1} = S_n + f(n+1) = T_n + f(n+1).$$

Par hypothèse, $S_{n+1}$ divise $T_{n+1}$ : il existe donc un entier $k \geqslant 1$ tel que

$$T_{n+1} = k \times S_{n+1}.$$

**Majorons $k$.** Comme $f(n+1) \geqslant 1$, on a $S_{n+1} > T_n$, donc

$$k = \frac{T_{n+1}}{S_{n+1}} < \frac{T_{n+1}}{T_n}.$$

Or

$$\frac{T_{n+1}}{T_n} = \frac{(n+1)(n+2)/2}{n(n+1)/2} = \frac{n+2}{n}.$$

Pour $n \geqslant 3$, on a $\dfrac{n+2}{n} \leqslant \dfrac{5}{3} < 2$. Donc $k < 2$, et comme $k$ est un entier au moins égal à $1$ :

$$k = 1.$$

**Conclusion de l'hérédité.** $k = 1$ signifie $S_{n+1} = T_{n+1}$, ce qui est exactement $\mathcal{P}(n+1)$.

La récurrence est établie : $S_n = T_n$ pour tout $n \geqslant 3$, et aussi pour $n = 1$ et $n = 2$ d'après l'étape 1.

### Étape 3. Revenir à $f$

Pour tout $n \geqslant 2$,

$$f(n) = S_n - S_{n-1} = T_n - T_{n-1} = n,$$

et $f(1) = 1$. Donc $f(n) = n$ pour tout $n \geqslant 1$.

### Étape 4. Réciproque

Il faut vérifier que cette fonction convient : avec $f(n) = n$, la somme $S_n$ vaut $1 + 2 + \cdots + n = T_n$, qui divise bien $T_n$.

$$\boxed{f(n) = n \text{ est la seule solution.}}$$

## Going further

Le moteur de la démonstration est une idée simple : **quand un diviseur est déjà « presque aussi grand » que le nombre divisé, le quotient est forcé.** Ici $S_{n+1}$ dépasse $T_n$, et $T_{n+1}$ ne vaut qu'un peu plus que $T_n$ ; il n'y a donc pas la place pour un quotient égal à $2$.

C'est aussi pour cela qu'il fallait démarrer la récurrence à $n = 3$ et pas à $n = 1$ : le quotient $\dfrac{n+2}{n}$ vaut $3$ pour $n = 1$ et $2$ pour $n = 2$, et l'argument ne mord pas. Les trois premières valeurs ont donc dû être traitées à la main, ce qui est fréquent dans ce genre de problème.

Que se passe-t-il si l'on remplace $1 + 2 + \cdots + n$ par autre chose, par exemple par $n^2$ ? La condition devient : $S_n$ divise $n^2$ pour tout $n$. Cette fois plusieurs fonctions conviennent, et le problème devient bien plus riche. La rigidité observée ici tient au fait que $T_n$ grandit juste assez lentement.
