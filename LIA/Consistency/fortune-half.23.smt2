(set-info :smt-lib-version 2.6)
(set-logic HORN)
(set-info :origin "
  Horn benchmarks created by Zachary Kincaid. zkincaid@gmail.com

  Reference:
  Swarat Chaudhuri, Azadeh Farzan, Zachary Kincaid:
  Consistency analysis of decision-making programs. POPL 2014: 555-568
")
(set-info :status sat)
(declare-fun combined_lturn
             (Int Int Int Int Int Int Int Int Int Int Int Int Int)
             Bool)
(declare-fun lturn (Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun step_lturn
             (Int Int Int Int Int Int Int Int Int Int Int Int Int)
             Bool)
(declare-fun step_lturn__bar
             (Int Int Int Int Int Int Int Int Int Int Int Int Int)
             Bool)
(declare-fun lturn__bar
             (Int Int Int Int Int Int Int Int Int Int Int Int Int)
             Bool)
(declare-fun combined_lturn__bar
             (Int Int Int Int Int Int Int Int Int Int Int Int Int)
             Bool)
(assert (forall ((u Int)
         (v Int)
         (w Int)
         (p Int)
         (q Int)
         (il_b Int)
         (il_e Int)
         (h_b Int)
         (h_e Int)
         (lturn_p_2 Int)
         (lturn_p_1 Int)
         (lturn_p_0 Int)
         (lturn_bar Int)
         (t Int)
         (u!1 Int)
         (x Int)
         (y Int)
         (z Int))
  (let ((a!1 (>= (+ (+ 0 (* (- 1) p)) (* 1 il_b) (- 3)) 0))
        (a!2 (>= (+ (+ 0 (* (- 1) p)) (* 1 q) (- 3)) 0))
        (a!3 (>= (+ (+ 0 (* (- 1) p)) (* 1 il_e) (- 3)) 0))
        (a!4 (>= (+ (+ 0 (* 1 q)) (* (- 1) il_e) 0) 0))
        (a!5 (>= (+ (+ 0 (* (- 1) p)) (* 1 h_b) 0) 0))
        (a!6 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) h_b) (- 3)) 0))
        (a!7 (>= (+ (+ 0 (* 1 q)) (* (- 1) h_b) (- 3)) 0))
        (a!8 (>= (+ (+ 0 (* 1 il_e)) (* (- 1) h_b) (- 3)) 0))
        (a!9 (>= (+ (+ 0 (* (- 1) p)) (* 1 h_e) (- 1)) 0))
        (a!10 (>= (+ (+ 0 (* (- 1) h_b)) (* 1 h_e) (- 1)) 0))
        (a!11 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) h_e) (- 2)) 0))
        (a!12 (>= (+ (+ 0 (* 1 q)) (* (- 1) h_e) (- 2)) 0))
        (a!13 (>= (+ (+ 0 (* 1 il_e)) (* (- 1) h_e) (- 2)) 0))
        (a!14 (>= (+ (+ 0 (* (- 1) p)) (* 1 u!1) 0) 0))
        (a!15 (>= (+ (+ 0 (* (- 1) h_b)) (* 1 u!1) 0) 0))
        (a!16 (>= (+ (+ 0 (* (- 1) h_e)) (* 1 u!1) 1) 0))
        (a!17 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) u!1) (- 3)) 0))
        (a!18 (>= (+ (+ 0 (* 1 q)) (* (- 1) u!1) (- 3)) 0))
        (a!19 (>= (+ (+ 0 (* 1 il_e)) (* (- 1) u!1) (- 3)) 0))
        (a!20 (>= (+ (+ 0 (* 1 h_e)) (* (- 1) u!1) (- 1)) 0))
        (a!21 (>= (+ (+ 0 (* (- 1) p)) (* 1 v) (- 1)) 0))
        (a!22 (>= (+ (+ 0 (* (- 1) h_b)) (* 1 v) (- 1)) 0))
        (a!23 (>= (+ (+ 0 (* (- 1) h_e)) (* 1 v) 0) 0))
        (a!24 (>= (+ (+ 0 (* (- 1) u!1)) (* 1 v) (- 1)) 0))
        (a!25 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) v) (- 2)) 0))
        (a!26 (>= (+ (+ 0 (* 1 q)) (* (- 1) v) (- 2)) 0))
        (a!27 (>= (+ (+ 0 (* 1 il_e)) (* (- 1) v) (- 2)) 0))
        (a!28 (>= (+ (+ 0 (* 1 h_e)) (* (- 1) v) 0) 0))
        (a!29 (>= (+ (+ 0 (* (- 1) p)) (* 1 w) (- 3)) 0))
        (a!30 (>= (+ (+ 0 (* (- 1) il_b)) (* 1 w) 0) 0))
        (a!31 (>= (+ (+ 0 (* (- 1) h_b)) (* 1 w) (- 3)) 0))
        (a!32 (>= (+ (+ 0 (* (- 1) h_e)) (* 1 w) (- 2)) 0))
        (a!33 (>= (+ (+ 0 (* (- 1) u!1)) (* 1 w) (- 3)) 0))
        (a!34 (>= (+ (+ 0 (* (- 1) v)) (* 1 w) (- 2)) 0))
        (a!35 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) w) 0) 0))
        (a!36 (>= (+ (+ 0 (* (- 1) p)) (* 1 lturn_p_0) 0) 0))
        (a!37 (>= (+ (+ 0 (* (- 1) h_b)) (* 1 lturn_p_0) 0) 0))
        (a!38 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) lturn_p_0) (- 2)) 0))
        (a!39 (>= (+ (+ 0 (* 1 q)) (* (- 1) lturn_p_0) (- 2)) 0))
        (a!40 (>= (+ (+ 0 (* 1 il_e)) (* (- 1) lturn_p_0) (- 2)) 0))
        (a!41 (>= (+ (+ 0 (* 1 w)) (* (- 1) lturn_p_0) (- 2)) 0))
        (a!42 (>= (+ (+ 0 (* (- 1) p)) (* 1 lturn_p_1) (- 2)) 0))
        (a!43 (>= (+ (+ 0 (* (- 1) h_b)) (* 1 lturn_p_1) (- 2)) 0))
        (a!44 (>= (+ (+ 0 (* (- 1) h_e)) (* 1 lturn_p_1) (- 1)) 0))
        (a!45 (>= (+ (+ 0 (* (- 1) u!1)) (* 1 lturn_p_1) (- 2)) 0))
        (a!46 (>= (+ (+ 0 (* (- 1) v)) (* 1 lturn_p_1) (- 1)) 0))
        (a!47 (>= (+ (+ 0 (* (- 1) lturn_p_0)) (* 1 lturn_p_1) (- 1)) 0))
        (a!48 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) lturn_p_1) (- 1)) 0))
        (a!49 (>= (+ (+ 0 (* 1 q)) (* (- 1) lturn_p_1) (- 1)) 0))
        (a!50 (>= (+ (+ 0 (* 1 il_e)) (* (- 1) lturn_p_1) (- 1)) 0))
        (a!51 (>= (+ (+ 0 (* 1 w)) (* (- 1) lturn_p_1) (- 1)) 0))
        (a!52 (>= (+ (+ 0 (* (- 1) p)) (* 1 lturn_p_2) (- 3)) 0))
        (a!53 (>= (+ (+ 0 (* (- 1) il_b)) (* 1 lturn_p_2) 0) 0))
        (a!54 (>= (+ (+ 0 (* (- 1) h_b)) (* 1 lturn_p_2) (- 3)) 0))
        (a!55 (>= (+ (+ 0 (* (- 1) h_e)) (* 1 lturn_p_2) (- 2)) 0))
        (a!56 (>= (+ (+ 0 (* (- 1) u!1)) (* 1 lturn_p_2) (- 3)) 0))
        (a!57 (>= (+ (+ 0 (* (- 1) v)) (* 1 lturn_p_2) (- 2)) 0))
        (a!58 (>= (+ (+ 0 (* (- 1) lturn_p_0)) (* 1 lturn_p_2) (- 2)) 0))
        (a!59 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) lturn_p_2) 0) 0))
        (a!60 (>= (+ (+ 0 (* 1 w)) (* (- 1) lturn_p_2) 0) 0)))
  (let ((a!61 (and a!1
                   a!2
                   a!3
                   (>= (+ 0 (* (- 1) q) (* 1 il_e) 0) 0)
                   a!4
                   a!5
                   (>= (+ 0 (* 1 p) (* (- 1) h_b) 0) 0)
                   a!6
                   a!7
                   a!8
                   a!9
                   a!10
                   a!11
                   a!12
                   a!13
                   a!14
                   a!15
                   a!16
                   a!17
                   a!18
                   a!19
                   a!20
                   a!21
                   a!22
                   a!23
                   a!24
                   a!25
                   a!26
                   a!27
                   a!28
                   (>= (+ 0 (* 1 u!1) (* (- 1) v) 1) 0)
                   a!29
                   a!30
                   a!31
                   a!32
                   a!33
                   a!34
                   a!35
                   a!36
                   a!37
                   a!38
                   a!39
                   a!40
                   a!41
                   a!42
                   a!43
                   a!44
                   a!45
                   a!46
                   a!47
                   a!48
                   a!49
                   a!50
                   a!51
                   a!52
                   a!53
                   a!54
                   a!55
                   a!56
                   a!57
                   (>= (+ 0 (* (- 1) w) (* 1 lturn_p_2) 0) 0)
                   a!58
                   (>= (+ 0 (* (- 1) lturn_p_1) (* 1 lturn_p_2) (- 1)) 0)
                   a!59
                   a!60)))
    (=> a!61
        (lturn u!1
               v
               w
               p
               q
               il_b
               il_e
               h_b
               h_e
               lturn_p_2
               lturn_p_1
               lturn_p_0
               lturn_bar))))))
