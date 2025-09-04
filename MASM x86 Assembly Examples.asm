mov eax,0
		setupAL
		;mov al,10
		call dumpregs
		call writeint

		mov eax, m
		call dumpregs
		call writeint

		mov eax,ListofSize
		call dumpregs 
--------------------------------
str1 BYTE "Enter your name",0dh,0ah,0
str2 BYTE 'string with single quote',0dh,0ah,0
char1 BYTE 'A',0dh,0ah,0
char2 BYTE "B",0dh,0ah,0

value1 dword ?
value2 dword ?




;VALUE1 BYTE 10
;LIST1 BYTE 10,20,30,40

array BYTE 10,20,30,40
array1 WORD 1000h,2000h,3000h
;LIST3 BYTE ?,32,41h,00100001b
;LIST4 WORD 1000h,2000h,3000h,4000h
;ListSize =($ - LIST4)/2

;LIST5 DWORD 1,2,3,5
;ListofSize = ($-LIST5)/4




;val1 DWORD 10000h
;val2 DWORD 40000h

;a WORD m
;m EQU <10*10>

;rowsize =5
;count TEXTEQU %(rowsize *2)
;setupAL TEXTEQU <mov al,count>


+++++++++++++++++++++++++
mov ax,array1
		call dumpregs
		mov ax,[array1 + 2]
		call dumpregs
		mov ax,[array1 + 4]
		call dumpregs

        ;mov al,array
		;call dumpregs
		

		mov edx,OFFSET str2
		call writestring

		mov edx,OFFSET char1
		call writestring
		
		mov edx,OFFSET char2
		call writestring
		
		call readint
		mov value1, eax
		call readint 
		mov value2, eax
		mov eax, value1
		mov edx, 0
		div value2
		call writeint
		mov eax,edx
		call writeintmov ax,array1
		call dumpregs
		mov ax,[array1 + 2]
		call dumpregs
		mov ax,[array1 + 4]
		call dumpregs

        ;mov al,array
		;call dumpregs
		

		mov edx,OFFSET str2
		call writestring

		mov edx,OFFSET char1
		call writestring
		
		mov edx,OFFSET char2
		call writestring
		
		call readint
		mov value1, eax
		call readint 
		mov value2, eax
		mov eax, value1
		mov edx, 0
		div value2
		call writeint
		mov eax,edx
		call writeint
--------------------------------------------
INCLUDE Irvine32.inc

.data

data byte 10,20,30,40

str BYTE "abcd",0dh,0ah,0

.code
main PROC
		mov eax,0    ;add 0 to eax register to clean the garbage values
		mov al,data  ;here from data 1st initializer 10 move to al of eax  , eax 32bits  and al 1st 8 LSBs , after add data remaining 24 bits will remain 0
		call writeint
		
		mov al,data+1   ;here 2nd initializer 20 will move to al reg
		call writeint

		mov al,data+2
		call writeint

		mov al,data+3
		call writeint    ;-------------------------

		call readint

		mov al,'A'
		call writechar   ;-------------------------

		call readint
		
		mov eax,0
		mov al,str
		call writeint


		exit


main ENDP
END main
--------------------------------------------
		mov eax,0    ;add 0 to eax register to clean the garbage values
		mov al,data  ;here from data 1st initializer 10 move to al of eax  , eax 32bits  and al 1st 8 LSBs , after add data remaining 24 bits will remain 0
		call writeint
		
		mov al,data+1   ;here 2nd initializer 20 will move to al reg
		call writeint

		mov al,data+2
		call writeint

		mov al,data+3
		call writeint    ;-------------------------

		call readint

		mov al,'A'
		call writechar   ;-------------------------

		call readint
		
	;First Byte = a
	mov eax, 0
	mov al,str1
	call WriteInt

	;Second Byte = b

	mov al,str1+1
	call WriteInt

	;Third Byte = c
	
	mov al,str1+2
	call WriteChar

	;Fourth Byte = d	
	mov al,str1+3
	call WriteChar
	call readint		;-------------------

	mov eax, sizeof data1
	call writeint
	call readint

	mov eax, sizeof str1
	call writeint
	call readint		;at the end of string we use null terminator 0 so when we calculate the size it will take that as 1 byte ,as part of string

	mov eax,sizeof dup1
	call writeint
	call readint
+++++++++++++++++++++++++++
data byte 10,20,30,40

str1 BYTE "abcd",0

data1 byte 1,2,3,

dup1 byte 4 dup(1,2,3)
-------------------------------------------------
INCLUDE Irvine32.inc

.data

A dword 1234567
varB BYTE 65h,31h,02h,05h
varW WORD 6534h,1202h
varD DWORD 12345678h

.code
main PROC
		mov eax,0619
		mov al,BYTE PTR A
		mov ax,WORD PTR A
		call dumpregs


		exit


main ENDP
END main
--------------------------------------------------------------------------
.data
val1 WORD 1000h,2000h,30h
hel Byte "helloWorld",0dh, 0ah



.code
main proc


 
 mov ecx,4
 L1:
    mov edx,offset hel
	call writestring
	loop L1

	exit
main endp
end main
----------------------------------------------------
.data
a DWORD 12
b DWORD 4
u DWORD 3
d DWORD 6


.code
main proc
	mov eax,a
	add eax,b

	mov ebx,u
	add ebx,d

	sub eax,ebx
	mov a,eax
	call writeint
	mov eax,0
------------------------------------------------