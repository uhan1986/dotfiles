;; Emasc 23より前のバージョンを利用している場合は
;; user-emacs-directry変数が未定義のため次の設定を追加
(when (> emacs-major-version 23)
  (defvar user-emacs-directory "~.emacs.d"))

;; load-path を追加する関数を定義
(defun add-to-load-path (&rest paths)
  "サブディレクトリも探索してload-pathに追加する関数"
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
	      (expand-file-name (concat user-emacs-directory path))))
	(add-to-list 'load-path default-directory)
	(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
	    (normal-top-level-add-subdirs-to-load-path))))))

;; 
(add-to-load-path "elisp" "conf" "public_repos")