(assert (forall ((u Int)
         (v Int)
         (w Int)
         (p Int)
         (q Int)
         (il_b Int)
         (il_e Int)
         (h_b Int)
         (h_e Int)
         (lturn_p_2 Int)
         (lturn_p_1 Int)
         (lturn_p_0 Int)
         (lturn_bar Int)
         (t Int)
         (u!1 Int)
         (x Int)
         (y Int)
         (z Int))
  (let ((a!1 (>= (+ (+ 0 (* (- 1) p)) (* 1 il_b) (- 3)) 0))
        (a!2 (>= (+ (+ 0 (* (- 1) p)) (* 1 q) (- 3)) 0))
        (a!3 (>= (+ (+ 0 (* (- 1) il_b)) (* 1 q) 0) 0))
        (a!4 (>= (+ (+ 0 (* (- 1) p)) (* 1 il_e) (- 3)) 0))
        (a!5 (>= (+ (+ 0 (* (- 1) il_b)) (* 1 il_e) 0) 0))
        (a!6 (>= (+ (+ 0 (* 1 q)) (* (- 1) il_e) 0) 0))
        (a!7 (>= (+ (+ 0 (* (- 1) p)) (* 1 h_b) 0) 0))
        (a!8 (>= (+ (+ 0 (* 1 p)) (* (- 1) h_b) 0) 0))
        (a!9 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) h_b) (- 3)) 0))
        (a!10 (>= (+ (+ 0 (* 1 q)) (* (- 1) h_b) (- 3)) 0))
        (a!11 (>= (+ (+ 0 (* 1 il_e)) (* (- 1) h_b) (- 3)) 0))
        (a!12 (>= (+ (+ 0 (* (- 1) p)) (* 1 h_e) (- 2)) 0))
        (a!13 (>= (+ (+ 0 (* (- 1) il_b)) (* 1 h_e) 1) 0))
        (a!14 (>= (+ (+ 0 (* (- 1) h_b)) (* 1 h_e) (- 2)) 0))
        (a!15 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) h_e) (- 1)) 0))
        (a!16 (>= (+ (+ 0 (* 1 q)) (* (- 1) h_e) (- 1)) 0))
        (a!17 (>= (+ (+ 0 (* 1 il_e)) (* (- 1) h_e) (- 1)) 0))
        (a!18 (>= (+ (+ 0 (* (- 1) p)) (* 1 u!1) 0) 0))
        (a!19 (>= (+ (+ 0 (* (- 1) h_b)) (* 1 u!1) 0) 0))
        (a!20 (>= (+ (+ 0 (* 1 p)) (* (- 1) u!1) 0) 0))
        (a!21 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) u!1) (- 3)) 0))
        (a!22 (>= (+ (+ 0 (* 1 q)) (* (- 1) u!1) (- 3)) 0))
        (a!23 (>= (+ (+ 0 (* 1 il_e)) (* (- 1) u!1) (- 3)) 0))
        (a!24 (>= (+ (+ 0 (* 1 h_b)) (* (- 1) u!1) 0) 0))
        (a!25 (>= (+ (+ 0 (* 1 h_e)) (* (- 1) u!1) (- 2)) 0))
        (a!26 (>= (+ (+ 0 (* (- 1) p)) (* 1 v) (- 2)) 0))
        (a!27 (>= (+ (+ 0 (* (- 1) il_b)) (* 1 v) 1) 0))
        (a!28 (>= (+ (+ 0 (* (- 1) h_b)) (* 1 v) (- 2)) 0))
        (a!29 (>= (+ (+ 0 (* (- 1) h_e)) (* 1 v) 0) 0))
        (a!30 (>= (+ (+ 0 (* (- 1) u!1)) (* 1 v) (- 2)) 0))
        (a!31 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) v) (- 1)) 0))
        (a!32 (>= (+ (+ 0 (* 1 q)) (* (- 1) v) (- 1)) 0))
        (a!33 (>= (+ (+ 0 (* 1 il_e)) (* (- 1) v) (- 1)) 0))
        (a!34 (>= (+ (+ 0 (* 1 h_e)) (* (- 1) v) 0) 0))
        (a!35 (>= (+ (+ 0 (* (- 1) p)) (* 1 w) (- 3)) 0))
        (a!36 (>= (+ (+ 0 (* (- 1) il_b)) (* 1 w) 0) 0))
        (a!37 (>= (+ (+ 0 (* (- 1) h_b)) (* 1 w) (- 3)) 0))
        (a!38 (>= (+ (+ 0 (* (- 1) h_e)) (* 1 w) (- 1)) 0))
        (a!39 (>= (+ (+ 0 (* (- 1) u!1)) (* 1 w) (- 3)) 0))
        (a!40 (>= (+ (+ 0 (* (- 1) v)) (* 1 w) (- 1)) 0))
        (a!41 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) w) 0) 0))
        (a!42 (>= (+ (+ 0 (* 1 q)) (* (- 1) w) 0) 0))
        (a!43 (>= (+ (+ 0 (* 1 il_e)) (* (- 1) w) 0) 0))
        (a!44 (>= (+ (+ 0 (* 1 h_e)) (* (- 1) w) 1) 0))
        (a!45 (>= (+ (+ 0 (* 1 v)) (* (- 1) w) 1) 0))
        (a!46 (>= (+ (+ 0 (* (- 1) p)) (* 1 lturn_p_0) 0) 0))
        (a!47 (>= (+ (+ 0 (* (- 1) h_b)) (* 1 lturn_p_0) 0) 0))
        (a!48 (>= (+ (+ 0 (* (- 1) u!1)) (* 1 lturn_p_0) 0) 0))
        (a!49 (>= (+ (+ 0 (* 1 p)) (* (- 1) lturn_p_0) 0) 0))
        (a!50 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) lturn_p_0) (- 3)) 0))
        (a!51 (>= (+ (+ 0 (* 1 q)) (* (- 1) lturn_p_0) (- 3)) 0))
        (a!52 (>= (+ (+ 0 (* 1 il_e)) (* (- 1) lturn_p_0) (- 3)) 0))
        (a!53 (>= (+ (+ 0 (* 1 h_b)) (* (- 1) lturn_p_0) 0) 0))
        (a!54 (>= (+ (+ 0 (* 1 h_e)) (* (- 1) lturn_p_0) (- 2)) 0))
        (a!55 (>= (+ (+ 0 (* 1 u!1)) (* (- 1) lturn_p_0) 0) 0))
        (a!56 (>= (+ (+ 0 (* 1 v)) (* (- 1) lturn_p_0) (- 2)) 0))
        (a!57 (>= (+ (+ 0 (* 1 w)) (* (- 1) lturn_p_0) (- 3)) 0))
        (a!58 (>= (+ (+ 0 (* (- 1) p)) (* 1 lturn_p_1) (- 1)) 0))
        (a!59 (>= (+ (+ 0 (* (- 1) h_b)) (* 1 lturn_p_1) (- 1)) 0))
        (a!60 (>= (+ (+ 0 (* (- 1) u!1)) (* 1 lturn_p_1) (- 1)) 0))
        (a!61 (>= (+ (+ 0 (* (- 1) lturn_p_0)) (* 1 lturn_p_1) (- 1)) 0))
        (a!62 (>= (+ (+ 0 (* 1 p)) (* (- 1) lturn_p_1) 1) 0))
        (a!63 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) lturn_p_1) (- 2)) 0))
        (a!64 (>= (+ (+ 0 (* 1 q)) (* (- 1) lturn_p_1) (- 2)) 0))
        (a!65 (>= (+ (+ 0 (* 1 il_e)) (* (- 1) lturn_p_1) (- 2)) 0))
        (a!66 (>= (+ (+ 0 (* 1 h_b)) (* (- 1) lturn_p_1) 1) 0))
        (a!67 (>= (+ (+ 0 (* 1 h_e)) (* (- 1) lturn_p_1) (- 1)) 0))
        (a!68 (>= (+ (+ 0 (* 1 u!1)) (* (- 1) lturn_p_1) 1) 0))
        (a!69 (>= (+ (+ 0 (* 1 v)) (* (- 1) lturn_p_1) (- 1)) 0))
        (a!70 (>= (+ (+ 0 (* 1 w)) (* (- 1) lturn_p_1) (- 2)) 0))
        (a!71 (>= (+ (+ 0 (* (- 1) p)) (* 1 lturn_p_2) (- 2)) 0))
        (a!72 (>= (+ (+ 0 (* (- 1) il_b)) (* 1 lturn_p_2) 1) 0))
        (a!73 (>= (+ (+ 0 (* (- 1) h_b)) (* 1 lturn_p_2) (- 2)) 0))
        (a!74 (>= (+ (+ 0 (* (- 1) h_e)) (* 1 lturn_p_2) 0) 0))
        (a!75 (>= (+ (+ 0 (* (- 1) u!1)) (* 1 lturn_p_2) (- 2)) 0))
        (a!76 (>= (+ (+ 0 (* (- 1) v)) (* 1 lturn_p_2) 0) 0))
        (a!77 (>= (+ (+ 0 (* (- 1) lturn_p_0)) (* 1 lturn_p_2) (- 2)) 0))
        (a!78 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) lturn_p_2) (- 1)) 0))
        (a!79 (>= (+ (+ 0 (* 1 q)) (* (- 1) lturn_p_2) (- 1)) 0))
        (a!80 (>= (+ (+ 0 (* 1 il_e)) (* (- 1) lturn_p_2) (- 1)) 0))
        (a!81 (>= (+ (+ 0 (* 1 h_e)) (* (- 1) lturn_p_2) 0) 0))
        (a!82 (>= (+ (+ 0 (* 1 v)) (* (- 1) lturn_p_2) 0) 0))
        (a!83 (>= (+ (+ 0 (* 1 w)) (* (- 1) lturn_p_2) (- 1)) 0)))
  (let ((a!84 (and a!1
                   a!2
                   a!3
                   a!4
                   a!5
                   (>= (+ 0 (* (- 1) q) (* 1 il_e) 0) 0)
                   a!6
                   a!7
                   a!8
                   a!9
                   a!10
                   a!11
                   a!12
                   a!13
                   a!14
                   a!15
                   a!16
                   a!17
                   a!18
                   a!19
                   a!20
                   a!21
                   a!22
                   a!23
                   a!24
                   a!25
                   a!26
                   a!27
                   a!28
                   a!29
                   a!30
                   a!31
                   a!32
                   a!33
                   a!34
                   a!35
                   a!36
                   a!37
                   a!38
                   a!39
                   a!40
                   a!41
                   a!42
                   a!43
                   a!44
                   a!45
                   a!46
                   a!47
                   a!48
                   a!49
                   a!50
                   a!51
                   a!52
                   a!53
                   a!54
                   a!55
                   a!56
                   a!57
                   a!58
                   a!59
                   a!60
                   a!61
                   a!62
                   a!63
                   a!64
                   a!65
                   a!66
                   a!67
                   a!68
                   a!69
                   a!70
                   (>= (+ 0 (* 1 lturn_p_0) (* (- 1) lturn_p_1) 1) 0)
                   a!71
                   a!72
                   a!73
                   a!74
                   a!75
                   a!76
                   (>= (+ 0 (* (- 1) w) (* 1 lturn_p_2) 1) 0)
                   a!77
                   (>= (+ 0 (* (- 1) lturn_p_1) (* 1 lturn_p_2) (- 1)) 0)
                   a!78
                   a!79
                   a!80
                   a!81
                   a!82
                   a!83)))
    (=> a!84
        (lturn u!1
               v
               w
               p
               q
               il_b
               il_e
               h_b
               h_e
               lturn_p_2
               lturn_p_1
               lturn_p_0
               lturn_bar))))))
