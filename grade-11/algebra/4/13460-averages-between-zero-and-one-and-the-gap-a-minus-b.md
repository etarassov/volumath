---
id: "13460"
title: "Des moyennes entre 0 et 1 et l'écart a − b"
grade: 11
theme: algebra
difficulty: 4
duration_min: 50
tags: [inegalite, moyenne, maximum, minimum, disjonction de cas, extremum]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2025"
  reference: "2025-10_Sujet-coupe-Animath-Automne-2025.pdf, épreuve lycée, exercice 15 ; corrigé 2025-10_Corrige-commente-Coupe-Animath-Automne-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-coupe-Animath-Automne-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2025-10_Sujet-coupe-Animath-Automne-2025.pdf"
---

## Statement

Soit $n \geqslant 2$ un entier fixé. Gaëtan choisit $n$ nombres réels $x_1, x_2, \ldots, x_n$. Il calcule les $n$ moyennes

$$\frac{x_1}{1}, \qquad \frac{x_1 + x_2}{2}, \qquad \frac{x_1 + x_2 + x_3}{3}, \qquad \ldots, \qquad \frac{x_1 + x_2 + \ldots + x_n}{n},$$

et il a choisi ses nombres de sorte que la plus grande de ces $n$ moyennes vaut $1$, et la plus petite vaut $0$.

On note $a$ le plus grand des nombres $x_1, \ldots, x_n$, et $b$ le plus petit. Gaëtan écrit au tableau la différence $a - b$.

Quel est le plus grand nombre que Gaëtan peut écrire au tableau ? Quel est le plus petit ?

## Hints

1. Commence par $n = 2$ : quelles sont toutes les possibilités pour $x_1$ et $x_2$ ? Essaie ensuite quelques exemples avec $n = 3$.
2. Pose $s_i = x_1 + \ldots + x_i$. Traduis l'hypothèse : on a $0 \leqslant s_i \leqslant i$ pour tout $i$, avec $s_k = k$ pour un certain indice $k$ et $s_l = 0$ pour un certain indice $l$.
3. Pour la plus grande valeur, écris $x_i = s_i - s_{i-1}$ et encadre ce nombre. Attention : $a$ et $b$ ne peuvent pas être atteints au même indice.
4. Pour la plus petite valeur, sépare deux cas. Si $k > l$, la somme $x_{l+1} + \ldots + x_k$ vaut $k$ : compare-la à $(k - l)\,a$. Et que dire de $b$, sachant que $x_1 + \ldots + x_l = 0$ ?

## Solution

**Notations.** Pour $i = 1, \ldots, n$, on note $s_i = x_1 + x_2 + \ldots + x_i$, et on pose $s_0 = 0$. La $i$-ième moyenne vaut $s_i / i$. L'hypothèse dit deux choses :

- toutes les moyennes sont entre $0$ et $1$, donc $0 \leqslant s_i \leqslant i$ pour tout $i$ de $0$ à $n$ ;
- il existe un indice $k$ tel que $s_k = k$ (la moyenne vaut $1$) et un indice $l$ tel que $s_l = 0$ (la moyenne vaut $0$). Comme $1 \neq 0$, ces deux indices sont différents.

On remarque aussi que $x_i = s_i - s_{i-1}$ pour tout $i$.

### 1. La plus grande valeur de $a - b$

**Une majoration.** Soit $p$ un indice tel que $x_p = a$, et $q$ un indice tel que $x_q = b$.

Si l'on pouvait prendre $p = q$, on aurait $a = b$ : tous les $x_i$ seraient égaux à un même nombre $c$, et toutes les moyennes vaudraient $c$. Elles ne pourraient pas valoir à la fois $0$ et $1$. Donc $p \neq q$.

On encadre $a$ et $b$ :

$$a = x_p = s_p - s_{p-1} \leqslant p - 0 = p,$$

car $s_p \leqslant p$ et $s_{p-1} \geqslant 0$ ; et

$$b = x_q = s_q - s_{q-1} \geqslant 0 - (q - 1) = 1 - q,$$

car $s_q \geqslant 0$ et $s_{q-1} \leqslant q - 1$. Donc

$$a - b \leqslant p + q - 1.$$

Les indices $p$ et $q$ sont deux entiers **différents**, inférieurs ou égaux à $n$ : leur somme vaut au plus $n + (n - 1) = 2n - 1$. Donc $a - b \leqslant 2n - 2$.

