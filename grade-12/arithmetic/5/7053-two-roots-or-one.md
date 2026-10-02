---
id: "7053"
title: "Deux racines carrées ou une seule"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 45
tags: [partie-entiere, racine-carree, carres-modulo-quatre, encadrement]
adapted_from: null
see_also: ["7052"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Saint-Pierre-lès-Nemours 2009"
  reference: "stage_junior_2009.pdf, « Partie entière et valeur absolue » (François Lo Jacomo), exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2009.pdf"
---

## Statement

Pour un réel $x \geq 0$, on note $\lfloor x \rfloor$ sa **partie entière** : le plus grand
entier inférieur ou égal à $x$.

1. Montrer que pour tout entier naturel $n$,
   $$\left\lfloor \sqrt n + \sqrt{n+2} \right\rfloor = \left\lfloor \sqrt{4n+2} \right\rfloor .$$
2. Trouver un réel $x \geq 0$ pour lequel
   $\left\lfloor \sqrt x + \sqrt{x+2} \right\rfloor \neq \left\lfloor \sqrt{4x+2} \right\rfloor$.

## Hints

1. Essaie $n = 3$, $n = 7$, $n = 10$ pour voir ce que disent les deux membres.
2. Les deux nombres sont positifs, donc comparer leurs parties entières revient à comparer
   leurs carrés à des carrés d'entiers.
3. Développe $(\sqrt n + \sqrt{n+2})^2$. Tu obtiens $2n + 2 + 2\sqrt{n(n+2)}$. Encadre
   $\sqrt{n(n+2)}$ entre deux entiers consécutifs.
4. Tu devrais trouver $4n + 2 \leq (\sqrt n + \sqrt{n+2})^2 < 4n + 4$. Le carré d'un entier
   peut-il valoir $4n + 3$ ?
5. Pour la question 2, essaie un $x$ non entier, par exemple $x = \dfrac32$.

## Solution

### Question 1

**Traduire en carrés.**

Les deux nombres $\sqrt n + \sqrt{n+2}$ et $\sqrt{4n+2}$ sont positifs. Pour un réel
$y \geq 0$, dire que $\lfloor y \rfloor = k$ revient à dire que $k^2$ est le plus grand carré
d'entier inférieur ou égal à $y^2$.

Il suffit donc de comparer les deux carrés
$$A = \left(\sqrt n + \sqrt{n+2}\right)^2 \qquad \text{et} \qquad B = 4n + 2 ,$$
et de montrer qu'ils ont le même « plus grand carré en dessous ».

**Encadrer $A$.**

$$A = n + (n+2) + 2\sqrt{n(n+2)} = 2n + 2 + 2\sqrt{n(n+2)} .$$

Or $n^2 \leq n(n+2) = n^2 + 2n < n^2 + 2n + 1 = (n+1)^2$, donc
$$n \leq \sqrt{n(n+2)} < n + 1 ,$$
d'où $2n \leq 2\sqrt{n(n+2)} < 2n + 2$ et finalement
$$4n + 2 \leq A < 4n + 4 .$$

(La première inégalité est une égalité uniquement pour $n = 0$.)

**Comparer les plus grands carrés.**

Notons $k = \left\lfloor \sqrt{4n+2} \right\rfloor$ : $k^2$ est le plus grand carré $\leq 4n+2$.
Notons $\ell = \left\lfloor \sqrt A \right\rfloor$ : $\ell^2$ est le plus grand carré
$\leq A$.

- Comme $4n + 2 \leq A$, tout carré $\leq 4n+2$ est aussi $\leq A$, donc $\ell \geq k$.
- Comme $A < 4n + 4$ et que $\ell^2$ est un entier $\leq A$, on a $\ell^2 \leq 4n + 3$.

Il reste à écarter le cas $\ell^2 = 4n+3$. C'est impossible, car **aucun carré d'entier n'est
de la forme $4m + 3$** :

- si $\ell$ est pair, $\ell = 2q$ et $\ell^2 = 4q^2$, donc $\ell^2 \equiv 0 \pmod 4$ ;
- si $\ell$ est impair, $\ell = 2q+1$ et $\ell^2 = 4q^2 + 4q + 1 = 4q(q+1) + 1$, donc
  $\ell^2 \equiv 1 \pmod 4$.

Un carré est donc toujours congru à $0$ ou $1$ modulo $4$, jamais à $3$.

Ainsi $\ell^2 \leq 4n + 2$, ce qui donne $\ell \leq k$. Avec l'inégalité précédente,
$\ell = k$, c'est-à-dire
$$\left\lfloor \sqrt n + \sqrt{n+2} \right\rfloor = \left\lfloor \sqrt{4n+2} \right\rfloor .
\qquad \blacksquare$$

### Question 2

Prenons $x = \dfrac 32$. Alors
$$\sqrt{\frac32} + \sqrt{\frac32 + 2} = \sqrt{\frac32} + \sqrt{\frac72} ,$$
et numériquement $\sqrt{\text{1,5}} \approx \text{1,2247}$,
$\sqrt{\text{3,5}} \approx \text{1,8708}$, dont la somme vaut environ $\text{3,0955}$. Sa
partie entière est donc $3$.

De l'autre côté, $4x + 2 = 6 + 2 = 8$, et $\sqrt 8 \approx \text{2,828}$, dont la partie
entière est $2$.

Les deux membres valent $3$ et $2$ : ils diffèrent. L'égalité de la question 1 utilise donc
bien le fait que $n$ soit **entier**.

## Going further

Ce qui fait marcher la question 1 est un fait d'arithmétique glissé au milieu d'un calcul de
racines : **un carré n'est jamais congru à $3$ modulo $4$.** L'encadrement laissait la place
à deux réponses possibles, et c'est l'arithmétique qui a éliminé la mauvaise.

Retiens ce fait, il sert constamment. Par exemple, il montre d'un trait que l'équation
$a^2 + b^2 = 4c + 3$ n'a aucune solution entière : une somme de deux carrés est congrue à
$0$, $1$ ou $2$ modulo $4$, jamais à $3$.