(assert (forall ((u Int)
         (v Int)
         (w Int)
         (p Int)
         (q Int)
         (il_b Int)
         (il_e Int)
         (h_b Int)
         (h_e Int)
         (lturn_p_2 Int)
         (lturn_p_1 Int)
         (lturn_p_0 Int)
         (lturn_bar Int)
         (t Int)
         (u!1 Int)
         (x Int)
         (y Int)
         (z Int))
  (let ((a!1 (>= (+ (+ 0 (* (- 1) p)) (* 1 il_b) (- 3)) 0))
        (a!2 (>= (+ (+ 0 (* (- 1) p)) (* 1 q) (- 3)) 0))
        (a!3 (>= (+ (+ 0 (* (- 1) il_b)) (* 1 q) 0) 0))
        (a!4 (>= (+ (+ 0 (* (- 1) p)) (* 1 il_e) (- 3)) 0))
        (a!5 (>= (+ (+ 0 (* (- 1) il_b)) (* 1 il_e) 0) 0))
        (a!6 (>= (+ (+ 0 (* 1 q)) (* (- 1) il_e) 0) 0))
        (a!7 (>= (+ (+ 0 (* (- 1) p)) (* 1 h_b) 0) 0))
        (a!8 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) h_b) (- 3)) 0))
        (a!9 (>= (+ (+ 0 (* 1 q)) (* (- 1) h_b) (- 3)) 0))
        (a!10 (>= (+ (+ 0 (* 1 il_e)) (* (- 1) h_b) (- 3)) 0))
        (a!11 (>= (+ (+ 0 (* (- 1) p)) (* 1 h_e) (- 1)) 0))
        (a!12 (>= (+ (+ 0 (* (- 1) h_b)) (* 1 h_e) (- 1)) 0))
        (a!13 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) h_e) (- 1)) 0))
        (a!14 (>= (+ (+ 0 (* 1 q)) (* (- 1) h_e) (- 1)) 0))
        (a!15 (>= (+ (+ 0 (* 1 il_e)) (* (- 1) h_e) (- 1)) 0))
        (a!16 (>= (+ (+ 0 (* (- 1) p)) (* 1 u!1) 0) 0))
        (a!17 (>= (+ (+ 0 (* (- 1) h_b)) (* 1 u!1) 0) 0))
        (a!18 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) u!1) (- 2)) 0))
        (a!19 (>= (+ (+ 0 (* 1 q)) (* (- 1) u!1) (- 2)) 0))
        (a!20 (>= (+ (+ 0 (* 1 il_e)) (* (- 1) u!1) (- 2)) 0))
        (a!21 (>= (+ (+ 0 (* 1 h_e)) (* (- 1) u!1) (- 1)) 0))
        (a!22 (>= (+ (+ 0 (* (- 1) p)) (* 1 v) (- 1)) 0))
        (a!23 (>= (+ (+ 0 (* (- 1) h_b)) (* 1 v) (- 1)) 0))
        (a!24 (>= (+ (+ 0 (* (- 1) h_e)) (* 1 v) 0) 0))
        (a!25 (>= (+ (+ 0 (* (- 1) u!1)) (* 1 v) (- 1)) 0))
        (a!26 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) v) (- 1)) 0))
        (a!27 (>= (+ (+ 0 (* 1 q)) (* (- 1) v) (- 1)) 0))
        (a!28 (>= (+ (+ 0 (* 1 il_e)) (* (- 1) v) (- 1)) 0))
        (a!29 (>= (+ (+ 0 (* 1 h_e)) (* (- 1) v) 0) 0))
        (a!30 (>= (+ (+ 0 (* (- 1) p)) (* 1 w) (- 3)) 0))
        (a!31 (>= (+ (+ 0 (* (- 1) il_b)) (* 1 w) 0) 0))
        (a!32 (>= (+ (+ 0 (* (- 1) h_b)) (* 1 w) (- 3)) 0))
        (a!33 (>= (+ (+ 0 (* (- 1) h_e)) (* 1 w) (- 1)) 0))
        (a!34 (>= (+ (+ 0 (* (- 1) u!1)) (* 1 w) (- 2)) 0))
        (a!35 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) w) 0) 0))
        (a!36 (>= (+ (+ 0 (* 1 q)) (* (- 1) w) 0) 0))
        (a!37 (>= (+ (+ 0 (* 1 il_e)) (* (- 1) w) 0) 0))
        (a!38 (>= (+ (+ 0 (* (- 1) p)) (* 1 lturn_p_0) 0) 0))
        (a!39 (>= (+ (+ 0 (* (- 1) h_b)) (* 1 lturn_p_0) 0) 0))
        (a!40 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) lturn_p_0) (- 3)) 0))
        (a!41 (>= (+ (+ 0 (* 1 q)) (* (- 1) lturn_p_0) (- 3)) 0))
        (a!42 (>= (+ (+ 0 (* 1 il_e)) (* (- 1) lturn_p_0) (- 3)) 0))
        (a!43 (>= (+ (+ 0 (* 1 w)) (* (- 1) lturn_p_0) (- 3)) 0))
        (a!44 (>= (+ (+ 0 (* (- 1) p)) (* 1 lturn_p_1) (- 1)) 0))
        (a!45 (>= (+ (+ 0 (* (- 1) h_b)) (* 1 lturn_p_1) (- 1)) 0))
        (a!46 (>= (+ (+ 0 (* (- 1) lturn_p_0)) (* 1 lturn_p_1) (- 1)) 0))
        (a!47 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) lturn_p_1) (- 2)) 0))
        (a!48 (>= (+ (+ 0 (* 1 q)) (* (- 1) lturn_p_1) (- 2)) 0))
        (a!49 (>= (+ (+ 0 (* 1 il_e)) (* (- 1) lturn_p_1) (- 2)) 0))
        (a!50 (>= (+ (+ 0 (* 1 w)) (* (- 1) lturn_p_1) (- 2)) 0))
        (a!51 (>= (+ (+ 0 (* (- 1) p)) (* 1 lturn_p_2) (- 2)) 0))
        (a!52 (>= (+ (+ 0 (* (- 1) h_b)) (* 1 lturn_p_2) (- 2)) 0))
        (a!53 (>= (+ (+ 0 (* (- 1) lturn_p_0)) (* 1 lturn_p_2) (- 2)) 0))
        (a!54 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) lturn_p_2) (- 1)) 0))
        (a!55 (>= (+ (+ 0 (* 1 q)) (* (- 1) lturn_p_2) (- 1)) 0))
        (a!56 (>= (+ (+ 0 (* 1 il_e)) (* (- 1) lturn_p_2) (- 1)) 0))
        (a!57 (>= (+ (+ 0 (* 1 w)) (* (- 1) lturn_p_2) (- 1)) 0)))
  (let ((a!58 (and a!1
                   a!2
                   a!3
                   a!4
                   a!5
                   (>= (+ 0 (* (- 1) q) (* 1 il_e) 0) 0)
                   a!6
                   a!7
                   (>= (+ 0 (* 1 p) (* (- 1) h_b) 0) 0)
                   a!8
                   a!9
                   a!10
                   a!11
                   a!12
                   a!13
                   a!14
                   a!15
                   a!16
                   a!17
                   a!18
                   a!19
                   a!20
                   a!21
                   a!22
                   a!23
                   a!24
                   a!25
                   a!26
                   a!27
                   a!28
                   a!29
                   a!30
                   a!31
                   a!32
                   a!33
                   a!34
                   (>= (+ 0 (* (- 1) v) (* 1 w) (- 1)) 0)
                   a!35
                   a!36
                   a!37
                   a!38
                   a!39
                   a!40
                   a!41
                   a!42
                   a!43
                   a!44
                   a!45
                   a!46
                   a!47
                   a!48
                   a!49
                   a!50
                   a!51
                   a!52
                   a!53
                   (>= (+ 0 (* (- 1) lturn_p_1) (* 1 lturn_p_2) (- 1)) 0)
                   a!54
                   a!55
                   a!56
                   a!57)))
    (=> a!58
        (lturn u!1
               v
               w
               p
               q
               il_b
               il_e
               h_b
               h_e
               lturn_p_2
               lturn_p_1
               lturn_p_0
               lturn_bar))))))
