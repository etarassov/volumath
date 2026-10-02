---
id: "12841"
title: "Cruella partage cent steaks entre cent chiens"
grade: 10
theme: algebra
difficulty: 5
duration_min: 50
tags: [inegalite, partie-entiere, valeur-absolue, optimisation, minimum]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 17 janvier 2024"
  reference: "2025-01_Enonce-Test-2.pdf, test junior, exercice 4, et test senior, exercice 5 (le même énoncé) ; corrigé 2025-01_Corrige-Test-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Enonce-Test-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-01_Enonce-Test-2.pdf"
---

## Statement

Cruella veut nourrir ses $100$ chiens, numérotés de $1$ à $100$. Le chien numéro $k$ a besoin de $a_k$ kilogrammes de viande, où $a_k$ est un réel strictement positif, et l'on sait que

$$a_1 + a_2 + \cdots + a_{100} = 100.$$

Cruella dispose de $100$ steaks de $1$ kg chacun, qu'elle ne peut pas couper. Elle donne $b_k$ steaks au chien numéro $k$, où chaque $b_k$ est un entier positif ou nul, et elle distribue tous les steaks : $b_1 + b_2 + \cdots + b_{100} = 100$.

On appelle **inefficacité** de cette distribution le nombre

$$|a_1 - b_1| + |a_2 - b_2| + \cdots + |a_{100} - b_{100}|.$$

Trouver le plus petit réel $I$ tel que, quels que soient les besoins $a_1, a_2, \ldots, a_{100}$ des chiens, Cruella puisse choisir les entiers $b_1, b_2, \ldots, b_{100}$ de façon que l'inefficacité soit inférieure ou égale à $I$.

## Hints

1. Il y a deux choses à montrer : une situation où Cruella ne peut pas faire mieux que $I$, et une méthode qui lui permet de faire au moins aussi bien que $I$ dans toutes les situations.
2. Quelle est la plus petite valeur possible de $|a - b|$ quand $b$ est un entier et que $a$ vaut $\frac{1}{2}$, ou $\frac{3}{2}$, ou $\frac{5}{2}$ ? Cherchez des besoins tous de cette forme, de somme $100$.
3. Pour la méthode, donnez d'abord à chaque chien la partie entière de son besoin. Combien de steaks restent ? À quels chiens les donner ?
4. Notez $c_k$ la partie décimale de $a_k$, rangez les chiens pour que $c_1 \geq c_2 \geq \cdots \geq c_{100}$, et donnez un steak de plus aux $\ell$ premiers. Exprimez l'inefficacité à l'aide de $Y = c_{\ell+1} + \cdots + c_{100}$, puis majorez $Y$ de deux façons à l'aide de $c_\ell$.

## Solution

La réponse est $I = 50$.

Pour un réel $t \geq 0$, on note $\lfloor t \rfloor$ sa **partie entière** : c'est le plus grand entier inférieur ou égal à $t$. Le nombre $t - \lfloor t \rfloor$ est sa **partie décimale**, qui est comprise entre $0$ (inclus) et $1$ (exclu). Par exemple $\lfloor \text{2,7} \rfloor = 2$, et la partie décimale de $\text{2,7}$ vaut $\text{0,7}$.

### Cruella ne peut pas toujours faire mieux que 50

Supposons que le chien $1$ ait besoin de $a_1 = \text{50,5}$ kg et que chacun des $99$ autres ait besoin de $\text{0,5}$ kg. La somme fait bien $\text{50,5} + 99 \times \text{0,5} = \text{50,5} + \text{49,5} = 100$.

Chaque $a_k$ est alors un entier plus $\text{0,5}$. Sa distance à n'importe quel entier $b_k$ vaut au moins $\text{0,5}$ : on a $|a_k - b_k| \geq \text{0,5}$ pour tout $k$. Quelle que soit la distribution choisie, l'inefficacité vaut donc au moins $100 \times \text{0,5} = 50$.

Ainsi, aucun nombre $I < 50$ ne convient.

### Une méthode qui fait toujours au moins aussi bien que 50

Prenons maintenant des besoins $a_1, \ldots, a_{100}$ quelconques. Notons $c_k = a_k - \lfloor a_k \rfloor$ la partie décimale de $a_k$, avec $0 \leq c_k < 1$. Quitte à renuméroter les chiens, on peut supposer que

