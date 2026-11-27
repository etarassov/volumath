---
id: "40771"
title: "((a + c)/(b + c))ⁿ + ((b + c)/(a + c))ⁿ ≤ (a/b)ⁿ + (b/a)ⁿ"
grade: 9
theme: algebra
difficulty: 3
duration_min: 30
tags: [inegalite, puissances, rapport, monotonie, produit-en-croix]
adapted_from: null
see_also: ["40767", "40768", "40769", "40770", "40772"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2021, mathématiques"
  reference: "cg-2021-s-sujet.pdf, problème 3 « Que la force soit avec f ! », partie IV « Application à la démonstration d'inégalités », question 14. Le sujet la déduit de la théorie des fonctions faibles ; la solution ci-dessous est directe."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2021.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2021-s-sujet.pdf"
---

## Statement

Soient $a$, $b$ et $c$ trois réels strictement positifs, et $n$ un entier naturel non nul. Démontrer que

$$\left(\frac{a + c}{b + c}\right)^n + \left(\frac{b + c}{a + c}\right)^n \leqslant \left(\frac{a}{b}\right)^n + \left(\frac{b}{a}\right)^n.$$

## Hints

1. Les deux membres ne changent pas si l'on échange $a$ et $b$. On peut donc supposer $a \leqslant b$.
2. Posons $r = \frac{b}{a}$ et $s = \frac{b + c}{a + c}$. Les deux membres s'écrivent $s^n + \frac{1}{s^n}$ et $r^n + \frac{1}{r^n}$. Comparer $s$, $r$ et $1$.
3. Pour montrer $s \leqslant r$, faire un produit en croix.
4. Il reste à voir que $t \mapsto t + \frac{1}{t}$ est croissante pour $t \geqslant 1$ : si $1 \leqslant t < t'$, factoriser $\left(t' + \frac{1}{t'}\right) - \left(t + \frac{1}{t}\right)$ par $t' - t$.

## Solution

*On se ramène à $a \leqslant b$.* Si l'on échange $a$ et $b$, chacun des deux membres reste le même (ses deux termes sont échangés). On peut donc supposer $a \leqslant b$.

*Deux rapports.* Posons $r = \frac{b}{a}$ et $s = \frac{b + c}{a + c}$. Comme $\frac{a}{b} = \frac{1}{r}$ et $\frac{a + c}{b + c} = \frac{1}{s}$, l'inégalité à démontrer s'écrit

$$s^n + \frac{1}{s^n} \leqslant r^n + \frac{1}{r^n}.$$

*Comparaison de $1$, $s$ et $r$.* Comme $a \leqslant b$, on a $a + c \leqslant b + c$, donc $s \geqslant 1$. Ensuite, comme les dénominateurs sont positifs,

$$s \leqslant r \iff \frac{b + c}{a + c} \leqslant \frac{b}{a} \iff a(b + c) \leqslant b(a + c) \iff ac \leqslant bc,$$

ce qui est vrai puisque $a \leqslant b$ et $c > 0$. Donc $1 \leqslant s \leqslant r$. En multipliant $n$ fois membre à membre ces inégalités entre nombres positifs, on obtient $1 \leqslant s^n \leqslant r^n$.

*La fonction $t \mapsto t + \frac{1}{t}$ est croissante pour $t \geqslant 1$.* Soit $1 \leqslant t \leqslant t'$. Alors

$$\left(t' + \frac{1}{t'}\right) - \left(t + \frac{1}{t}\right) = (t' - t) + \frac{t - t'}{t t'} = (t' - t)\left(1 - \frac{1}{t t'}\right).$$

Le premier facteur est positif ou nul ; le second aussi, car $t t' \geqslant 1$. Donc $t + \frac{1}{t} \leqslant t' + \frac{1}{t'}$.

*Conclusion.* On applique ce résultat à $t = s^n$ et $t' = r^n$, qui vérifient $1 \leqslant s^n \leqslant r^n$ :

$$s^n + \frac{1}{s^n} \leqslant r^n + \frac{1}{r^n},$$

ce qui est l'inégalité demandée.

**Bilan.** Ajouter un même nombre $c > 0$ au numérateur et au dénominateur d'une fraction la rapproche de $1$ : le rapport $\frac{b + c}{a + c}$ est compris entre $1$ et $\frac{b}{a}$. Comme $t + \frac{1}{t}$ grandit quand $t$ s'éloigne de $1$ (pour $t \geqslant 1$), cela donne l'inégalité pour toute puissance $n$.

## Going further

- Dans quel cas a-t-on égalité ?
- Dans le sujet, cette inégalité venait d'une théorie générale : une fonction $f > 0$ est dite $n$-faible quand $\frac{\max(f(x), f(y))}{\min(f(x), f(y))} \leqslant \frac{\max(x^n, y^n)}{\min(x^n, y^n)}$ pour tous $x$, $y$ (exercices 40767 à 40770). Ici, la fonction $x \mapsto (x + c)^n$ est $n$-faible sur $]0, +\infty[$.