(assert (forall ((u Int)
         (v Int)
         (w Int)
         (p Int)
         (q Int)
         (il_b Int)
         (il_e Int)
         (h_b Int)
         (h_e Int)
         (lturn_p_2 Int)
         (lturn_p_1 Int)
         (lturn_p_0 Int)
         (lturn_bar Int)
         (t Int)
         (u!1 Int)
         (x Int)
         (y Int)
         (z Int))
  (let ((a!1 (>= (+ (+ 0 (* (- 1) p)) (* 1 il_b) (- 2)) 0))
        (a!2 (>= (+ (+ 0 (* (- 1) p)) (* 1 q) (- 3)) 0))
        (a!3 (>= (+ (+ 0 (* (- 1) p)) (* 1 il_e) (- 3)) 0))
        (a!4 (>= (+ (+ 0 (* 1 q)) (* (- 1) il_e) 0) 0))
        (a!5 (>= (+ (+ 0 (* (- 1) p)) (* 1 h_b) 0) 0))
        (a!6 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) h_b) (- 2)) 0))
        (a!7 (>= (+ (+ 0 (* 1 q)) (* (- 1) h_b) (- 3)) 0))
        (a!8 (>= (+ (+ 0 (* 1 il_e)) (* (- 1) h_b) (- 3)) 0))
        (a!9 (>= (+ (+ 0 (* (- 1) p)) (* 1 h_e) (- 1)) 0))
        (a!10 (>= (+ (+ 0 (* (- 1) h_b)) (* 1 h_e) (- 1)) 0))
        (a!11 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) h_e) (- 1)) 0))
        (a!12 (>= (+ (+ 0 (* 1 q)) (* (- 1) h_e) (- 1)) 0))
        (a!13 (>= (+ (+ 0 (* 1 il_e)) (* (- 1) h_e) (- 1)) 0))
        (a!14 (>= (+ (+ 0 (* (- 1) p)) (* 1 u!1) 0) 0))
        (a!15 (>= (+ (+ 0 (* (- 1) h_b)) (* 1 u!1) 0) 0))
        (a!16 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) u!1) (- 2)) 0))
        (a!17 (>= (+ (+ 0 (* 1 q)) (* (- 1) u!1) (- 2)) 0))
        (a!18 (>= (+ (+ 0 (* 1 il_e)) (* (- 1) u!1) (- 2)) 0))
        (a!19 (>= (+ (+ 0 (* 1 h_e)) (* (- 1) u!1) (- 1)) 0))
        (a!20 (>= (+ (+ 0 (* (- 1) p)) (* 1 v) (- 1)) 0))
        (a!21 (>= (+ (+ 0 (* (- 1) h_b)) (* 1 v) (- 1)) 0))
        (a!22 (>= (+ (+ 0 (* (- 1) h_e)) (* 1 v) 0) 0))
        (a!23 (>= (+ (+ 0 (* (- 1) u!1)) (* 1 v) (- 1)) 0))
        (a!24 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) v) (- 1)) 0))
        (a!25 (>= (+ (+ 0 (* 1 q)) (* (- 1) v) (- 1)) 0))
        (a!26 (>= (+ (+ 0 (* 1 il_e)) (* (- 1) v) (- 1)) 0))
        (a!27 (>= (+ (+ 0 (* 1 h_e)) (* (- 1) v) 0) 0))
        (a!28 (>= (+ (+ 0 (* (- 1) p)) (* 1 w) (- 2)) 0))
        (a!29 (>= (+ (+ 0 (* (- 1) il_b)) (* 1 w) 0) 0))
        (a!30 (>= (+ (+ 0 (* (- 1) h_b)) (* 1 w) (- 2)) 0))
        (a!31 (>= (+ (+ 0 (* (- 1) h_e)) (* 1 w) (- 1)) 0))
        (a!32 (>= (+ (+ 0 (* (- 1) u!1)) (* 1 w) (- 2)) 0))
        (a!33 (>= (+ (+ 0 (* (- 1) v)) (* 1 w) (- 1)) 0))
        (a!34 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) w) 0) 0))
        (a!35 (>= (+ (+ 0 (* (- 1) p)) (* 1 lturn_p_0) 0) 0))
        (a!36 (>= (+ (+ 0 (* (- 1) h_b)) (* 1 lturn_p_0) 0) 0))
        (a!37 (>= (+ (+ 0 (* (- 1) u!1)) (* 1 lturn_p_0) 0) 0))
        (a!38 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) lturn_p_0) (- 2)) 0))
        (a!39 (>= (+ (+ 0 (* 1 q)) (* (- 1) lturn_p_0) (- 2)) 0))
        (a!40 (>= (+ (+ 0 (* 1 il_e)) (* (- 1) lturn_p_0) (- 2)) 0))
        (a!41 (>= (+ (+ 0 (* 1 h_e)) (* (- 1) lturn_p_0) (- 1)) 0))
        (a!42 (>= (+ (+ 0 (* 1 v)) (* (- 1) lturn_p_0) (- 1)) 0))
        (a!43 (>= (+ (+ 0 (* 1 w)) (* (- 1) lturn_p_0) (- 2)) 0))
        (a!44 (>= (+ (+ 0 (* (- 1) p)) (* 1 lturn_p_1) (- 1)) 0))
        (a!45 (>= (+ (+ 0 (* (- 1) h_b)) (* 1 lturn_p_1) (- 1)) 0))
        (a!46 (>= (+ (+ 0 (* (- 1) h_e)) (* 1 lturn_p_1) 0) 0))
        (a!47 (>= (+ (+ 0 (* (- 1) u!1)) (* 1 lturn_p_1) (- 1)) 0))
        (a!48 (>= (+ (+ 0 (* (- 1) v)) (* 1 lturn_p_1) 0) 0))
        (a!49 (>= (+ (+ 0 (* (- 1) lturn_p_0)) (* 1 lturn_p_1) (- 1)) 0))
        (a!50 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) lturn_p_1) (- 1)) 0))
        (a!51 (>= (+ (+ 0 (* 1 q)) (* (- 1) lturn_p_1) (- 1)) 0))
        (a!52 (>= (+ (+ 0 (* 1 il_e)) (* (- 1) lturn_p_1) (- 1)) 0))
        (a!53 (>= (+ (+ 0 (* 1 h_e)) (* (- 1) lturn_p_1) 0) 0))
        (a!54 (>= (+ (+ 0 (* 1 v)) (* (- 1) lturn_p_1) 0) 0))
        (a!55 (>= (+ (+ 0 (* 1 w)) (* (- 1) lturn_p_1) (- 1)) 0))
        (a!56 (>= (+ (+ 0 (* (- 1) p)) (* 1 lturn_p_2) (- 2)) 0))
        (a!57 (>= (+ (+ 0 (* (- 1) il_b)) (* 1 lturn_p_2) 0) 0))
        (a!58 (>= (+ (+ 0 (* (- 1) h_b)) (* 1 lturn_p_2) (- 2)) 0))
        (a!59 (>= (+ (+ 0 (* (- 1) h_e)) (* 1 lturn_p_2) (- 1)) 0))
        (a!60 (>= (+ (+ 0 (* (- 1) u!1)) (* 1 lturn_p_2) (- 2)) 0))
        (a!61 (>= (+ (+ 0 (* (- 1) v)) (* 1 lturn_p_2) (- 1)) 0))
        (a!62 (>= (+ (+ 0 (* (- 1) lturn_p_0)) (* 1 lturn_p_2) (- 2)) 0))
        (a!63 (>= (+ (+ 0 (* 1 il_b)) (* (- 1) lturn_p_2) 0) 0))
        (a!64 (>= (+ (+ 0 (* 1 w)) (* (- 1) lturn_p_2) 0) 0)))
  (let ((a!65 (and a!1
                   a!2
                   a!3
                   (>= (+ 0 (* (- 1) q) (* 1 il_e) 0) 0)
                   a!4
                   a!5
                   (>= (+ 0 (* 1 p) (* (- 1) h_b) 0) 0)
                   a!6
                   a!7
                   a!8
                   a!9
                   a!10
                   a!11
                   a!12
                   a!13
                   a!14
                   a!15
                   a!16
                   a!17
                   a!18
                   a!19
                   a!20
                   a!21
                   a!22
                   a!23
                   a!24
                   a!25
                   a!26
                   a!27
                   a!28
                   a!29
                   a!30
                   a!31
                   a!32
                   a!33
                   a!34
                   a!35
                   a!36
                   a!37
                   a!38
                   a!39
                   a!40
                   a!41
                   (>= (+ 0 (* 1 u!1) (* (- 1) lturn_p_0) 0) 0)
                   a!42
                   a!43
                   a!44
                   a!45
                   a!46
                   a!47
                   a!48
                   a!49
                   a!50
                   a!51
                   a!52
                   a!53
                   a!54
                   a!55
                   a!56
                   a!57
                   a!58
                   a!59
                   a!60
                   a!61
                   (>= (+ 0 (* (- 1) w) (* 1 lturn_p_2) 0) 0)
                   a!62
                   (>= (+ 0 (* (- 1) lturn_p_1) (* 1 lturn_p_2) (- 1)) 0)
                   a!63
                   a!64)))
    (=> a!65
        (step_lturn u!1
                    v
                    w
                    p
                    q
                    il_b
                    il_e
                    h_b
                    h_e
                    lturn_p_2
                    lturn_p_1
                    lturn_p_0
                    lturn_bar))))))
