@echo off
set tf=m15
if %d% == "" (
	py manage.py bars %t%%tf%.csv %*
) else (
	py manage.py bars %t%%tf%.csv %d% %*
	)
py manage.py ema 20 %t%%tf%.csv