$$c_1 \geq c_2 \geq \cdots \geq c_{100}.$$

**Combien de steaks restent ?** Cruella commence par donner $\lfloor a_k \rfloor$ steaks au chien $k$ (c'est un entier positif ou nul). Il lui reste

$$\ell = 100 - \left(\lfloor a_1 \rfloor + \cdots + \lfloor a_{100} \rfloor\right) = (a_1 + \cdots + a_{100}) - \left(\lfloor a_1 \rfloor + \cdots + \lfloor a_{100} \rfloor\right) = c_1 + c_2 + \cdots + c_{100}$$

steaks. C'est un entier, et il est compris entre $0$ et $99$ : il est positif ou nul, et il est strictement inférieur à $100$, car chaque $c_k$ est strictement inférieur à $1$.

**La distribution.** Cruella donne un steak de plus à chacun des $\ell$ premiers chiens, ceux dont la partie décimale est la plus grande. Ainsi $b_k = \lfloor a_k \rfloor + 1$ pour $k \leq \ell$, et $b_k = \lfloor a_k \rfloor$ pour $k > \ell$. Tous les steaks sont distribués.

Si $\ell = 0$, tous les $c_k$ sont nuls, chaque chien reçoit exactement ce dont il a besoin et l'inefficacité vaut $0$. On suppose désormais $1 \leq \ell \leq 99$.

**L'inefficacité.** Pour $k \leq \ell$, on a $|a_k - b_k| = 1 - c_k$, et pour $k > \ell$, on a $|a_k - b_k| = c_k$. Notons

$$X = c_1 + \cdots + c_\ell \qquad \text{et} \qquad Y = c_{\ell+1} + \cdots + c_{100},$$

de sorte que $X + Y = \ell$. L'inefficacité vaut

$$(1 - c_1) + \cdots + (1 - c_\ell) + Y = \ell - X + Y = 2Y.$$

Il suffit donc de montrer que $Y \leq 25$.

### Majorer Y de deux façons

Notons $m = c_\ell$, la plus petite des parties décimales des $\ell$ premiers chiens.

- Les $100 - \ell$ derniers nombres $c_{\ell+1}, \ldots, c_{100}$ sont tous inférieurs ou égaux à $m$, donc $Y \leq (100 - \ell)\, m$.
- Les $\ell$ premiers nombres $c_1, \ldots, c_\ell$ sont tous supérieurs ou égaux à $m$, donc $X \geq \ell\, m$, et $Y = \ell - X \leq \ell\,(1 - m)$.

On multiplie la première inégalité par $\ell$ et la seconde par $100 - \ell$ (deux nombres positifs), puis on les ajoute :

$$\ell\, Y + (100 - \ell)\, Y \leq \ell\,(100 - \ell)\, m + (100 - \ell)\,\ell\,(1 - m),$$

c'est-à-dire

$$100\, Y \leq \ell\,(100 - \ell).$$

Enfin, $\ell\,(100 - \ell) = 2500 - (\ell - 50)^2 \leq 2500$. Donc $100\, Y \leq 2500$, puis $Y \leq 25$, et l'inefficacité $2Y$ est inférieure ou égale à $50$.

### Conclusion

Quels que soient les besoins des chiens, Cruella peut obtenir une inefficacité inférieure ou égale à $50$, et il existe des besoins pour lesquels elle ne peut pas descendre en dessous de $50$. **Le plus petit réel cherché est $I = 50$.**

## Going further

1. Une idée naturelle est de donner à chaque chien l'entier le plus proche de son besoin. Montrez qu'elle ne marche pas : avec $a_1 = \cdots = a_{99} = \frac{1}{3}$ et $a_{100} = 67$, combien de steaks seraient distribués ?
2. La méthode de la solution revient à donner les steaks un par un, à chaque fois au chien qui a le plus faim à ce moment-là. Montrez que c'est la meilleure méthode possible : si un chien $i$ a plus faim qu'un chien $j$ ($a_i > a_j$) mais reçoit moins de steaks ($b_i < b_j$), échanger leurs rations ne fait jamais augmenter l'inefficacité.
3. Que devient la réponse avec $n$ chiens et $n$ steaks, quand $n$ est pair ? Et quand $n$ est impair ?
