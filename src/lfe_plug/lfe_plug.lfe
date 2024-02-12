(defmodule #eLfePlug.LfePlug
  "A basic plug written in Lisp Flavoured Erlang."
  (behaviour #ePlug)
  (import (from #ePlug.Conn (send_resp 3)))
  (export
   (init 1) (call 2)))

(defun init (opts)
  opts)

(defun call (conn _opts)
  (send_resp conn 200 "<html>
  <head>
    <title>Plugs with LFE</title>
  </head>
  <body>
    This page is rendered with Lisp Flavoured Erlang
  </body>
</html>"))
