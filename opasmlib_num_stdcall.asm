.686                      ;Модель процессора, для которого предназначен код. ПОКА НЕ ИГРАЕТ НИКАКОЙ РОЛИ.
.MODEL FLAT;, stdcall


;Функции арифметических операций
;О: возвращает результат сложения первого и второго параметра
public _oal_num_add@8
;О: возвращает результат разности первого и второго параметра
public _oal_num_sub@8
;О: возвращает результат умножения первого и второго параметра
public _oal_num_mul@8
;О: возвращает результат деления первого на второй параметры
public _oal_num_div@8
;О: возвращает остаток деления первого на второй параметры
public _oal_num_divrem@
;О: возвращает результат инкремента праметра
public _oal_num_inc@4
;О: возвращает результат декремента праметра
public _oal_num_dec@4
;О: возвращает результат модуля параметра
public _oal_num_abs@4
;О: возвращает результат возведения в положительную степень(второй параметр) первого параметра
public _oal_num_pow_positive@8
;О: возвращает результат возведения в отрицательную степень(второй параметр) первого параметра
public _oal_num_pow_negative@8
;О: возвращает факториал параметра
public _oal_num_factorial@4


;Функции логических операций
;О: возвращает результат отрицания(инверсия) параметра
public _oal_num_no@4
;О: возвращает результат и(логического сложение) первого и второго параметра
public _oal_num_and@4
;О: возвращает результат или(логического умножение) первого и второго параметра
public _oal_num_or@4
;О: возвращает результат исключаюзего или(логического x умножение) первого и второго параметра
public _oal_num_xor@4


;Функции операций сдвига
;О: возвращает результат _ сдвига параметра
public _oal_num__@4


;Функции операций сравнения
;О: возвращает меньшее из двух чисел, первого и второга параметра
public _oal_num_min@8
;О: возвращает большее из двух чисел, первого и второга параметра
public _oal_num_max@8
;О: возвращает 1, если третий параметр входит в интревал включитая первый и второй параметр; иначе возвращает 0
public _oal_num_inrange@12
;О: возвращает 1, если первый параметр равен второму; иначе возвращает 0
public _oal_num_cmp@8
;О: возвращает 0, если первый параметр равен второму; возвращает -1,  если первый параметр меньше второго; возвращает 1,  если первый параметр больше второго
public _oal_num_cmpex@8
;О: возвращает первый параметр, если первый параметр равен второму; иначе возвращает 0
public _oal_num_equ@8


;Функции операций проверки
;О: возвращает 1, если первый параметр - целове чило; иначе возвращает 0
public _oal_num_isint@4
;О: возвращает 1, если первый параметр - вещественное чило; иначе возвращает 0
public _oal_num_isfloat@4
;О: возвращает 1, если первый параметр - положительное чило; иначе возвращает 0
public _oal_num_ispositive@4
;О: возвращает 1, если первый параметр - отрицательное чило; иначе возвращает 0
public _oal_num_isnegative@4
;О: возвращает 1, если первый параметр - натуральное чило; иначе возвращает 0
public _oal_num_isnatural@4
;О: возвращает 1, если первый параметр - ноль; иначе возвращает 0
public _oal_num_iszero@4


;Функции дополнительных операций
;О: возвращает 1, если точка (1п;2п) лежит в прямоугольнике, точки которго (3п;4п),(5п;6п),(7п;8п),(9п;10п); иначе возвращает 0
public _oal_num_inrect@40

.data
.code

;start:
;    ret
	
_num_add@8 proc
    push ebp
    mov ebp,esp

    mov eax, dword ptr [ebp+08h]
    add eax, dword ptr [ebp+0ch]

    pop ebp
    ret 8  
_num_add@8 endp

_num_sub@8 proc
    push ebp
    mov ebp,esp

    mov eax, dword ptr [ebp+08h]
    sub eax, dword ptr [ebp+0ch]

    pop ebp
    ret 8  
_num_sub@8 endp

_num_pow_positive@8 proc
    push ebp
    mov ebp,esp
    
	mov ecx, dword ptr [ebp+08h]
    mov edx, dword ptr [ebp+0ch]
    cmp ecx, 0
	je end_l1
	mov eax, 1
	cmp edx, 0
	je end_l2
	mov ebx, 1
	mov eax, ecx
pow_loop:
	cmp ebx, dword ptr [ebp+0ch]
	je end_l2
	mul ecx
	inc ebx
	jmp pow_loop
	
end_l1:
	mov eax, 0
end_l2:
    pop ebp
    ret 8  
_num_pow_positive@8 endp

_num_pow_negative@8 proc
    push ebp
    mov ebp,esp
    
	mov ecx, dword ptr [ebp+08h]
    mov edx, dword ptr [ebp+0ch]
	;finit
    cmp ecx, 0
	je end_l1
	mov eax, 1
	cmp edx, 0
	je end_l2
	mov ebx, 1
	mov eax, ecx
pow_loop:
	cmp ebx, dword ptr [ebp+0ch]
	je end_l2
	
	;fild ecx
    ;fild eax
    ;fdivr
	;fst eax
	
	;div ecx
	dec ebx
	jmp pow_loop
	
end_l1:
	mov eax, 0
end_l2:
	;fwait
    pop ebp
    ret 8  
_num_pow_negative@8 endp

_num_factorial@4 proc
    push ebp
    mov ebp,esp

    mov ecx, dword ptr [ebp+08h]
	mov eax, 1
	mov ebx, 1
factorial_loop:
	cmp ebx, ecx
	ja end_l
	mul ebx
	inc ebx
	jmp factorial_loop

end_l:	
    pop ebp
    ret 4
_num_factorial@4 endp

;end start
end