(assert (forall ((u Int)
         (v Int)
         (w Int)
         (p Int)
         (q Int)
         (il_b Int)
         (il_e Int)
         (h_b Int)
         (h_e Int)
         (lturn_p_2 Int)
         (lturn_p_1 Int)
         (lturn_p_0 Int)
         (lturn_bar Int)
         (t Int)
         (u!1 Int)
         (x Int)
         (y Int)
         (z Int))
  (=> (and (lturn u!1
                  v
                  w
                  p
                  q
                  il_b
                  il_e
                  h_b
                  h_e
                  lturn_p_2
                  lturn_p_1
                  lturn_p_0
                  lturn_bar))
      (combined_lturn u!1
                      v
                      w
                      p
                      q
                      il_b
                      il_e
                      h_b
                      h_e
                      lturn_p_2
                      lturn_p_1
                      lturn_p_0
                      lturn_bar))))
(assert (forall ((u Int)
         (v Int)
         (w Int)
         (p Int)
         (q Int)
         (il_b Int)
         (il_e Int)
         (h_b Int)
         (h_e Int)
         (lturn_p_2 Int)
         (lturn_p_1 Int)
         (lturn_p_0 Int)
         (lturn_bar Int)
         (t Int)
         (u!1 Int)
         (x Int)
         (y Int)
         (z Int))
  (=> (and (step_lturn u!1
                       v
                       w
                       p
                       q
                       il_b
                       il_e
                       h_b
                       h_e
                       lturn_p_2
                       lturn_p_1
                       lturn_p_0
                       lturn_bar))
      (combined_lturn u!1
                      v
                      w
                      p
                      q
                      il_b
                      il_e
                      h_b
                      h_e
                      lturn_p_2
                      lturn_p_1
                      lturn_p_0
                      lturn_bar))))
