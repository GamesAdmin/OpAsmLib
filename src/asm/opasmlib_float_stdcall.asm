.686                      ;Модель процессора, для которого предназначен код. ПОКА НЕ ИГРАЕТ НИКАКОЙ РОЛИ.
.MODEL FLAT;, stdcall


;Функции арифметических операций; НЕДОДЕЛАНО ОПИСАНИЕ
;О: возвращает результат сложения первого и второго параметра
public _oal_float_add@8
;О: возвращает результат разности первого и второго параметра
public _oal_float_sub@8
;О: возвращает результат умножения первого и второго параметра
public _oal_float_mul@8
;О: возвращает результат деления первого на второй параметры
public _oal_float_div@8
;О: возвращает остаток деления первого на второй параметры
public _oal_float_divrem@
;О: возвращает результат инкремента праметра
public _oal_float_inc@4
;О: возвращает результат декремента праметра
public _oal_float_dec@4
;О: возвращает результат модуля параметра
public _oal_float_abs@4
;О: возвращает результат возведения в положительную степень(второй параметр) первого параметра
public _oal_float_pow_positive@8
;О: возвращает результат возведения в отрицательную степень(второй параметр) первого параметра
public _oal_float_pow_negative@8
;О: возвращает факториал параметра
public _oal_float_factorial@4


;Функции логических операций
;О: возвращает результат отрицания(инверсия) параметра
public _oal_float_no@4
;О: возвращает результат и(логического сложение) первого и второго параметра
public _oal_float_and@4
;О: возвращает результат или(логического умножение) первого и второго параметра
public _oal_float_or@4
;О: возвращает результат исключаюзего или(логического x умножение) первого и второго параметра
public _oal_float_xor@4


;Функции операций сдвига
;О: возвращает результат _ сдвига параметра
public _oal_float__@4


;Функции операций сравнения
;О: возвращает меньшее из двух чисел, первого и второга параметра
public _oal_float_min@8
;О: возвращает большее из двух чисел, первого и второга параметра
public _oal_float_max@8
;О: возвращает 1, если третий параметр входит в интревал включитая первый и второй параметр; иначе возвращает 0
public _oal_float_inrange@12
;О: возвращает 1, если первый параметр равен второму; иначе возвращает 0
public _oal_float_cmp@8
;О: возвращает 0, если первый параметр равен второму; возвращает -1,  если первый параметр меньше второго; возвращает 1,  если первый параметр больше второго
public _oal_float_cmpex@8
;О: возвращает первый параметр, если первый параметр равен второму; иначе возвращает 0
public _oal_float_equ@8


;Функции операций проверки
;О: возвращает 1, если первый параметр - целове чило; иначе возвращает 0
public _oal_float_isint@4
;О: возвращает 1, если первый параметр - вещественное чило; иначе возвращает 0
public _oal_float_isfloat@4
;О: возвращает 1, если первый параметр - положительное чило; иначе возвращает 0
public _oal_float_ispositive@4
;О: возвращает 1, если первый параметр - отрицательное чило; иначе возвращает 0
public _oal_float_isnegative@4
;О: возвращает 1, если первый параметр - натуральное чило; иначе возвращает 0
public _oal_float_isnatural@4
;О: возвращает 1, если первый параметр - ноль; иначе возвращает 0
public _oal_float_iszero@4


;Функции дополнительных операций
;О: возвращает 1, если точка (1п;2п) лежит в прямоугольнике, точки которго (3п;4п),(5п;6п),(7п;8п),(9п;10п); иначе возвращает 0
public _oal_float_inrect@40

.data
.code

;start:
;    ret
	

;end start
end