;;; speechd-common.el --- Code common to all parts of speechd-el

;; Copyright (C) 2004 Brailcom, o.p.s.

;; Author: Milan Zamazal <pdm@brailcom.org>

;; COPYRIGHT NOTICE
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

;;; Code:


(defgroup speechd-el ()
  "Speechd-el alternative output system.")

(defcustom speechd-default-text-priority 'text
  "Default Speech Dispatcher priority of sent texts."
  :type 'speechd-priority-tag
  :group 'speechd-el)

(defcustom speechd-default-sound-priority 'message
  "Default Speech Dispatcher priority of sent sound icons."
  :type 'speechd-priority-tag
  :group 'speechd-el)

(defcustom speechd-default-char-priority 'notification
  "Default Speech Dispatcher priority of sent single letters."
  :type 'speechd-priority-tag
  :group 'speechd-el)

(defcustom speechd-default-key-priority 'notification
  "Default Speech Dispatcher priority of sent symbols of keys."
  :type 'speechd-priority-tag
  :group 'speechd-el)


(defvar speechd-client-name "default"
  "String defining current client name.
This variable's value defines which connection is used when communicating with
Speech Dispatcher, each connection has its own client name.  Usually, you
select the proper client (connection) by assigning a value to this variable
locally through `let'.")

(defvar speechd-language nil
  "If non-nil, it is an RFC 1766 language code, as a string.
If text is read and this variable is non-nil, the text is read in the given
language.")


(defun speechd-language (string language)
  "Put language property LANGUAGE on whole STRING.
Language should be a string recognizable by Speech Dispatcher as a language
code."
  (put-text-property 0 (length string) 'language language string)
  string)


;;; Announce

(provide 'speechd-common)


;;; speechd-common.el ends here