**Un exemple où l'on atteint $2n - 2$.** On prend

$$x_1 = x_2 = \ldots = x_{n-2} = 1, \qquad x_{n-1} = -(n - 2), \qquad x_n = n.$$

Les $n - 2$ premières moyennes valent $1$. On a $s_{n-1} = (n - 2) - (n - 2) = 0$, donc la $(n-1)$-ième moyenne vaut $0$. Enfin $s_n = n$, donc la dernière moyenne vaut $1$. Toutes les moyennes valent $0$ ou $1$, avec les deux valeurs prises : l'hypothèse est vérifiée. Ici $a = n$ et $b = -(n - 2)$, donc $a - b = 2n - 2$.

(Pour $n = 2$, cet exemple est $x_1 = 0$, $x_2 = 2$.)

### 2. La plus petite valeur de $a - b$

On rappelle que $s_k = k$ et $s_l = 0$, avec $k \neq l$. On sépare deux cas.

**Premier cas : $k > l$.** Les $l$ nombres $x_1, \ldots, x_l$ sont tous au moins égaux à $b$, et leur somme vaut $s_l = 0$. Donc $l \times b \leqslant 0$, et $b \leqslant 0$.

Les $k - l$ nombres $x_{l+1}, \ldots, x_k$ sont tous au plus égaux à $a$, et leur somme vaut $s_k - s_l = k$. Donc $(k - l) \times a \geqslant k$, et comme $l \geqslant 1$ et $k \leqslant n$,

$$a \geqslant \frac{k}{k - l} \geqslant \frac{k}{k - 1} = 1 + \frac{1}{k - 1} \geqslant 1 + \frac{1}{n - 1}.$$

Donc

$$a - b \geqslant 1 + \frac{1}{n - 1} - 0 = \frac{n}{n - 1}.$$

**Second cas : $k < l$.** Les $k$ nombres $x_1, \ldots, x_k$ sont au plus égaux à $a$, et leur somme vaut $k$. Donc $k \times a \geqslant k$, et $a \geqslant 1$.

Les $l - k$ nombres $x_{k+1}, \ldots, x_l$ sont au moins égaux à $b$, et leur somme vaut $s_l - s_k = -k$. Donc $(l - k) \times b \leqslant -k \leqslant -1$. Comme $1 \leqslant l - k \leqslant n - 1$,

$$b \leqslant -\frac{1}{l - k} \leqslant -\frac{1}{n - 1}.$$

Donc

$$a - b \geqslant 1 + \frac{1}{n - 1} = \frac{n}{n - 1}.$$

Dans les deux cas, $a - b \geqslant n / (n - 1)$.

**Un exemple où l'on atteint $n / (n - 1)$.** On prend

$$x_1 = 0, \qquad x_2 = x_3 = \ldots = x_n = \frac{n}{n - 1}.$$

La première moyenne vaut $0$. Pour $2 \leqslant i \leqslant n$, on a $s_i = (i - 1) \times n / (n - 1)$, donc

$$\frac{s_i}{i} = \frac{i - 1}{i} \times \frac{n}{n - 1}.$$

Ce nombre est positif. De plus

$$\frac{i - 1}{i} = 1 - \frac{1}{i} \leqslant 1 - \frac{1}{n} = \frac{n - 1}{n},$$

donc la moyenne $s_i / i$ est au plus égale à $1$, avec égalité pour $i = n$. L'hypothèse est donc vérifiée, et $a - b = n / (n - 1) - 0 = n / (n - 1)$.

### Conclusion

Le plus grand nombre que Gaëtan peut écrire est $2n - 2$, et le plus petit est

$$\frac{n}{n - 1}.$$

Pour $n = 2$, ces deux nombres valent tous les deux $2$ : en effet, les seuls choix possibles sont $(x_1, x_2) = (0, 2)$ et $(x_1, x_2) = (1, -1)$.

*Une erreur à éviter.* Avec les encadrements $a \leqslant p$ et $b \geqslant 1 - q$, on pourrait croire que $a - b$ peut atteindre $n + n - 1 = 2n - 1$. Mais il faudrait $p = q = n$, et le plus grand et le plus petit des $x_i$ ne peuvent pas être au même indice.

## Going further

On garde les mêmes hypothèses. Quelle est la plus grande valeur possible de $a$ seul ? Et la plus petite valeur possible de $b$ seul ?
