Time::DATE_FORMATS[:pretty] = lambda { |time| time.strftime("%A, %B %e a las %l:%M") + time.strftime("%p").downcase }
