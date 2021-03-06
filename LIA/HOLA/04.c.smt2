(set-info :smt-lib-version 2.6)
(set-logic HORN)
(set-info :origin "
  Horn benchmarks corresponding to the C benchmarks in:

  Isil Dillig, Thomas Dillig, Boyang Li, Kenneth L. McMillan:
  Inductive invariant generation via abductive inference. OOPSLA 2013: 443-456

  C programs converted to NTS using Frama-C
  NTS benchmark converted to SMT-LIB2 using Eldarica
")
(set-info :status sat)
(declare-fun h1 (Int Int Int Int) Bool)
(declare-fun h2 (Int Int Int Int) Bool)
(declare-fun h3 (Int Int Int Int) Bool)
(declare-fun h4 (Int Int Int Int) Bool)
(declare-fun h5 (Int Int Int Int) Bool)
(declare-fun h6 (Int Int Int Int) Bool)
(declare-fun h7 (Int Int Int Int) Bool)
(declare-fun h8 (Int Int Int Int) Bool)
(declare-fun h9 (Int Int Int Int) Bool)
(declare-fun h10 (Int Int Int Int) Bool)
(declare-fun h11 (Int Int Int Int) Bool)
(declare-fun h12 (Int Int Int Int) Bool)
(declare-fun h13 (Int Int Int Int) Bool)
(declare-fun h14 (Int Int Int Int) Bool)
(declare-fun h15 (Int Int Int Int) Bool)
(declare-fun h16 (Int Int Int Int) Bool)
(assert (forall ((A Int) (B Int))(=> (= 1 1) (h1 A B A B))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int))(=> (and (= C (- 50)) (h1 A B E D)) (h2 A B C D))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))(=> (h2 A B C D) (h3 A B C D))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))(=> (h3 A B C D) (h4 A B C D))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))(=> (h4 A B C D) (h5 A B C D))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))(=> (h5 A B C D) (h6 A B C D))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))(=> (and (<= C (- 1)) (h6 A B C D)) (h7 A B C D))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int))(=> (and (and (= E (- (+ 1 C) D)) (= F (+ (- 1) D))) (h7 A B E F)) (h8 A B C D))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))(=> (and (>= C 0) (h6 A B C D)) (h9 A B C D))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))(=> (h9 A B C D) (h10 A B C D))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))(=> (h10 A B C D) (h11 A B C D))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))(=> (h8 A B C D) (h5 A B C D))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))(=> (h11 A B C D) (h12 A B C D))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))(=> (and (<= D 0) (h12 A B C D)) (h13 A B C D))))
(assert (not (exists ((A Int) (B Int) (C Int) (D Int))(h13 A B C D))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))(=> (and (>= D 1) (h12 A B C D)) (h14 A B C D))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))(=> (h14 A B C D) (h15 A B C D))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))(=> (h15 A B C D) (h16 A B C D))))
(check-sat)
