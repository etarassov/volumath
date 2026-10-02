---
id: "12652"
title: "Des ensembles n-équilibrés"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 45
tags: [construction, partition, sous-ensembles, somme, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test du 23 et du 24 février 2022"
  reference: "2022-08_Enonce-Web-Test-3.pdf, exercice 10 (EGMO) ; corrigé 2022-03_Corrige-Web-Test-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/08/Énoncé-Web-Test-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2022-08_Enonce-Web-Test-3.pdf"
---

## Statement

Soit $n$ un entier naturel. On dit qu'un ensemble fini d'entiers est **$n$-équilibré** s'il y a exactement $n$ manières de le partager en deux sous-ensembles qui ont la même somme.

Par exemple, l'ensemble $\{1, 3, 4, 5, 6, 7\}$ est $2$-équilibré. En effet, les seules manières de le partager en deux sous-ensembles de même somme sont $\{1, 3, 4, 5\}$ et $\{6, 7\}$, ou bien $\{1, 5, 7\}$ et $\{3, 4, 6\}$.

Trouver tous les entiers $n \geqslant 0$ pour lesquels il existe un ensemble $n$-équilibré.

## Hints

1. Commence par les petites valeurs de $n$, sans oublier $n = 0$. Trouve un ensemble $0$-équilibré, puis un ensemble $1$-équilibré.
2. Il semble que tous les $n$ conviennent. Mais il est difficile de contrôler toutes les façons de partager un ensemble. Que se passe-t-il si l'on ajoute à l'ensemble un nombre $M$ très grand ? La partie qui contient $M$ est formée de $M$ et d'éléments dont la somme est petite.
3. Le problème devient : trouver un ensemble $E'$ et un nombre $s$ tels qu'il y ait exactement $n$ sous-ensembles de $E'$ dont la somme vaut $s$. Essaie de faire en sorte que ces sous-ensembles aient tous deux éléments.
4. Si tous les éléments de $E'$ sont entre $3n$ et $5n$, combien d'éléments peut avoir un sous-ensemble de somme $8n$ ? Choisis alors $E'$ pour qu'il y ait exactement $n$ paires de somme $8n$.

## Solution

On va montrer que **tous les entiers $n \geqslant 0$ conviennent.**

Pour un ensemble fini $X$, on note $\Sigma X$ la somme de ses éléments. Partager un ensemble $E$ en deux sous-ensembles de même somme, c'est choisir une partie $X$ de $E$, l'autre partie étant formée des éléments restants, avec $\Sigma X = \Sigma E / 2$. Les deux parties jouent le même rôle : pour compter chaque partage une seule fois, on décidera toujours de désigner par $X$ la partie qui contient un élément fixé à l'avance.

**Les petites valeurs.**

- *$n = 0$.* L'ensemble $\{1\}$ a une somme impaire, on ne peut donc pas le partager en deux parties de même somme : il est $0$-équilibré.
- *$n = 1$.* L'ensemble $\{1, 2, 3\}$ a pour somme $6$. Une partie de somme $3$ est $\{3\}$ ou $\{1, 2\}$, et ces deux parties forment un seul et même partage. L'ensemble est $1$-équilibré.
- *$n = 2$.* L'énoncé donne un exemple.

**L'idée pour $n \geqslant 3$.** On ajoute à l'ensemble un très grand nombre $M$. La partie qui contient $M$ doit être complétée par d'autres éléments pour atteindre la moitié de la somme totale. Si $M$ est bien choisi, ces autres éléments ont une petite somme, et l'on n'a plus qu'à compter des sous-ensembles d'une somme donnée.

**La construction.** Soit $n \geqslant 3$. On prend les $2n$ entiers de $3n$ à $5n$, sauf $4n$ :
$$E' = \{3n, \; 3n + 1, \; \ldots, \; 4n - 1\} \cup \{4n + 1, \; 4n + 2, \; \ldots, \; 5n\},$$
et l'on pose $M = 8n(n - 2)$ et $E = E' \cup \{M\}$. Comme $n \geqslant 3$, on a $M \geqslant 8n > 5n$ : le nombre $M$ n'est pas dans $E'$, et $E$ a bien $2n + 1$ éléments.

Pour $n = 3$, par exemple, $E' = \{9, 10, 11, 13, 14, 15\}$ et $M = 24$.

**Étape 1 : les sommes.** Les éléments de $E'$ se regroupent en $n$ paires
$$\{4n - \ell, \; 4n + \ell\}, \qquad \ell = 1, 2, \ldots, n,$$
et chaque paire a pour somme $8n$. Donc $\Sigma E' = 8n \times n = 8n^2$, et
$$\Sigma E = 8n^2 + 8n(n - 2) = 16n^2 - 16n = 16n(n - 1).$$
Un partage de $E$ en deux parties de même somme demande donc deux parties de somme $8n(n - 1)$.

**Étape 2 : on se ramène à un problème plus simple.** Dans un tel partage, on appelle $X$ la partie qui contient $M$, et $Y$ l'ensemble des autres éléments de $X$. Alors $Y$ est une partie de $E'$, et
$$\Sigma Y = 8n(n - 1) - 8n(n - 2) = 8n.$$
Inversement, soit $Y$ une partie de $E'$ de somme $8n$. On pose $X = Y \cup \{M\}$, de somme $8n + 8n(n-2) = 8n(n-1)$. L'autre partie est formée des éléments de $E'$ qui ne sont pas dans $Y$. Elle a pour somme $8n^2 - 8n = 8n(n - 1)$ aussi, et elle n'est pas vide, puisque $\Sigma Y = 8n$ est plus petit que $\Sigma E' = 8n^2$. On obtient un partage de $E$ en deux parties de même somme. Enfin, deux parties $Y$ différentes donnent deux partages différents, car on retrouve $Y$ à partir du partage : c'est la partie qui contient $M$, privée de $M$.

Il y a donc autant de partages de $E$ en deux parties de même somme que de parties $Y$ de $E'$ dont la somme vaut $8n$.

**Étape 3 : on compte les parties de somme $8n$.** Soit $Y$ une partie de $E'$ de somme $8n$. Tous les éléments de $E'$ sont entre $3n$ et $5n$.

- $Y$ n'est pas vide, car sa somme n'est pas nulle.
- $Y$ n'a pas un seul élément, car cet élément vaudrait $8n$, alors que tous les éléments sont au plus $5n$.
- $Y$ n'a pas trois éléments ou plus, car sa somme serait au moins $3 \times 3n = 9n$, plus grande que $8n$.

Donc $Y$ a exactement deux éléments $a < b$, avec $a + b = 8n$. Comme $a < b$, on a $a < 4n < b$. Ainsi $a$ est dans la première moitié de $E'$ : $a = 4n - \ell$ avec $1 \leqslant \ell \leqslant n$, et alors $b = 4n + \ell$. Inversement, chacune des $n$ paires $\{4n - \ell, 4n + \ell\}$ est bien une partie de $E'$ de somme $8n$.

Il y a donc exactement $n$ parties $Y$ qui conviennent, et $E$ est $n$-équilibré.

**Conclusion.** **Pour tout entier $n \geqslant 0$, il existe un ensemble $n$-équilibré.**

## Going further

- Pour $n = 3$, l'ensemble $\{9, 10, 11, 13, 14, 15, 24\}$ a pour somme $96$. Vérifie à la main que ses trois partages de même somme sont obtenus en ajoutant à $24$ l'une des paires $\{11, 13\}$, $\{10, 14\}$ ou $\{9, 15\}$.
- La même formule marche aussi pour $n = 2$, à condition d'accepter $0$ comme élément : elle donne l'ensemble $\{0, 6, 7, 9, 10\}$. La partie qui contient $0$ est $\{0, 6, 10\}$ ou $\{0, 7, 9\}$.
- Le commentaire des correcteurs note que plusieurs élèves ont oublié le cas $n = 0$, et que la vraie difficulté était de croire que tous les entiers conviennent. L'astuce du grand nombre $M$ qui force la forme des partages se retrouve dans beaucoup de problèmes de construction.