(assert (forall ((u Int)
         (v Int)
         (w Int)
         (p Int)
         (q Int)
         (il_b Int)
         (il_e Int)
         (h_b Int)
         (h_e Int)
         (lturn_p_2 Int)
         (lturn_p_1 Int)
         (lturn_p_0 Int)
         (lturn_bar Int)
         (t Int)
         (u!1 Int)
         (x Int)
         (y Int)
         (z Int))
  (=> (and (lturn__bar u!1
                       v
                       w
                       p
                       q
                       il_b
                       il_e
                       h_b
                       h_e
                       lturn_p_2
                       lturn_p_1
                       lturn_p_0
                       lturn_bar))
      (combined_lturn__bar
        u!1
        v
        w
        p
        q
        il_b
        il_e
        h_b
        h_e
        lturn_p_2
        lturn_p_1
        lturn_p_0
        lturn_bar))))
(assert (forall ((u Int)
         (v Int)
         (w Int)
         (p Int)
         (q Int)
         (il_b Int)
         (il_e Int)
         (h_b Int)
         (h_e Int)
         (lturn_p_2 Int)
         (lturn_p_1 Int)
         (lturn_p_0 Int)
         (lturn_bar Int)
         (t Int)
         (u!1 Int)
         (x Int)
         (y Int)
         (z Int))
  (=> (and (step_lturn__bar u!1
                            v
                            w
                            p
                            q
                            il_b
                            il_e
                            h_b
                            h_e
                            lturn_p_2
                            lturn_p_1
                            lturn_p_0
                            lturn_bar))
      (combined_lturn__bar
        u!1
        v
        w
        p
        q
        il_b
        il_e
        h_b
        h_e
        lturn_p_2
        lturn_p_1
        lturn_p_0
        lturn_bar))))
(assert (forall ((u Int)
         (v Int)
         (w Int)
         (p Int)
         (q Int)
         (il_b Int)
         (il_e Int)
         (h_b Int)
         (h_e Int)
         (lturn_p_2 Int)
         (lturn_p_1 Int)
         (lturn_p_0 Int)
         (lturn_bar Int)
         (t Int)
         (u!1 Int)
         (x Int)
         (y Int)
         (z Int))
  (=> (and (step_lturn u!1 v w p q il_b il_e h_b h_e y x z lturn_bar))
      (lturn u!1 v w p q il_b il_e h_b h_e z y x lturn_bar))))
(assert (forall ((u Int)
         (v Int)
         (w Int)
         (p Int)
         (q Int)
         (il_b Int)
         (il_e Int)
         (h_b Int)
         (h_e Int)
         (lturn_p_2 Int)
         (lturn_p_1 Int)
         (lturn_p_0 Int)
         (lturn_bar Int)
         (t Int)
         (u!1 Int)
         (x Int)
         (y Int)
         (z Int))
  (=> (and (step_lturn__bar u!1 v w p q il_b il_e h_b h_e z x y lturn_bar))
      (lturn u!1 v w p q il_b il_e h_b h_e z y x lturn_bar))))
(assert (forall ((u Int)
         (v Int)
         (w Int)
         (p Int)
         (q Int)
         (il_b Int)
         (il_e Int)
         (h_b Int)
         (h_e Int)
         (lturn_p_2 Int)
         (lturn_p_1 Int)
         (lturn_p_0 Int)
         (lturn_bar Int)
         (t Int)
         (u!1 Int)
         (x Int)
         (y Int)
         (z Int))
  (=> (and (step_lturn u!1 v w p q il_b il_e h_b h_e u!1 y x lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 z y lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 x z lturn_bar))
      (lturn u!1 v w p q il_b il_e h_b h_e z y x lturn_bar))))
(assert (forall ((u Int)
         (v Int)
         (w Int)
         (p Int)
         (q Int)
         (il_b Int)
         (il_e Int)
         (h_b Int)
         (h_e Int)
         (lturn_p_2 Int)
         (lturn_p_1 Int)
         (lturn_p_0 Int)
         (lturn_bar Int)
         (t Int)
         (u!1 Int)
         (x Int)
         (y Int)
         (z Int))
  (=> (and (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 y x lturn_bar)
           (step_lturn u!1 v w p q il_b il_e h_b h_e u!1 z y lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 x z lturn_bar))
      (lturn u!1 v w p q il_b il_e h_b h_e z y x lturn_bar))))
