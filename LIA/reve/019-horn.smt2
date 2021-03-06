(set-info :smt-lib-version 2.6)
(set-logic HORN)
(set-info :origin "
  Horn benchmarks for regression verification problems,
  weaving done by Reve

  References:

  http://formal.iti.kit.edu/projects/improve/reve/

  Dennis Felsing, Sarah Grebing, Vladimir Klebanov, Philipp Rümmer,
  Mattias Ulbrich:
  Automating regression verification. ASE 2014: 349-360

  Clausification by Eldarica
")
(set-info :status sat)
(declare-fun INV1 (Int Int Int Int Int Int) Bool)
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(=> (and (and (and (and (and (= (+ G 1) E) (= (+ H 2) F)) (not (>= (+ (- (+ A A) B) (- 1)) 0))) (>= (+ (- D G) (- 1)) 0)) (INV1 A B C D G H)) (= I J)) (INV1 A B C D E F))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int))(=> (and (and (and (and (and (and (and (= (+ G 1) B) (= (+ H 1) C)) (= (+ I 1) E)) (= (+ J 2) F)) (>= (+ (- (+ A A) G) (- 1)) 0)) (>= (+ (- D I) (- 1)) 0)) (INV1 A G H D I J)) (= K L)) (INV1 A B C D E F))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(=> (and (and (and (and (and (= (+ G 1) B) (= (+ H 1) C)) (>= (+ (- (+ A A) G) (- 1)) 0)) (not (>= (+ (- D E) (- 1)) 0))) (INV1 A G H D E F)) (= I J)) (INV1 A B C D E F))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int)) (not (and (and (and (and (not (= A B)) (not (>= (+ (- (+ C C) D) (- 1)) 0))) (not (>= (+ (- E F) (- 1)) 0))) (INV1 C D A E F B)) (= G H)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int))(=> (and (and (and (and (= (* (- 1) B) 0) (= (* (- 1) C) 0)) (= (* (- 1) E) 0)) (= (* (- 1) F) 0)) (= A D)) (INV1 A B C D E F))))
(check-sat)
