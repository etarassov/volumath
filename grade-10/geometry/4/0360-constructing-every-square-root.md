---
id: "0360"
title: "Construire toutes les racines carrées"
grade: 10
theme: geometry
difficulty: 4
duration_min: 40
tags: [construction, regle-et-compas, pythagore, racine-carree, de-proche-en-proche]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок 8–9 класс, второе полугодие, часть II, пособие для преподавателей"
  reference: "AU2.pdf, листок 5, задачи 2, 3 и 4"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU2.pdf"
---

## Statement

On dispose d'un segment de longueur $1$, d'une règle non graduée et d'un compas. Avec ces deux instruments, on sait déjà :

- tracer la droite passant par deux points construits ;
- tracer le cercle de centre un point construit et de rayon une longueur déjà construite ;
- reporter sur une droite une longueur déjà construite ;
- élever la perpendiculaire à une droite en un de ses points.

**1.** Construire des segments de longueurs $\sqrt{2}$, $\sqrt{5}$, $\sqrt{8}$, $\sqrt{13}$ et $\sqrt{17}$.

**2.** Construire des segments de longueurs $\sqrt{3}$, $\sqrt{6}$, $\sqrt{7}$ et $\sqrt{14}$.

**3.** Montrer que, pour tout entier naturel $n \ge 1$, on peut construire un segment de longueur $\sqrt{n}$.

## Hints

1. Quel théorème du collège fabrique une longueur contenant une racine carrée à partir de deux autres longueurs ?
2. Le théorème de Pythagore : dans un triangle rectangle dont les côtés de l'angle droit mesurent $a$ et $b$, l'hypoténuse mesure $\sqrt{a^2 + b^2}$. Pour la question 1, écris chaque nombre placé sous la racine comme une somme de deux carrés d'entiers. N'oublie pas qu'en reportant le segment de longueur $1$ bout à bout, on construit tous les entiers.
3. Pour la question 2, essaie d'écrire $3$, $6$, $7$ et $14$ comme somme de deux carrés d'entiers : c'est impossible. Mais les côtés de l'angle droit sont-ils obligés d'être entiers ? Regarde les longueurs que tu viens de construire à la question 1.
4. Pour la question 3, cherche à passer de $\sqrt{k}$ à $\sqrt{k+1}$ en une seule construction. Que doivent mesurer les deux côtés de l'angle droit ?

## Solution

**L'outil : le théorème de Pythagore, utilisé comme une machine à construire.**

Dans un triangle rectangle dont les côtés de l'angle droit mesurent $a$ et $b$, l'hypoténuse mesure $\sqrt{a^2 + b^2}$. On en tire la règle suivante :

> Si on sait construire deux longueurs $a$ et $b$, alors on sait construire $\sqrt{a^2 + b^2}$.

La construction est toujours la même : on trace deux demi-droites perpendiculaires issues d'un même point, on reporte $a$ sur l'une et $b$ sur l'autre, puis on joint les deux extrémités. Le segment obtenu est l'hypoténuse cherchée.

Remarquons aussi qu'en reportant le segment de longueur $1$ bout à bout, on construit $2$, puis $3$, puis $4$, et ainsi de suite : tous les entiers sont à notre disposition.

**Question 1 : des sommes de deux carrés d'entiers.**

Il suffit d'écrire le nombre placé sous la racine comme une somme de deux carrés :

- $2 = 1^2 + 1^2$, donc $\sqrt{2}$ est l'hypoténuse d'un triangle rectangle de côtés $1$ et $1$ ;
- $5 = 1^2 + 2^2$, donc $\sqrt{5}$ : côtés $1$ et $2$ ;
- $8 = 2^2 + 2^2$, donc $\sqrt{8}$ : côtés $2$ et $2$ ;
- $13 = 2^2 + 3^2$, donc $\sqrt{13}$ : côtés $2$ et $3$ ;
- $17 = 1^2 + 4^2$, donc $\sqrt{17}$ : côtés $1$ et $4$.

**Question 2 : on réutilise les longueurs déjà construites.**

Les nombres $3$, $6$, $7$ et $14$ ne sont pas des sommes de deux carrés d'entiers : on ne peut pas s'en tirer avec des côtés entiers. Mais rien n'oblige les côtés de l'angle droit à être entiers, et la question 1 vient de nous fournir de nouvelles longueurs. C'est la seule idée à avoir.

- $3 = 1^2 + \left(\sqrt{2}\right)^2$, donc $\sqrt{3}$ : côtés $1$ et $\sqrt{2}$ ;
- $6 = 2^2 + \left(\sqrt{2}\right)^2$, donc $\sqrt{6}$ : côtés $2$ et $\sqrt{2}$ ;
- $7 = 2^2 + \left(\sqrt{3}\right)^2$, donc $\sqrt{7}$ : côtés $2$ et $\sqrt{3}$, que l'on vient tout juste de construire ;
- $14 = 1^2 + \left(\sqrt{13}\right)^2$, donc $\sqrt{14}$ : côtés $1$ et $\sqrt{13}$.

**Question 3 : toutes les racines carrées, de proche en proche.**

*Le pas élémentaire.* Supposons qu'on sache déjà construire un segment de longueur $\sqrt{k}$. Construisons un triangle rectangle dont les côtés de l'angle droit mesurent $1$ et $\sqrt{k}$ : ce sont deux longueurs dont nous disposons. Son hypoténuse mesure

$$\sqrt{1^2 + \left(\sqrt{k}\right)^2} = \sqrt{1 + k} = \sqrt{k+1}.$$

Donc : **dès qu'on sait construire $\sqrt{k}$, on sait construire $\sqrt{k+1}$.**

*On enchaîne.* Le segment de départ a pour longueur $1 = \sqrt{1}$ : on sait donc construire $\sqrt{1}$. Le pas élémentaire donne alors $\sqrt{2}$ ; appliqué à $\sqrt{2}$, il donne $\sqrt{3}$ ; puis $\sqrt{4}$, puis $\sqrt{5}$... En répétant $n - 1$ fois, on atteint $\sqrt{n}$.

**Conclusion.** À partir d'un seul segment de longueur $1$, la règle et le compas permettent de construire un segment de longueur $\sqrt{n}$ pour n'importe quel entier naturel $n \ge 1$.

**La spirale de Théodore.**

Si l'on enchaîne tous ces pas autour d'un même point $O$, en prenant à chaque étape l'hypoténuse précédente comme nouveau côté de l'angle droit et en gardant l'autre côté égal à $1$, les triangles s'enroulent les uns contre les autres. La figure obtenue s'appelle la **spirale de Théodore** : ses rayons successifs mesurent $1$, $\sqrt{2}$, $\sqrt{3}$, $\sqrt{4}$, et ainsi de suite.

![La spirale de Théodore : les rayons successifs mesurent 1, racine de 2, racine de 3, etc.](0360-figure-1.svg)

## Going further

1. Quels sont les entiers $n$ compris entre $1$ et $20$ qui s'écrivent comme somme de deux carrés d'entiers (éventuellement nuls) ? Pour ceux-là, la construction de $\sqrt{n}$ se fait en une seule étape.
2. Sur la spirale de Théodore, mesurer au rapporteur les angles au centre des premiers triangles. Au bout de combien d'étapes la spirale fait-elle un tour complet ?
3. On dispose maintenant d'un segment de longueur $1$. Construire un segment de longueur $\dfrac{1}{5}$, puis un segment de longueur $\dfrac{4}{5}$. *Indication : utiliser le théorème de Thalès.*
