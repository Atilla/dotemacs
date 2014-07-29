;;; Calendar --- Customixing M-x calendar
;;; Commentary:
;;; Code:

;; Week number in calendar
(setq calendar-week-start-day 1
      calendar-intermonth-text
      '(propertize
        (format "%2d"
                (car
                 (calendar-iso-from-absolute
                  (calendar-absolute-from-gregorian (list month day year)))))
        'font-lock-face 'font-lock-function-name-face))

(provide 'calendar)
;;; calendar.el ends here


