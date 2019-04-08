#|
  This file is a part of ps-to-js project.
  Copyright (c) 2019 fgatherlet (fgatherlet@gmaill.com)
|#

#|
  parenscript to js file converter.

  Author: fgatherlet (fgatherlet@gmaill.com)
|#

(defsystem "ps-to-js"
  :version "0.1.0"
  :author "fgatherlet"
  :license "MIT"
  :depends-on ("series"
               "parenscript"
               "let-over-lambda"
               "alexandria")
  :components ((:module "src"
                :components
                ((:file "package")
                 (:file "main" :depends-on ("package"))
                 )))
  :description "parenscript to js file converter."
  :long-description
  #.(read-file-string
     (subpathname *load-pathname* "README.markdown"))
  :in-order-to ((test-op (test-op "ps-to-js-test"))))
