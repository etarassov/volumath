---
id: "7453"
title: "Les dix chiffres et le nombre 11111"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [divisibilite, chiffres, denombrement, congruences]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, chasse au trésor"
  reference: "stage_ete_2011.pdf, « Chasse au trésor », exercices des avancés, exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

Un nombre de dix chiffres est dit **intéressant** si ses dix chiffres sont tous différents et
s'il est un multiple de $11111$.

Combien y a-t-il de nombres intéressants ?

## Hints

1. Un nombre de dix chiffres tous différents utilise chacun des chiffres de $0$ à $9$ exactement
   une fois. Que vaut la somme de ses chiffres ? Qu'en déduis-tu sur sa divisibilité par $9$ ?
2. Le nombre $11111$ n'est pas divisible par $3$. Si un nombre est à la fois multiple de $9$ et de
   $11111$, de quel nombre est-il multiple ?
3. Coupe le nombre en deux moitiés de cinq chiffres : $n = 10^5 x + y$. Que vaut $10^5$ modulo
   $99999$ ?
4. Tu obtiens que $99999$ divise $x + y$. Encadre $x+y$ : il n'y a qu'une valeur possible.
5. De $x + y = 99999$, déduis que les chiffres se marient deux à deux, le premier avec le sixième,
   le deuxième avec le septième, et ainsi de suite. Il ne reste plus qu'à compter.

## Solution

Soit $n$ un nombre intéressant, écrit
$$n = \overline{a\,b\,c\,d\,e\,f\,g\,h\,i\,j}.$$

Ses dix chiffres étant tous différents, ce sont exactement les dix chiffres $0, 1, \ldots, 9$,
chacun une fois. Et $a \neq 0$, puisque $n$ a dix chiffres.

### Étape 1 : $n$ est un multiple de $99999$

La somme des chiffres de $n$ vaut
$$0 + 1 + 2 + \cdots + 9 = 45,$$
qui est divisible par $9$. Donc $n$ est divisible par $9$.

Par ailleurs $n$ est divisible par $11111$ par hypothèse. Or $11111$ n'est pas divisible par $3$
(la somme de ses chiffres vaut $5$), donc $9$ et $11111$ sont premiers entre eux. Un nombre
divisible par deux nombres premiers entre eux est divisible par leur produit :
$$n \text{ est divisible par } 9 \times 11111 = 99999.$$

### Étape 2 : les deux moitiés

Coupons $n$ en deux blocs de cinq chiffres :
$$x = \overline{a\,b\,c\,d\,e} \qquad \text{et} \qquad y = \overline{f\,g\,h\,i\,j},$$
de sorte que
$$n = 10^5 \, x + y.$$
(Le bloc $y$ peut commencer par $0$ ; on le considère comme un nombre entre $0$ et $99999$.)

L'observation clé :
$$10^5 = 100000 = 99999 + 1, \qquad \text{donc} \qquad 10^5 \equiv 1 \pmod{99999}.$$

Par conséquent
$$n = 10^5 x + y \equiv x + y \pmod{99999}.$$

Comme $99999$ divise $n$, on obtient que **$99999$ divise $x + y$**.

### Étape 3 : $x + y = 99999$

Encadrons $x + y$.

- $a \neq 0$, donc $x \geqslant 10000 > 0$, et $y \geqslant 0$ : ainsi $x + y > 0$.
- $x \leqslant 99999$ et $y \leqslant 99999$, donc $x + y \leqslant 199998$. L'égalité exigerait
  $x = y = 99999$, impossible puisque les chiffres de $n$ sont tous différents. Donc
  $x + y < 199998$.

Le seul multiple de $99999$ strictement compris entre $0$ et $199998$ est $99999$ lui-même :
$$x + y = 99999.$$

### Étape 4 : les chiffres se marient deux à deux

Posons
$$s_4 = a+f, \quad s_3 = b+g, \quad s_2 = c+h, \quad s_1 = d+i, \quad s_0 = e+j.$$
Chacun de ces nombres est compris entre $0$ et $18$. En additionnant $x$ et $y$ colonne par
colonne :
$$s_4 \cdot 10^4 + s_3 \cdot 10^3 + s_2 \cdot 10^2 + s_1 \cdot 10 + s_0 = 99999
= 9 \cdot 10^4 + 9 \cdot 10^3 + 9 \cdot 10^2 + 9 \cdot 10 + 9.$$

Donc, en posant $c_k = s_k - 9$ (chaque $c_k$ est entre $-9$ et $9$) :
$$c_4 \cdot 10^4 + c_3 \cdot 10^3 + c_2 \cdot 10^2 + c_1 \cdot 10 + c_0 = 0.$$

**Tous les $c_k$ sont nuls.** Sinon, appelons $m$ le plus grand indice tel que $c_m \neq 0$. Alors
$$\left| c_{m-1} 10^{m-1} + \cdots + c_0 \right| \leqslant 9\left(10^{m-1} + \cdots + 1\right)
= 10^m - 1 < 10^m \leqslant \left| c_m \right| 10^m,$$
et la somme ne pourrait pas être nulle.

Donc
$$a + f = b + g = c + h = d + i = e + j = 9.$$

### Étape 5 : le comptage

Les cinq paires $(a,f)$, $(b,g)$, $(c,h)$, $(d,i)$, $(e,j)$ utilisent les dix chiffres, chacun une
fois, et chaque paire a pour somme $9$. Les seules paires de chiffres distincts de somme $9$ sont
$$\{0 \, ; 9\}, \quad \{1 \, ; 8\}, \quad \{2 \, ; 7\}, \quad \{3 \, ; 6\}, \quad \{4 \, ; 5\},$$
et il y en a exactement cinq : chacune est donc utilisée exactement une fois.

Construire un nombre revient alors à faire deux choix :

- **répartir les cinq paires** sur les cinq positions $(a,f)$, $(b,g)$, $(c,h)$, $(d,i)$, $(e,j)$ :
  $5! = 120$ façons ;
- **pour chaque paire, décider lequel des deux chiffres va dans la première moitié** : $2^5 = 32$
  façons.

Cela fait $120 \times 32 = 3840$ suites de dix chiffres. Mais il faut retirer celles qui
commencent par $0$.

Comptons celles où $a = 0$. Le chiffre $0$ appartient à la paire $\{0 \, ; 9\}$, qui doit donc
occuper la position $(a,f)$, orientée avec le $0$ devant : cela ne laisse aucun choix. Il reste à
répartir les quatre autres paires sur les quatre positions restantes ($4! = 24$ façons) et à les
orienter ($2^4 = 16$ façons), soit
$$24 \times 16 = 384 \text{ cas.}$$

Il reste donc
$$3840 - 384 = 3456.$$

### Conclusion

$$\boxed{3456 \text{ nombres intéressants}}$$

Réciproquement, chacun des $3456$ nombres construits convient bien : ses dix chiffres sont tous
différents, il ne commence pas par $0$, et comme $x + y = 99999$ on a
$n = 10^5x + y = 99999\,x + (x+y) = 99999(x+1)$, qui est bien un multiple de $11111$.

## Going further

1. Le plus petit et le plus grand des nombres intéressants : les écrire.
2. Reprendre la question en remplaçant $11111$ par $41$, puis par $271$ (on rappelle que
   $11111 = 41 \times 271$). Le raisonnement tient-il encore ?