(assert (forall ((u Int)
         (v Int)
         (w Int)
         (p Int)
         (q Int)
         (il_b Int)
         (il_e Int)
         (h_b Int)
         (h_e Int)
         (lturn_p_2 Int)
         (lturn_p_1 Int)
         (lturn_p_0 Int)
         (lturn_bar Int)
         (t Int)
         (u!1 Int)
         (x Int)
         (y Int)
         (z Int))
  (=> (and (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 y x lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 z y lturn_bar)
           (step_lturn u!1 v w p q il_b il_e h_b h_e u!1 x z lturn_bar))
      (lturn u!1 v w p q il_b il_e h_b h_e z y x lturn_bar))))
(assert (forall ((u Int)
         (v Int)
         (w Int)
         (p Int)
         (q Int)
         (il_b Int)
         (il_e Int)
         (h_b Int)
         (h_e Int)
         (lturn_p_2 Int)
         (lturn_p_1 Int)
         (lturn_p_0 Int)
         (lturn_bar Int)
         (t Int)
         (u!1 Int)
         (x Int)
         (y Int)
         (z Int))
  (=> (and (step_lturn u!1 v w p q il_b il_e h_b h_e z y x lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 y x lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 z y lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e t z y lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e t y u!1 lturn_bar))
      (lturn u!1 v w p q il_b il_e h_b h_e t y x lturn_bar))))
(assert (forall ((u Int)
         (v Int)
         (w Int)
         (p Int)
         (q Int)
         (il_b Int)
         (il_e Int)
         (h_b Int)
         (h_e Int)
         (lturn_p_2 Int)
         (lturn_p_1 Int)
         (lturn_p_0 Int)
         (lturn_bar Int)
         (t Int)
         (u!1 Int)
         (x Int)
         (y Int)
         (z Int))
  (=> (and (combined_lturn u!1 v w p q il_b il_e h_b h_e z y x lturn_bar)
           (step_lturn u!1 v w p q il_b il_e h_b h_e u!1 y x lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 z y lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e t z y lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e t y u!1 lturn_bar))
      (lturn u!1 v w p q il_b il_e h_b h_e t y x lturn_bar))))
(assert (forall ((u Int)
         (v Int)
         (w Int)
         (p Int)
         (q Int)
         (il_b Int)
         (il_e Int)
         (h_b Int)
         (h_e Int)
         (lturn_p_2 Int)
         (lturn_p_1 Int)
         (lturn_p_0 Int)
         (lturn_bar Int)
         (t Int)
         (u!1 Int)
         (x Int)
         (y Int)
         (z Int))
  (=> (and (combined_lturn u!1 v w p q il_b il_e h_b h_e z y x lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 y x lturn_bar)
           (step_lturn u!1 v w p q il_b il_e h_b h_e u!1 z y lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e t z y lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e t y u!1 lturn_bar))
      (lturn u!1 v w p q il_b il_e h_b h_e t y x lturn_bar))))
(assert (forall ((u Int)
         (v Int)
         (w Int)
         (p Int)
         (q Int)
         (il_b Int)
         (il_e Int)
         (h_b Int)
         (h_e Int)
         (lturn_p_2 Int)
         (lturn_p_1 Int)
         (lturn_p_0 Int)
         (lturn_bar Int)
         (t Int)
         (u!1 Int)
         (x Int)
         (y Int)
         (z Int))
  (=> (and (combined_lturn u!1 v w p q il_b il_e h_b h_e z y x lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 y x lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 z y lturn_bar)
           (step_lturn u!1 v w p q il_b il_e h_b h_e t z y lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e t y u!1 lturn_bar))
      (lturn u!1 v w p q il_b il_e h_b h_e t y x lturn_bar))))
(assert (forall ((u Int)
         (v Int)
         (w Int)
         (p Int)
         (q Int)
         (il_b Int)
         (il_e Int)
         (h_b Int)
         (h_e Int)
         (lturn_p_2 Int)
         (lturn_p_1 Int)
         (lturn_p_0 Int)
         (lturn_bar Int)
         (t Int)
         (u!1 Int)
         (x Int)
         (y Int)
         (z Int))
  (=> (and (combined_lturn u!1 v w p q il_b il_e h_b h_e z y x lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 y x lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 z y lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e t z y lturn_bar)
           (step_lturn u!1 v w p q il_b il_e h_b h_e t y u!1 lturn_bar))
      (lturn u!1 v w p q il_b il_e h_b h_e t y x lturn_bar))))
(assert (forall ((u Int)
         (v Int)
         (w Int)
         (p Int)
         (q Int)
         (il_b Int)
         (il_e Int)
         (h_b Int)
         (h_e Int)
         (lturn_p_2 Int)
         (lturn_p_1 Int)
         (lturn_p_0 Int)
         (lturn_bar Int)
         (t Int)
         (u!1 Int)
         (x Int)
         (y Int)
         (z Int))
  (=> (and (step_lturn u!1 v w p q il_b il_e h_b h_e y x z lturn_bar))
      (step_lturn u!1 v w p q il_b il_e h_b h_e z y x lturn_bar))))
(assert (forall ((u Int)
         (v Int)
         (w Int)
         (p Int)
         (q Int)
         (il_b Int)
         (il_e Int)
         (h_b Int)
         (h_e Int)
         (lturn_p_2 Int)
         (lturn_p_1 Int)
         (lturn_p_0 Int)
         (lturn_bar Int)
         (t Int)
         (u!1 Int)
         (x Int)
         (y Int)
         (z Int))
  (=> (and (step_lturn__bar u!1 v w p q il_b il_e h_b h_e z x y lturn_bar))
      (step_lturn u!1 v w p q il_b il_e h_b h_e z y x lturn_bar))))
(assert (forall ((u Int)
         (v Int)
         (w Int)
         (p Int)
         (q Int)
         (il_b Int)
         (il_e Int)
         (h_b Int)
         (h_e Int)
         (lturn_p_2 Int)
         (lturn_p_1 Int)
         (lturn_p_0 Int)
         (lturn_bar Int)
         (t Int)
         (u!1 Int)
         (x Int)
         (y Int)
         (z Int))
  (=> (and (step_lturn u!1 v w p q il_b il_e h_b h_e u!1 y x lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 z y lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 x z lturn_bar))
      (step_lturn u!1 v w p q il_b il_e h_b h_e z y x lturn_bar))))
(assert (forall ((u Int)
         (v Int)
         (w Int)
         (p Int)
         (q Int)
         (il_b Int)
         (il_e Int)
         (h_b Int)
         (h_e Int)
         (lturn_p_2 Int)
         (lturn_p_1 Int)
         (lturn_p_0 Int)
         (lturn_bar Int)
         (t Int)
         (u!1 Int)
         (x Int)
         (y Int)
         (z Int))
  (=> (and (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 y x lturn_bar)
           (step_lturn u!1 v w p q il_b il_e h_b h_e u!1 z y lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 x z lturn_bar))
      (step_lturn u!1 v w p q il_b il_e h_b h_e z y x lturn_bar))))
