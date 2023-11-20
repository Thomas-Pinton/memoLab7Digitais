Library IEEE;
use IEEE.std_logic_1164.all;

entity binaryToHexadecimalConverter is
	port (
		A: in std_logic;
		B: in std_logic;
		C: in std_logic;
		D: in std_logic;
		aSegment: out std_logic;
		bSegment: out std_logic;
		cSegment: out std_logic;
		dSegment: out std_logic;
		eSegment: out std_logic;
		fSegment: out std_logic;
		gSegment: out std_logic

	);
	end binaryToHexadecimalConverter;
	
architecture converterArch of binaryToHexadecimalConverter is
	begin 
	
		aSegment <= NOT ((NOT B AND NOT D) OR
			(A AND NOT C AND NOT D) OR
			(A AND NOT B AND NOT C) OR
			(NOT A AND B AND (C OR D)) OR
			(NOT A AND NOT B AND C) OR
			(A AND B AND C) OR
			(C AND NOT D));
		
		bSegment <= NOT (((NOT A) AND ( ((NOT C) AND (NOT D)) OR (C AND D))) OR
			(A AND NOT B AND NOT C) OR
			(A AND NOT C AND D) OR
			(NOT A AND NOT B) OR
			(NOT B AND NOT D));
			
		cSegment <= NOT ((A XOR B) OR
			(NOT C AND D) OR
			(NOT C AND NOT D AND NOT A) OR
			(C AND D AND NOT A));
			
		dSegment <=	NOT ((NOT C AND NOT D AND NOT B) OR
			(NOT A AND NOT B AND C) OR
			(NOT C AND D AND (A OR B)) OR
			(NOT C AND A) OR
			(A AND NOT B AND D) OR
			(C AND NOT D AND B));
			
		eSegment <= NOT ((NOT B AND NOT D) OR
			(C AND NOT D) OR
			(C AND A) OR
			(A AND B));
			
		fSegment <= NOT ((C AND NOT D AND (A OR B)) OR
			(NOT C AND NOT D) OR
			(C AND D AND A) OR
			(NOT A AND B AND NOT C) OR
			(A AND NOT B));
	
		gSegment <= NOT ((NOT A AND NOT B AND C) OR
			(NOT A AND B AND NOT C) OR
			(C AND NOT D AND B) OR
			(A AND NOT B AND NOT C) OR
			(A AND (C OR D)));
	
	
	end converterArch;