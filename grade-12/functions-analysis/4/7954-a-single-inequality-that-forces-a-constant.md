---
id: "7954"
title: "Une seule inégalité qui force une fonction constante"
grade: 12
theme: functions-analysis
difficulty: 4
duration_min: 35
tags: [equation fonctionnelle, inegalite, somme et produit, second degre]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, la muraille"
  reference: "stage_ete_2016.pdf, « La muraille », exercice 30, niveau 1 (énoncé p. 282 ; le polycopié ne donne pas de solution pour cet exercice)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Soit $f : \mathbb{R} \to \mathbb{R}$ une fonction telle que

$$f(x + y) \ \ge \ f(xy) \qquad \text{pour tous réels } x \text{ et } y .$$

Montrer que $f$ est constante.

## Hints

1. L'hypothèse compare $f$ en la **somme** et en le **produit** de deux nombres. Étant donné une somme $s$ et un produit $p$, quand existe-t-il deux réels $x$ et $y$ qui les réalisent ?
2. Deux nombres de somme $s$ et de produit $p$ sont les racines de $X^2 - sX + p = 0$. À quelle condition sur $s$ et $p$ ces racines sont-elles réelles ?
3. Tu obtiens : $f(s) \ge f(p)$ dès que $p \le \frac{s^2}{4}$. Que donne cette relation quand $p$ est très négatif ?
4. Montre d'abord que $f$ est constante sur les négatifs, puis compare une valeur quelconque à cette constante, dans les deux sens.

## Solution

**Étape 1 : traduire l'hypothèse.**

Soient $s$ et $p$ deux réels. Il existe deux réels $x$ et $y$ de somme $s$ et de produit $p$ si et seulement si l'équation

$$X^2 - sX + p = 0$$

a des racines réelles, c'est-à-dire si et seulement si son discriminant $s^2 - 4p$ est positif ou nul, autrement dit

$$p \le \frac{s^2}{4} .$$

Dans ce cas, en appliquant l'hypothèse à ces $x$ et $y$, on obtient $f(s) \ge f(p)$. Retenons :

> $$(\star) \qquad \text{si } \ p \le \frac{s^2}{4} , \ \text{ alors } \ f(s) \ge f(p) .$$

**Étape 2 : $f$ est constante sur les nombres négatifs.**

Soit $a$ un réel quelconque et soit $N \le 0$. Comme $\dfrac{a^2}{4} \ge 0 \ge N$, la condition de $(\star)$ est remplie avec $s = a$ et $p = N$. Donc

$$f(a) \ge f(N) \qquad \text{pour tout réel } a \text{ et tout } N \le 0 . \qquad (\star\star)$$

Appliquons $(\star\star)$ à deux négatifs $N_1 \le 0$ et $N_2 \le 0$ : en prenant $a = N_1$ et $N = N_2$ on obtient $f(N_1) \ge f(N_2)$, et en échangeant les rôles $f(N_2) \ge f(N_1)$. Donc

$$f(N_1) = f(N_2) .$$

La fonction $f$ prend donc une seule et même valeur sur l'ensemble des réels négatifs ou nuls ; notons-la $K$.

**Étape 3 : $f(a) \ge K$ pour tout $a$.**

C'est exactement $(\star\star)$ : pour tout réel $a$ et tout $N \le 0$, $f(a) \ge f(N) = K$.

**Étape 4 : $f(a) \le K$ pour tout $a$.**

Soit $a$ un réel. Choisissons

$$N = -2\sqrt{|a| + 1} ,$$

qui est bien négatif. Alors $N^2 = 4\left(|a|+1\right) \ge 4a$, c'est-à-dire

$$a \le \frac{N^2}{4} .$$

La condition de $(\star)$ est remplie avec $s = N$ et $p = a$, donc

$$K = f(N) \ge f(a) .$$

**Conclusion.** Pour tout réel $a$, on a à la fois $f(a) \ge K$ et $f(a) \le K$, donc $f(a) = K$. La fonction $f$ est constante.

*Réciproquement,* toute fonction constante vérifie bien $f(x+y) \ge f(xy)$, avec égalité partout.

## Going further

Tout repose sur une dissymétrie : pour une somme $s$ donnée, le produit $p$ peut être **aussi petit qu'on veut** (prendre $x$ très grand et $y = s - x$ très négatif), mais il ne peut pas dépasser $\frac{s^2}{4}$. L'hypothèse permet donc de comparer $f(s)$ à $f(p)$ pour tous les $p$ en dessous d'un certain seuil, et c'est en faisant jouer ce seuil dans les deux sens qu'on coince la fonction.
