(in-package :ps-to-js)

(ps::define-expression-operator lisp-raw (lisp-form)
  `(ps-js:escape
    ,lisp-form))
(defun lisp-raw (x) x)

(defmacro ps-to-js (&body body)
  (let ((js-pathname (make-pathname
                      :defaults
                      (or *compile-file-pathname* *load-pathname* (error "cannot specify where this file is."))
                      :type "js")))
    `(with-open-file (*standard-output* ,js-pathname :direction :output :if-exists :supersede)
       (ps:ps-to-stream *standard-output*
         ,@body))))

