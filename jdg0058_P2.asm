;jdg058_P2
;This program shifts the items in the array by two.

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	input BYTE 1h,2h,3h,4h,5h,6h,7h,8h
	shift DWORD 2
	output BYTE ?
.code
	main proc
		mov EAX, 0				;Set EAX,EBX,ECX to zero
		mov EBX, 0
		mov ECX, 0
		mov ECX, LENGTHOF input
		S:						;Here we initiate a loop 
			mov EBX, ECX		;Move the value in EBX into ECX
			mov al, input[ECX]	;move the value of the current loop count into al
			add EBX, shift		;add the shift to EBX
			mov output[EBX], al	;move the value into the shifted position
		LOOP S
		invoke ExitProcess,0
	main endp
end main