(assert (forall ((u Int)
         (v Int)
         (w Int)
         (p Int)
         (q Int)
         (il_b Int)
         (il_e Int)
         (h_b Int)
         (h_e Int)
         (lturn_p_2 Int)
         (lturn_p_1 Int)
         (lturn_p_0 Int)
         (lturn_bar Int)
         (t Int)
         (u!1 Int)
         (x Int)
         (y Int)
         (z Int))
  (=> (and (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 y x lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 z y lturn_bar)
           (step_lturn u!1 v w p q il_b il_e h_b h_e u!1 x z lturn_bar))
      (step_lturn u!1 v w p q il_b il_e h_b h_e z y x lturn_bar))))
(assert (forall ((u Int)
         (v Int)
         (w Int)
         (p Int)
         (q Int)
         (il_b Int)
         (il_e Int)
         (h_b Int)
         (h_e Int)
         (lturn_p_2 Int)
         (lturn_p_1 Int)
         (lturn_p_0 Int)
         (lturn_bar Int)
         (t Int)
         (u!1 Int)
         (x Int)
         (y Int)
         (z Int))
  (=> (and (step_lturn u!1 v w p q il_b il_e h_b h_e z y x lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 y x lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 z y lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e t z y lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e t y u!1 lturn_bar))
      (step_lturn u!1 v w p q il_b il_e h_b h_e t y x lturn_bar))))
(assert (forall ((u Int)
         (v Int)
         (w Int)
         (p Int)
         (q Int)
         (il_b Int)
         (il_e Int)
         (h_b Int)
         (h_e Int)
         (lturn_p_2 Int)
         (lturn_p_1 Int)
         (lturn_p_0 Int)
         (lturn_bar Int)
         (t Int)
         (u!1 Int)
         (x Int)
         (y Int)
         (z Int))
  (=> (and (combined_lturn u!1 v w p q il_b il_e h_b h_e z y x lturn_bar)
           (step_lturn u!1 v w p q il_b il_e h_b h_e u!1 y x lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 z y lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e t z y lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e t y u!1 lturn_bar))
      (step_lturn u!1 v w p q il_b il_e h_b h_e t y x lturn_bar))))
(assert (forall ((u Int)
         (v Int)
         (w Int)
         (p Int)
         (q Int)
         (il_b Int)
         (il_e Int)
         (h_b Int)
         (h_e Int)
         (lturn_p_2 Int)
         (lturn_p_1 Int)
         (lturn_p_0 Int)
         (lturn_bar Int)
         (t Int)
         (u!1 Int)
         (x Int)
         (y Int)
         (z Int))
  (=> (and (combined_lturn u!1 v w p q il_b il_e h_b h_e z y x lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 y x lturn_bar)
           (step_lturn u!1 v w p q il_b il_e h_b h_e u!1 z y lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e t z y lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e t y u!1 lturn_bar))
      (step_lturn u!1 v w p q il_b il_e h_b h_e t y x lturn_bar))))
(assert (forall ((u Int)
         (v Int)
         (w Int)
         (p Int)
         (q Int)
         (il_b Int)
         (il_e Int)
         (h_b Int)
         (h_e Int)
         (lturn_p_2 Int)
         (lturn_p_1 Int)
         (lturn_p_0 Int)
         (lturn_bar Int)
         (t Int)
         (u!1 Int)
         (x Int)
         (y Int)
         (z Int))
  (=> (and (combined_lturn u!1 v w p q il_b il_e h_b h_e z y x lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 y x lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 z y lturn_bar)
           (step_lturn u!1 v w p q il_b il_e h_b h_e t z y lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e t y u!1 lturn_bar))
      (step_lturn u!1 v w p q il_b il_e h_b h_e t y x lturn_bar))))
(assert (forall ((u Int)
         (v Int)
         (w Int)
         (p Int)
         (q Int)
         (il_b Int)
         (il_e Int)
         (h_b Int)
         (h_e Int)
         (lturn_p_2 Int)
         (lturn_p_1 Int)
         (lturn_p_0 Int)
         (lturn_bar Int)
         (t Int)
         (u!1 Int)
         (x Int)
         (y Int)
         (z Int))
  (=> (and (combined_lturn u!1 v w p q il_b il_e h_b h_e z y x lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 y x lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 z y lturn_bar)
           (combined_lturn u!1 v w p q il_b il_e h_b h_e t z y lturn_bar)
           (step_lturn u!1 v w p q il_b il_e h_b h_e t y u!1 lturn_bar))
      (step_lturn u!1 v w p q il_b il_e h_b h_e t y x lturn_bar))))
(assert (forall ((u Int)
         (v Int)
         (w Int)
         (p Int)
         (q Int)
         (il_b Int)
         (il_e Int)
         (h_b Int)
         (h_e Int)
         (lturn_p_2 Int)
         (lturn_p_1 Int)
         (lturn_p_0 Int)
         (lturn_bar Int)
         (t Int)
         (u!1 Int)
         (x Int)
         (y Int)
         (z Int))
  (let ((a!1 (combined_lturn u!1 v w p q il_b il_e h_b h_e z y x lturn_bar))
        (a!2 (step_lturn u!1 v w p q il_b il_e h_b h_e z y x lturn_bar))
        (a!3 (combined_lturn u!1 v w p q il_b il_e h_b h_e z x y lturn_bar))
        (a!4 (step_lturn u!1 v w p q il_b il_e h_b h_e z x y lturn_bar))
        (a!5 (step_lturn u!1 v w p q il_b il_e h_b h_e u!1 y x lturn_bar))
        (a!6 (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 z y lturn_bar))
        (a!7 (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 x z lturn_bar))
        (a!8 (combined_lturn u!1 v w p q il_b il_e h_b h_e u!1 y x lturn_bar))
        (a!9 (step_lturn u!1 v w p q il_b il_e h_b h_e u!1 z y lturn_bar))
        (a!10 (combined_lturn u!1 v w p q il_b il_e h_b h_e t z y lturn_bar))
        (a!11 (combined_lturn u!1 v w p q il_b il_e h_b h_e t y u!1 lturn_bar))
        (a!12 (combined_lturn u!1 v w p q il_b il_e h_b h_e t x y lturn_bar)))
    (not (or (and (step_lturn__bar u!1
                                   v
                                   w
                                   p
                                   q
                                   il_b
                                   il_e
                                   h_b
                                   h_e
                                   z
                                   y
                                   x
                                   lturn_bar)
                  a!1)
             (and (combined_lturn__bar
                    u!1
                    v
                    w
                    p
                    q
                    il_b
                    il_e
                    h_b
                    h_e
                    z
                    y
                    x
                    lturn_bar)
                  a!2)
             (and a!2 a!3)
             (and a!1 a!4)
             (and a!5 a!6 a!7 a!3)
             (and a!8 a!9 a!7 a!3)
             (and a!8
                  a!6
                  (step_lturn u!1 v w p q il_b il_e h_b h_e u!1 x z lturn_bar)
                  a!3)
             (and a!8 a!6 a!7 a!4)
             (and a!2 a!8 a!6 a!10 a!11 a!12)
             (and a!1 a!5 a!6 a!10 a!11 a!12)
             (and a!1 a!8 a!9 a!10 a!11 a!12)
             (and a!1
                  a!8
                  a!6
                  (step_lturn u!1 v w p q il_b il_e h_b h_e t z y lturn_bar)
                  a!11
                  a!12)
             (and a!1
                  a!8
                  a!6
                  a!10
                  (step_lturn u!1 v w p q il_b il_e h_b h_e t y u!1 lturn_bar)
                  a!12)
             (and a!1
                  a!8
                  a!6
                  a!10
                  a!11
                  (step_lturn u!1 v w p q il_b il_e h_b h_e t x y lturn_bar)))))))
(check-sat)
