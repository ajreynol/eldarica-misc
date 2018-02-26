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
(set-info :status unsat)
(declare-fun REC_f_f (Int Int Int Int Int) Bool)
(declare-fun REC__f (Int Int Int) Bool)
(declare-fun REC_f_ (Int Int) Bool)
(assert (not (exists ((A Int) (B Int) (C Int) (D Int) (E Int))(and (and (and (not (= A B)) (= (* (- 1) C) 0)) (REC_f_f D A E C B)) (= D E)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int))(=> (and (and (and (and (and (and (= (* (- 1) B) 0) (= (+ C (- 1)) F)) (= (+ (+ C D) (- 31)) G)) (REC__f F G E)) (>= (+ (+ (+ C D) (- 16)) (- 1)) 0)) (not (<= C 0))) (<= A 0)) (REC_f_f A B C D E))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int))(=> (and (and (and (and (and (and (= (* (- 1) B) 0) (= (+ C (- 1)) F)) (= (+ C D) G)) (REC__f F G E)) (not (>= (+ (+ (+ C D) (- 16)) (- 1)) 0))) (not (<= C 0))) (<= A 0)) (REC_f_f A B C D E))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))(=> (and (and (= (* (- 1) B) 0) (<= C 0)) (<= A 0)) (REC_f_f A B C D D))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int))(=> (and (and (and (and (and (and (and (and (= (+ (+ F A) (- 32)) B) (>= (+ (+ (+ F A) (- 15)) (- 1)) 0)) (= (+ A (- 1)) G)) (= (+ C (- 1)) H)) (= (+ (+ C D) (- 31)) I)) (REC_f_f G F H I E)) (>= (+ (+ (+ C D) (- 16)) (- 1)) 0)) (not (<= C 0))) (not (<= A 0))) (REC_f_f A B C D E))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int))(=> (and (and (and (and (and (and (and (and (= (+ F A) B) (not (>= (+ (+ (+ F A) (- 15)) (- 1)) 0))) (= (+ A (- 1)) G)) (= (+ C (- 1)) H)) (= (+ (+ C D) (- 31)) I)) (REC_f_f G F H I E)) (>= (+ (+ (+ C D) (- 16)) (- 1)) 0)) (not (<= C 0))) (not (<= A 0))) (REC_f_f A B C D E))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int))(=> (and (and (and (and (and (and (and (and (= (+ (+ F A) (- 32)) B) (>= (+ (+ (+ F A) (- 15)) (- 1)) 0)) (= (+ A (- 1)) G)) (= (+ C (- 1)) H)) (= (+ C D) I)) (REC_f_f G F H I E)) (not (>= (+ (+ (+ C D) (- 16)) (- 1)) 0))) (not (<= C 0))) (not (<= A 0))) (REC_f_f A B C D E))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int))(=> (and (and (and (and (and (and (and (and (= (+ F A) B) (not (>= (+ (+ (+ F A) (- 15)) (- 1)) 0))) (= (+ A (- 1)) G)) (= (+ C (- 1)) H)) (= (+ C D) I)) (REC_f_f G F H I E)) (not (>= (+ (+ (+ C D) (- 16)) (- 1)) 0))) (not (<= C 0))) (not (<= A 0))) (REC_f_f A B C D E))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int))(=> (and (and (and (and (and (= (+ E A) B) (not (>= (+ (+ (+ E A) (- 15)) (- 1)) 0))) (= (+ A (- 1)) F)) (REC_f_ F E)) (<= C 0)) (not (<= A 0))) (REC_f_f A B C D D))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int))(=> (and (and (and (and (and (= (+ (+ E A) (- 32)) B) (>= (+ (+ (+ E A) (- 15)) (- 1)) 0)) (= (+ A (- 1)) F)) (REC_f_ F E)) (<= C 0)) (not (<= A 0))) (REC_f_f A B C D D))))
(assert (forall ((A Int) (B Int))(=> (and (= (* (- 1) B) 0) (<= A 0)) (REC_f_ A B))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))(=> (and (and (and (and (= (+ (+ C A) (- 32)) B) (>= (+ (+ (+ C A) (- 15)) (- 1)) 0)) (= (+ A (- 1)) D)) (REC_f_ D C)) (not (<= A 0))) (REC_f_ A B))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))(=> (and (and (and (and (= (+ C A) B) (not (>= (+ (+ (+ C A) (- 15)) (- 1)) 0))) (= (+ A (- 1)) D)) (REC_f_ D C)) (not (<= A 0))) (REC_f_ A B))))
(assert (forall ((A Int) (B Int))(=> (<= A 0) (REC__f A B B))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int))(=> (and (and (and (and (= (+ A (- 1)) D) (= (+ A B) E)) (REC__f D E C)) (not (>= (+ (+ (+ A B) (- 16)) (- 1)) 0))) (not (<= A 0))) (REC__f A B C))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int))(=> (and (and (and (and (= (+ A (- 1)) D) (= (+ (+ A B) (- 31)) E)) (REC__f D E C)) (>= (+ (+ (+ A B) (- 16)) (- 1)) 0)) (not (<= A 0))) (REC__f A B C))))
(check-sat)
