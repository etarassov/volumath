---
id: "7831"
title: "Le produit de deux sommes cycliques"
grade: 12
theme: algebra
difficulty: 4
duration_min: 35
tags: [inegalite, inegalite-arithmetico-geometrique, somme-cyclique, factorisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, test de mi-parcours du vendredi 21 août, groupe A, exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Montrer que pour tous nombres réels positifs $a$, $b$ et $c$,
$$\left(a^2 b + b^2 c + c^2 a\right)\left(a b^2 + b c^2 + c a^2\right) \geq 9\,a^2 b^2 c^2 .$$

## Hints

1. Surtout ne développe pas : il y aurait neuf termes de chaque côté. Traite chaque parenthèse
   séparément.
2. Le membre de droite est $9\,a^2b^2c^2 = 3abc \times 3abc$. Cela suggère de montrer que
   **chacune** des deux parenthèses est au moins $3abc$.
3. Pour cela, il te faut l'inégalité arithmético-géométrique à trois termes :
   $u + v + w \geq 3\sqrt[3]{uvw}$ pour $u, v, w \geq 0$.
4. Calcule le produit des trois termes de la première parenthèse :
   $a^2b \times b^2c \times c^2a$. Que vaut sa racine cubique ?
5. Pour démontrer l'inégalité à trois termes, pose $u = p^3$, $v = q^3$, $w = r^3$ et utilise
   l'identité $p^3 + q^3 + r^3 - 3pqr = (p+q+r)\left(p^2+q^2+r^2-pq-qr-rp\right)$.

## Solution

**Étape 1 : l'inégalité arithmético-géométrique à trois termes.**

Montrons d'abord que, pour tous réels positifs $p$, $q$, $r$,
$$p^3 + q^3 + r^3 \geq 3pqr . \qquad (\star)$$

On part de l'identité (que l'on peut vérifier en développant le membre de droite) :
$$p^3 + q^3 + r^3 - 3pqr = (p + q + r)\left(p^2 + q^2 + r^2 - pq - qr - rp\right) .$$

Le second facteur se réécrit
$$p^2 + q^2 + r^2 - pq - qr - rp
 = \frac{1}{2}\Big[(p-q)^2 + (q-r)^2 + (r-p)^2\Big] \geq 0 .$$

Comme $p + q + r \geq 0$, le produit est positif ou nul, ce qui prouve $(\star)$.

En posant $u = p^3$, $v = q^3$, $w = r^3$ (donc $p = \sqrt[3]{u}$, etc.), $(\star)$ s'écrit
$$u + v + w \geq 3\,\sqrt[3]{uvw} \qquad \text{pour tous } u, v, w \geq 0 . \qquad (\star\star)$$

**Étape 2 : on minore la première parenthèse.**

Appliquons $(\star\star)$ à $u = a^2b$, $v = b^2c$, $w = c^2a$. Leur produit vaut
$$a^2 b \times b^2 c \times c^2 a = a^{2+1} b^{1+2} c^{1+2} = a^3 b^3 c^3 = (abc)^3 ,$$
dont la racine cubique est $abc$. Donc
$$a^2 b + b^2 c + c^2 a \geq 3abc .$$

**Étape 3 : on minore la seconde parenthèse.**

De même, appliquons $(\star\star)$ à $u = ab^2$, $v = bc^2$, $w = ca^2$. Leur produit vaut
$$ab^2 \times bc^2 \times ca^2 = a^{1+2}\,b^{2+1}\,c^{2+1} = a^3b^3c^3 = (abc)^3 ,$$
dont la racine cubique est encore $abc$. Donc
$$ab^2 + bc^2 + ca^2 \geq 3abc .$$

**Étape 4 : on multiplie.**

Les deux minorants $3abc$ sont positifs, et les deux membres de gauche aussi. On peut donc
multiplier les deux inégalités :
$$\left(a^2 b + b^2 c + c^2 a\right)\left(a b^2 + b c^2 + c a^2\right)
 \geq 3abc \times 3abc = 9\,a^2b^2c^2 .$$

C'est exactement ce qu'il fallait démontrer.

**Cas d'égalité.** Si $a = b = c$, les deux parenthèses valent $3a^3$ et le produit vaut
$9a^6 = 9a^2b^2c^2$ : l'égalité est atteinte. Elle l'est aussi de façon dégénérée lorsque deux
des trois nombres sont nuls, les deux membres valant alors $0$.
